import 'dart:convert';

import 'package:ben_app/backend/services/init_service.dart';
import 'package:ben_app/crypto/kdf.dart';
import 'package:ben_app/crypto/protected_value.dart';
import 'package:ben_app/format/data_format.dart';
import 'package:ben_app/format/storage.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockHeaderRepository extends Mock implements HeaderRepository {}

class MockKdf extends Mock implements Kdf {}

void main() {
  final repository = new MockHeaderRepository();
  final kdf = new MockKdf();
  final service = InitializeService(repository, null, kdf);

  test('initialize headers with checksum', () async {
    when(repository.saveHeaders(any)).thenAnswer((_) async => {});
    when(kdf.derive(any, any)).thenAnswer((_) async => utf8.encode("123456"));

    await service.initialize(ProtectedValue.of("12345"), false);

    List<Header> saved =
        verify(repository.saveHeaders(captureAny)).captured.single;
    // todo: add more assertion
    expect(saved.length, 8);
  });
}
