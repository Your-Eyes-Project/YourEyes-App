//
//  Generated code. Do not modify.
//  source: videostream.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use videoFrameDescriptor instead')
const VideoFrame$json = {
  '1': 'VideoFrame',
  '2': [
    {'1': 'y_plane', '3': 1, '4': 1, '5': 12, '10': 'yPlane'},
    {'1': 'u_plane', '3': 2, '4': 1, '5': 12, '10': 'uPlane'},
    {'1': 'v_plane', '3': 3, '4': 1, '5': 12, '10': 'vPlane'},
    {'1': 'y_width', '3': 4, '4': 1, '5': 5, '10': 'yWidth'},
    {'1': 'y_height', '3': 5, '4': 1, '5': 5, '10': 'yHeight'},
  ],
};

/// Descriptor for `VideoFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoFrameDescriptor = $convert.base64Decode(
    'CgpWaWRlb0ZyYW1lEhcKB3lfcGxhbmUYASABKAxSBnlQbGFuZRIXCgd1X3BsYW5lGAIgASgMUg'
    'Z1UGxhbmUSFwoHdl9wbGFuZRgDIAEoDFIGdlBsYW5lEhcKB3lfd2lkdGgYBCABKAVSBnlXaWR0'
    'aBIZCgh5X2hlaWdodBgFIAEoBVIHeUhlaWdodA==');

@$core.Deprecated('Use streamStatusDescriptor instead')
const StreamStatus$json = {
  '1': 'StreamStatus',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'detections', '3': 3, '4': 3, '5': 11, '6': '.videostream.DetectionResult', '10': 'detections'},
  ],
};

/// Descriptor for `StreamStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamStatusDescriptor = $convert.base64Decode(
    'CgxTdHJlYW1TdGF0dXMSGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIYCgdtZXNzYWdlGAIgAS'
    'gJUgdtZXNzYWdlEjwKCmRldGVjdGlvbnMYAyADKAsyHC52aWRlb3N0cmVhbS5EZXRlY3Rpb25S'
    'ZXN1bHRSCmRldGVjdGlvbnM=');

@$core.Deprecated('Use detectionResultDescriptor instead')
const DetectionResult$json = {
  '1': 'DetectionResult',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'direction', '3': 2, '4': 1, '5': 9, '10': 'direction'},
    {'1': 'distance', '3': 3, '4': 1, '5': 9, '10': 'distance'},
  ],
};

/// Descriptor for `DetectionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List detectionResultDescriptor = $convert.base64Decode(
    'Cg9EZXRlY3Rpb25SZXN1bHQSFAoFbGFiZWwYASABKAlSBWxhYmVsEhwKCWRpcmVjdGlvbhgCIA'
    'EoCVIJZGlyZWN0aW9uEhoKCGRpc3RhbmNlGAMgASgJUghkaXN0YW5jZQ==');

@$core.Deprecated('Use setupRequestDescriptor instead')
const SetupRequest$json = {
  '1': 'SetupRequest',
  '2': [
    {'1': 'user_question', '3': 1, '4': 1, '5': 9, '10': 'userQuestion'},
    {'1': 'filter_objects', '3': 2, '4': 1, '5': 8, '10': 'filterObjects'},
  ],
};

/// Descriptor for `SetupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setupRequestDescriptor = $convert.base64Decode(
    'CgxTZXR1cFJlcXVlc3QSIwoNdXNlcl9xdWVzdGlvbhgBIAEoCVIMdXNlclF1ZXN0aW9uEiUKDm'
    'ZpbHRlcl9vYmplY3RzGAIgASgIUg1maWx0ZXJPYmplY3Rz');

@$core.Deprecated('Use setupResponseDescriptor instead')
const SetupResponse$json = {
  '1': 'SetupResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'objects_to_detect', '3': 3, '4': 3, '5': 9, '10': 'objectsToDetect'},
  ],
};

/// Descriptor for `SetupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setupResponseDescriptor = $convert.base64Decode(
    'Cg1TZXR1cFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZRgCIA'
    'EoCVIHbWVzc2FnZRIqChFvYmplY3RzX3RvX2RldGVjdBgDIAMoCVIPb2JqZWN0c1RvRGV0ZWN0');

