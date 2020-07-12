import 'dart:convert';
import 'dart:typed_data';

import 'package:ben_app/crypto/credential.dart';
import 'package:ben_app/crypto/hmac_validator.dart';
import 'package:ben_app/crypto/kdf.dart';
import 'package:ben_app/crypto/protected_value.dart';
import 'package:ben_app/format/data_format.dart';
import 'package:ben_app/format/serializer.dart';
import 'package:ben_app/format/sqlite/Item_entity.dart';
import 'package:ben_app/ui/model/bank_card_model.dart';
import 'package:ben_app/util/random.dart';
import 'package:convert/convert.dart';
import '../../format/storage.dart';

class InitializeService {
  final HeaderRepository _headerRepository;
  final ItemRepository _itemRepository;
  final Kdf _kdf;

  InitializeService(this._headerRepository, this._itemRepository, this._kdf);

  Future<void> initialize(
      ProtectedValue masterPassword, bool enableFingerPrint) async {
    PasswordCredential credential = PasswordCredential(
        masterPassword,
        RandomStringUtil.generateUUIDasBytes(),
        RandomStringUtil.generateUUIDasBytes(),
        RandomStringUtil.generateUUIDasBytes());
    final List<Header> headers = _createHeaderWithoutChecksum(credential);
    final HashValidator hashValidator =
        new HmacValidator(await credential.getHashKey(_kdf));
    final Uint8List checksum =
        hashValidator.computeChecksum(_getSourceBytes(headers));
    headers.add(Header(Headers.CHECKSUM, hex.encode(checksum)));
    await _headerRepository.saveHeaders(headers);
  }

  List<Header> _createHeaderWithoutChecksum(PasswordCredential credential) {
    return [
      Header(Headers.VERSION, "0.1"),
      Header(Headers.CIPHER_ID, Headers.AES),
      Header(Headers.COMPRESSION_FLAGS, Headers.NO_COMPRESSION),
      Header(Headers.MASTER_SEED, hex.encode(credential.masterSeed)),
      Header(Headers.TRANSFORM_SEED, hex.encode(credential.transformSeed)),
      Header(Headers.ENCRYPTION_IV, hex.encode(credential.encryptionIv)),
      Header(Headers.KDF_PARAMETERS, ""),
    ];
  }

  Uint8List _getSourceBytes(List<Header> headers) {
    final List<int> bytes = [];
    headers.sort((l, r) => l.type.compareTo(r.type));
    headers.forEach((header) => bytes.addAll(header.getSources()));
    return Uint8List.fromList(bytes);
  }
}
