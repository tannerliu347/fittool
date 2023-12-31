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

class HrMessage extends DataMessage {
  HrMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: HrMessage.NAME,
            globalId: HrMessage.ID,
            localId: definitionMessage?.localId ?? localId,
            endian: definitionMessage?.endian ?? endian,
            definitionMessage: definitionMessage,
            developerFields: developerFields,
            fields: [
              TimestampField(
                  size: definitionMessage
                          ?.getFieldDefinition(TimestampField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              HrFractionalTimestampField(
                  size: definitionMessage
                          ?.getFieldDefinition(HrFractionalTimestampField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              HrTime256Field(
                  size: definitionMessage
                          ?.getFieldDefinition(HrTime256Field.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              HrFilteredBpmField(
                  size: definitionMessage
                          ?.getFieldDefinition(HrFilteredBpmField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              HrEventTimestampField(
                  size: definitionMessage
                          ?.getFieldDefinition(HrEventTimestampField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              HrEventTimestamp12Field(
                  size: definitionMessage
                          ?.getFieldDefinition(HrEventTimestamp12Field.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 132;
  static const NAME = 'hr';

  final bool growable;

  /// Returns an instance of HrMessage from a bytes list.
  static HrMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = HrMessage(definitionMessage: definitionMessage);
    message.readFromBytes(bytes);
    return message;
  }

  /// Returns the value of the timestamp field in  milliseconds since January 1st, 1970 at 00:00:00 UTC
  int? get timestamp {
    final field = getField(TimestampField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timestamp field. [value] is milliseconds since January 1st, 1970 at 00:00:00 UTC. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set timestamp(int? value) {
    final field = getField(TimestampField.ID);

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

  /// Returns the value of the fractionalTimestamp field. Returns null if the field is not defined in the message.
  double? get fractionalTimestamp {
    final field = getField(HrFractionalTimestampField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the fractionalTimestamp field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set fractionalTimestamp(double? value) {
    final field = getField(HrFractionalTimestampField.ID);

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

  /// Returns the value of the time256 field. Returns null if the field is not defined in the message.
  double? get time256 {
    final field = getField(HrTime256Field.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the time256 field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set time256(double? value) {
    final field = getField(HrTime256Field.ID);

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

  /// Returns the value of the filteredBpm field. Returns null if the field is not defined in the message.
  List<int>? get filteredBpm {
    final field = getField(HrFilteredBpmField.ID);
    if (field != null && field.isValid()) {
      return field.getValues();
    } else {
      return null;
    }
  }

  /// Sets the filteredBpm field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set filteredBpm(List<int>? value) {
    final field = getField(HrFilteredBpmField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        final values = value;
        field.setValues(values);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the eventTimestamp field. Returns null if the field is not defined in the message.
  List<double>? get eventTimestamp {
    final field = getField(HrEventTimestampField.ID);
    if (field != null && field.isValid()) {
      return field.getValues();
    } else {
      return null;
    }
  }

  /// Sets the eventTimestamp field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set eventTimestamp(List<double>? value) {
    final field = getField(HrEventTimestampField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        final values = value;
        field.setValues(values);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the eventTimestamp12 field. Returns null if the field is not defined in the message.
  Uint8List? get eventTimestamp12 {
    final field = getField(HrEventTimestamp12Field.ID);
    if (field != null && field.isValid()) {
      return field.getValues();
    } else {
      return null;
    }
  }

  /// Sets the eventTimestamp12 field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set eventTimestamp12(Uint8List? value) {
    final field = getField(HrEventTimestamp12Field.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        final values = value;
        field.setValues(values);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }
}

class HrFractionalTimestampField extends Field {
  HrFractionalTimestampField({int size = 0, bool growable = true})
      : super(
            name: 'fractional_timestamp',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 32768,
            size: size,
            units: 's',
            mainTypeName: 'uint16',
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class HrTime256Field extends Field {
  HrTime256Field({int size = 0, bool growable = true})
      : super(
            name: 'time256',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 256,
            size: size,
            units: 's',
            mainTypeName: 'uint8',
            growable: growable,
            subFields: []);

  static const ID = 1;
}

class HrFilteredBpmField extends Field {
  HrFilteredBpmField({int size = 0, bool growable = true})
      : super(
            name: 'filtered_bpm',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            units: 'bpm',
            mainTypeName: 'uint8',
            growable: growable,
            subFields: []);

  static const ID = 6;
}

class HrEventTimestampField extends Field {
  HrEventTimestampField({int size = 0, bool growable = true})
      : super(
            name: 'event_timestamp',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1024,
            size: size,
            units: 's',
            mainTypeName: 'uint32',
            growable: growable,
            subFields: []);

  static const ID = 9;
}

class HrEventTimestamp12Field extends Field {
  HrEventTimestamp12Field({int size = 0, bool growable = true})
      : super(
            name: 'event_timestamp_12',
            id: ID,
            type: BaseType.BYTE,
            offset: 0,
            scale: 1,
            size: size,
            units: 's',
            mainTypeName: 'byte',
            growable: growable,
            subFields: []);

  static const ID = 10;
}
