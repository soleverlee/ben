///
//  Generated code. Do not modify.
//  source: data_formats.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class NoteMetaMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NoteMetaMessage', createEmptyInstance: create)
    ..aOS(1, 'createdTime', protoName: 'createdTime')
    ..aOS(2, 'lastUpdatedTime', protoName: 'lastUpdatedTime')
    ..aOS(3, 'title')
    ..hasRequiredFields = false
  ;

  NoteMetaMessage._() : super();
  factory NoteMetaMessage() => create();
  factory NoteMetaMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoteMetaMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NoteMetaMessage clone() => NoteMetaMessage()..mergeFromMessage(this);
  NoteMetaMessage copyWith(void Function(NoteMetaMessage) updates) => super.copyWith((message) => updates(message as NoteMetaMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoteMetaMessage create() => NoteMetaMessage._();
  NoteMetaMessage createEmptyInstance() => create();
  static $pb.PbList<NoteMetaMessage> createRepeated() => $pb.PbList<NoteMetaMessage>();
  @$core.pragma('dart2js:noInline')
  static NoteMetaMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoteMetaMessage>(create);
  static NoteMetaMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get createdTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set createdTime($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedTime() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastUpdatedTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastUpdatedTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastUpdatedTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastUpdatedTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);
}

class NoteDataMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NoteDataMessage', createEmptyInstance: create)
    ..aOS(1, 'content')
    ..hasRequiredFields = false
  ;

  NoteDataMessage._() : super();
  factory NoteDataMessage() => create();
  factory NoteDataMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoteDataMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NoteDataMessage clone() => NoteDataMessage()..mergeFromMessage(this);
  NoteDataMessage copyWith(void Function(NoteDataMessage) updates) => super.copyWith((message) => updates(message as NoteDataMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoteDataMessage create() => NoteDataMessage._();
  NoteDataMessage createEmptyInstance() => create();
  static $pb.PbList<NoteDataMessage> createRepeated() => $pb.PbList<NoteDataMessage>();
  @$core.pragma('dart2js:noInline')
  static NoteDataMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoteDataMessage>(create);
  static NoteDataMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => clearField(1);
}

class KeyMetaMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KeyMetaMessage', createEmptyInstance: create)
    ..aOS(1, 'createdTime', protoName: 'createdTime')
    ..aOS(2, 'lastUpdatedTime', protoName: 'lastUpdatedTime')
    ..aOS(3, 'type')
    ..aOS(4, 'publicKey', protoName: 'publicKey')
    ..aOS(5, 'fingerprint')
    ..hasRequiredFields = false
  ;

  KeyMetaMessage._() : super();
  factory KeyMetaMessage() => create();
  factory KeyMetaMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyMetaMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  KeyMetaMessage clone() => KeyMetaMessage()..mergeFromMessage(this);
  KeyMetaMessage copyWith(void Function(KeyMetaMessage) updates) => super.copyWith((message) => updates(message as KeyMetaMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyMetaMessage create() => KeyMetaMessage._();
  KeyMetaMessage createEmptyInstance() => create();
  static $pb.PbList<KeyMetaMessage> createRepeated() => $pb.PbList<KeyMetaMessage>();
  @$core.pragma('dart2js:noInline')
  static KeyMetaMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyMetaMessage>(create);
  static KeyMetaMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get createdTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set createdTime($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedTime() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastUpdatedTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastUpdatedTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastUpdatedTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastUpdatedTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get publicKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set publicKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublicKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get fingerprint => $_getSZ(4);
  @$pb.TagNumber(5)
  set fingerprint($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFingerprint() => $_has(4);
  @$pb.TagNumber(5)
  void clearFingerprint() => clearField(5);
}

class KeyDataMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KeyDataMessage', createEmptyInstance: create)
    ..aOS(1, 'privateKey', protoName: 'privateKey')
    ..hasRequiredFields = false
  ;

  KeyDataMessage._() : super();
  factory KeyDataMessage() => create();
  factory KeyDataMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyDataMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  KeyDataMessage clone() => KeyDataMessage()..mergeFromMessage(this);
  KeyDataMessage copyWith(void Function(KeyDataMessage) updates) => super.copyWith((message) => updates(message as KeyDataMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyDataMessage create() => KeyDataMessage._();
  KeyDataMessage createEmptyInstance() => create();
  static $pb.PbList<KeyDataMessage> createRepeated() => $pb.PbList<KeyDataMessage>();
  @$core.pragma('dart2js:noInline')
  static KeyDataMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyDataMessage>(create);
  static KeyDataMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get privateKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set privateKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrivateKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrivateKey() => clearField(1);
}

class AlbumMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AlbumMessage', createEmptyInstance: create)
    ..aOS(1, 'createdTime', protoName: 'createdTime')
    ..aOS(2, 'lastUpdatedTime', protoName: 'lastUpdatedTime')
    ..aOS(3, 'name')
    ..a<$core.List<$core.int>>(4, 'cover', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  AlbumMessage._() : super();
  factory AlbumMessage() => create();
  factory AlbumMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AlbumMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AlbumMessage clone() => AlbumMessage()..mergeFromMessage(this);
  AlbumMessage copyWith(void Function(AlbumMessage) updates) => super.copyWith((message) => updates(message as AlbumMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AlbumMessage create() => AlbumMessage._();
  AlbumMessage createEmptyInstance() => create();
  static $pb.PbList<AlbumMessage> createRepeated() => $pb.PbList<AlbumMessage>();
  @$core.pragma('dart2js:noInline')
  static AlbumMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AlbumMessage>(create);
  static AlbumMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get createdTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set createdTime($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedTime() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastUpdatedTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastUpdatedTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastUpdatedTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastUpdatedTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get cover => $_getN(3);
  @$pb.TagNumber(4)
  set cover($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCover() => $_has(3);
  @$pb.TagNumber(4)
  void clearCover() => clearField(4);
}

class ImageMetaMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ImageMetaMessage', createEmptyInstance: create)
    ..aOS(1, 'createdTime', protoName: 'createdTime')
    ..aOS(2, 'lastUpdatedTime', protoName: 'lastUpdatedTime')
    ..aOS(3, 'title')
    ..a<$core.List<$core.int>>(4, 'thumb', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ImageMetaMessage._() : super();
  factory ImageMetaMessage() => create();
  factory ImageMetaMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageMetaMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ImageMetaMessage clone() => ImageMetaMessage()..mergeFromMessage(this);
  ImageMetaMessage copyWith(void Function(ImageMetaMessage) updates) => super.copyWith((message) => updates(message as ImageMetaMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageMetaMessage create() => ImageMetaMessage._();
  ImageMetaMessage createEmptyInstance() => create();
  static $pb.PbList<ImageMetaMessage> createRepeated() => $pb.PbList<ImageMetaMessage>();
  @$core.pragma('dart2js:noInline')
  static ImageMetaMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageMetaMessage>(create);
  static ImageMetaMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get createdTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set createdTime($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedTime() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastUpdatedTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastUpdatedTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastUpdatedTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastUpdatedTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get thumb => $_getN(3);
  @$pb.TagNumber(4)
  set thumb($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasThumb() => $_has(3);
  @$pb.TagNumber(4)
  void clearThumb() => clearField(4);
}

class ImageDataMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ImageDataMessage', createEmptyInstance: create)
    ..pPS(1, 'tiles')
    ..hasRequiredFields = false
  ;

  ImageDataMessage._() : super();
  factory ImageDataMessage() => create();
  factory ImageDataMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageDataMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ImageDataMessage clone() => ImageDataMessage()..mergeFromMessage(this);
  ImageDataMessage copyWith(void Function(ImageDataMessage) updates) => super.copyWith((message) => updates(message as ImageDataMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageDataMessage create() => ImageDataMessage._();
  ImageDataMessage createEmptyInstance() => create();
  static $pb.PbList<ImageDataMessage> createRepeated() => $pb.PbList<ImageDataMessage>();
  @$core.pragma('dart2js:noInline')
  static ImageDataMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageDataMessage>(create);
  static ImageDataMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get tiles => $_getList(0);
}

