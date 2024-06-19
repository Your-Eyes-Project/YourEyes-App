//
//  Generated code. Do not modify.
//  source: videostream.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// The frame message to be sent from the client to the server
class VideoFrame extends $pb.GeneratedMessage {
  factory VideoFrame({
    $core.List<$core.int>? yPlane,
    $core.List<$core.int>? uPlane,
    $core.List<$core.int>? vPlane,
    $core.int? yWidth,
    $core.int? yHeight,
  }) {
    final $result = create();
    if (yPlane != null) {
      $result.yPlane = yPlane;
    }
    if (uPlane != null) {
      $result.uPlane = uPlane;
    }
    if (vPlane != null) {
      $result.vPlane = vPlane;
    }
    if (yWidth != null) {
      $result.yWidth = yWidth;
    }
    if (yHeight != null) {
      $result.yHeight = yHeight;
    }
    return $result;
  }
  VideoFrame._() : super();
  factory VideoFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VideoFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VideoFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'videostream'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'yPlane', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'uPlane', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'vPlane', $pb.PbFieldType.OY)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'yWidth', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'yHeight', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VideoFrame clone() => VideoFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VideoFrame copyWith(void Function(VideoFrame) updates) => super.copyWith((message) => updates(message as VideoFrame)) as VideoFrame;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoFrame create() => VideoFrame._();
  VideoFrame createEmptyInstance() => create();
  static $pb.PbList<VideoFrame> createRepeated() => $pb.PbList<VideoFrame>();
  @$core.pragma('dart2js:noInline')
  static VideoFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VideoFrame>(create);
  static VideoFrame? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get yPlane => $_getN(0);
  @$pb.TagNumber(1)
  set yPlane($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasYPlane() => $_has(0);
  @$pb.TagNumber(1)
  void clearYPlane() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get uPlane => $_getN(1);
  @$pb.TagNumber(2)
  set uPlane($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUPlane() => $_has(1);
  @$pb.TagNumber(2)
  void clearUPlane() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get vPlane => $_getN(2);
  @$pb.TagNumber(3)
  set vPlane($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVPlane() => $_has(2);
  @$pb.TagNumber(3)
  void clearVPlane() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get yWidth => $_getIZ(3);
  @$pb.TagNumber(4)
  set yWidth($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasYWidth() => $_has(3);
  @$pb.TagNumber(4)
  void clearYWidth() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get yHeight => $_getIZ(4);
  @$pb.TagNumber(5)
  set yHeight($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasYHeight() => $_has(4);
  @$pb.TagNumber(5)
  void clearYHeight() => clearField(5);
}

/// The response message that indicates success or failure and includes detection results
class StreamStatus extends $pb.GeneratedMessage {
  factory StreamStatus({
    $core.bool? success,
    $core.String? message,
    $core.Iterable<DetectionResult>? detections,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    if (detections != null) {
      $result.detections.addAll(detections);
    }
    return $result;
  }
  StreamStatus._() : super();
  factory StreamStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StreamStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'videostream'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..pc<DetectionResult>(3, _omitFieldNames ? '' : 'detections', $pb.PbFieldType.PM, subBuilder: DetectionResult.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamStatus clone() => StreamStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamStatus copyWith(void Function(StreamStatus) updates) => super.copyWith((message) => updates(message as StreamStatus)) as StreamStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamStatus create() => StreamStatus._();
  StreamStatus createEmptyInstance() => create();
  static $pb.PbList<StreamStatus> createRepeated() => $pb.PbList<StreamStatus>();
  @$core.pragma('dart2js:noInline')
  static StreamStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamStatus>(create);
  static StreamStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<DetectionResult> get detections => $_getList(2);
}

/// A message that represents a single detection result
class DetectionResult extends $pb.GeneratedMessage {
  factory DetectionResult({
    $core.String? label,
    $core.String? direction,
    $core.String? distance,
  }) {
    final $result = create();
    if (label != null) {
      $result.label = label;
    }
    if (direction != null) {
      $result.direction = direction;
    }
    if (distance != null) {
      $result.distance = distance;
    }
    return $result;
  }
  DetectionResult._() : super();
  factory DetectionResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetectionResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DetectionResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'videostream'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'label')
    ..aOS(2, _omitFieldNames ? '' : 'direction')
    ..aOS(3, _omitFieldNames ? '' : 'distance')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetectionResult clone() => DetectionResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetectionResult copyWith(void Function(DetectionResult) updates) => super.copyWith((message) => updates(message as DetectionResult)) as DetectionResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DetectionResult create() => DetectionResult._();
  DetectionResult createEmptyInstance() => create();
  static $pb.PbList<DetectionResult> createRepeated() => $pb.PbList<DetectionResult>();
  @$core.pragma('dart2js:noInline')
  static DetectionResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetectionResult>(create);
  static DetectionResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get label => $_getSZ(0);
  @$pb.TagNumber(1)
  set label($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get direction => $_getSZ(1);
  @$pb.TagNumber(2)
  set direction($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirection() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get distance => $_getSZ(2);
  @$pb.TagNumber(3)
  set distance($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDistance() => $_has(2);
  @$pb.TagNumber(3)
  void clearDistance() => clearField(3);
}

/// Request message for configuring the detection settings
class SetupRequest extends $pb.GeneratedMessage {
  factory SetupRequest({
    $core.String? userQuestion,
    $core.bool? filterObjects,
  }) {
    final $result = create();
    if (userQuestion != null) {
      $result.userQuestion = userQuestion;
    }
    if (filterObjects != null) {
      $result.filterObjects = filterObjects;
    }
    return $result;
  }
  SetupRequest._() : super();
  factory SetupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetupRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'videostream'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userQuestion')
    ..aOB(2, _omitFieldNames ? '' : 'filterObjects')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetupRequest clone() => SetupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetupRequest copyWith(void Function(SetupRequest) updates) => super.copyWith((message) => updates(message as SetupRequest)) as SetupRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetupRequest create() => SetupRequest._();
  SetupRequest createEmptyInstance() => create();
  static $pb.PbList<SetupRequest> createRepeated() => $pb.PbList<SetupRequest>();
  @$core.pragma('dart2js:noInline')
  static SetupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetupRequest>(create);
  static SetupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userQuestion => $_getSZ(0);
  @$pb.TagNumber(1)
  set userQuestion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserQuestion() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserQuestion() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get filterObjects => $_getBF(1);
  @$pb.TagNumber(2)
  set filterObjects($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilterObjects() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilterObjects() => clearField(2);
}

/// Response message for the setup detection request
class SetupResponse extends $pb.GeneratedMessage {
  factory SetupResponse({
    $core.bool? success,
    $core.String? message,
    $core.Iterable<$core.String>? objectsToDetect,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    if (objectsToDetect != null) {
      $result.objectsToDetect.addAll(objectsToDetect);
    }
    return $result;
  }
  SetupResponse._() : super();
  factory SetupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetupResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'videostream'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..pPS(3, _omitFieldNames ? '' : 'objectsToDetect')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetupResponse clone() => SetupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetupResponse copyWith(void Function(SetupResponse) updates) => super.copyWith((message) => updates(message as SetupResponse)) as SetupResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetupResponse create() => SetupResponse._();
  SetupResponse createEmptyInstance() => create();
  static $pb.PbList<SetupResponse> createRepeated() => $pb.PbList<SetupResponse>();
  @$core.pragma('dart2js:noInline')
  static SetupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetupResponse>(create);
  static SetupResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get objectsToDetect => $_getList(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
