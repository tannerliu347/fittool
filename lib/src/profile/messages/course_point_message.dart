/// Autogenerated. Do not modify.
///
/// Profile: 21.60

import 'dart:typed_data';

import '../../base_type.dart';
import '../../data_message.dart';
import '../../definition_message.dart';
import '../../field.dart';
import '../../sub_field.dart';
import '../profile_type.dart';
import '../../errors.dart';
import 'common_fields.dart';

// ignore_for_file: constant_identifier_names

class CoursePointMessage extends DataMessage {
  CoursePointMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: CoursePointMessage.NAME,
            globalId: CoursePointMessage.ID,
            localId: definitionMessage?.localId ?? localId,
            endian: definitionMessage?.endian ?? endian,
            definitionMessage: definitionMessage,
            developerFields: developerFields,
            fields: [
              MessageIndexField(
                  size: definitionMessage
                          ?.getFieldDefinition(MessageIndexField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              CoursePointTimestampField(
                  size: definitionMessage
                          ?.getFieldDefinition(CoursePointTimestampField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              CoursePointPositionLatField(
                  size: definitionMessage
                          ?.getFieldDefinition(CoursePointPositionLatField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              CoursePointPositionLongField(
                  size: definitionMessage
                          ?.getFieldDefinition(CoursePointPositionLongField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              CoursePointDistanceField(
                  size: definitionMessage
                          ?.getFieldDefinition(CoursePointDistanceField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              CoursePointTypeField(
                  size: definitionMessage
                          ?.getFieldDefinition(CoursePointTypeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              CoursePointNameField(
                  size: definitionMessage
                          ?.getFieldDefinition(CoursePointNameField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              CoursePointFavoriteField(
                  size: definitionMessage
                          ?.getFieldDefinition(CoursePointFavoriteField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 32;
  static const NAME = 'course_point';

  final bool growable;

  /// Returns an instance of CoursePointMessage from a bytes list.
  static CoursePointMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = CoursePointMessage(definitionMessage: definitionMessage);
    message.readFromBytes(bytes);
    return message;
  }

  /// Returns the value of the messageIndex field. Returns null if the field is not defined in the message.
  int? get messageIndex {
    final field = getField(MessageIndexField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the messageIndex field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set messageIndex(int? value) {
    final field = getField(MessageIndexField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the timestamp field in  milliseconds since January 1st, 1970 at 00:00:00 UTC
  int? get timestamp {
    final field = getField(CoursePointTimestampField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timestamp field. [value] is milliseconds since January 1st, 1970 at 00:00:00 UTC. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set timestamp(int? value) {
    final field = getField(CoursePointTimestampField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the positionLat field. Returns null if the field is not defined in the message.
  double? get positionLat {
    final field = getField(CoursePointPositionLatField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the positionLat field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set positionLat(double? value) {
    final field = getField(CoursePointPositionLatField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the positionLong field. Returns null if the field is not defined in the message.
  double? get positionLong {
    final field = getField(CoursePointPositionLongField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the positionLong field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set positionLong(double? value) {
    final field = getField(CoursePointPositionLongField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the distance field. Returns null if the field is not defined in the message.
  double? get distance {
    final field = getField(CoursePointDistanceField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the distance field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set distance(double? value) {
    final field = getField(CoursePointDistanceField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the type field. Returns null if the field is not defined in the message.
  CoursePoint? get type {
    final field = getField(CoursePointTypeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return CoursePointExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the type field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set type(CoursePoint? value) {
    final field = getField(CoursePointTypeField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value.value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the coursePointName field. Returns null if the field is not defined in the message.
  String? get coursePointName {
    final field = getField(CoursePointNameField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the coursePointName field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set coursePointName(String? value) {
    final field = getField(CoursePointNameField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the favorite field. Returns null if the field is not defined in the message.
  bool? get favorite {
    final field = getField(CoursePointFavoriteField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the favorite field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set favorite(bool? value) {
    final field = getField(CoursePointFavoriteField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }
}

class CoursePointTimestampField extends Field {
  CoursePointTimestampField({int size = 0, bool growable = true})
      : super(
            name: 'timestamp',
            id: ID,
            type: BaseType.UINT32,
            offset: -631065600000,
            scale: 0.001,
            size: size,
            units: 'ms',
            mainTypeName: 'date_time',
            growable: growable,
            subFields: []);

  static const ID = 1;
}

class CoursePointPositionLatField extends Field {
  CoursePointPositionLatField({int size = 0, bool growable = true})
      : super(
            name: 'position_lat',
            id: ID,
            type: BaseType.SINT32,
            offset: 0,
            scale: 11930464.711111112,
            size: size,
            units: 'degrees',
            mainTypeName: 'sint32',
            growable: growable,
            subFields: []);

  static const ID = 2;
}

class CoursePointPositionLongField extends Field {
  CoursePointPositionLongField({int size = 0, bool growable = true})
      : super(
            name: 'position_long',
            id: ID,
            type: BaseType.SINT32,
            offset: 0,
            scale: 11930464.711111112,
            size: size,
            units: 'degrees',
            mainTypeName: 'sint32',
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class CoursePointDistanceField extends Field {
  CoursePointDistanceField({int size = 0, bool growable = true})
      : super(
            name: 'distance',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 100,
            size: size,
            units: 'm',
            mainTypeName: 'uint32',
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class CoursePointTypeField extends Field {
  CoursePointTypeField({int size = 0, bool growable = true})
      : super(
            name: 'type',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 5;
}

class CoursePointNameField extends Field {
  CoursePointNameField({int size = 0, bool growable = true})
      : super(
            name: 'name',
            id: ID,
            type: BaseType.STRING,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 6;
}

class CoursePointFavoriteField extends Field {
  CoursePointFavoriteField({int size = 0, bool growable = true})
      : super(
            name: 'favorite',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 8;
}
