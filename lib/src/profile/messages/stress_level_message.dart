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

class StressLevelMessage extends DataMessage {
  StressLevelMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: StressLevelMessage.NAME,
            globalId: StressLevelMessage.ID,
            localId: definitionMessage?.localId ?? localId,
            endian: definitionMessage?.endian ?? endian,
            definitionMessage: definitionMessage,
            developerFields: developerFields,
            fields: [
              StressLevelStressLevelValueField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              StressLevelStressLevelValueField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              StressLevelStressLevelTimeField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              StressLevelStressLevelTimeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 227;
  static const NAME = 'stress_level';

  final bool growable;

  /// Returns an instance of StressLevelMessage from a bytes list.
  static StressLevelMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = StressLevelMessage(definitionMessage: definitionMessage);
    message.readFromBytes(bytes);
    return message;
  }

  /// Returns the value of the stressLevelValue field. Returns null if the field is not defined in the message.
  int? get stressLevelValue {
    final field = getField(StressLevelStressLevelValueField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the stressLevelValue field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set stressLevelValue(int? value) {
    final field = getField(StressLevelStressLevelValueField.ID);

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
  int? get stressLevelTime {
    final field = getField(StressLevelStressLevelTimeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timestamp field. [value] is milliseconds since January 1st, 1970 at 00:00:00 UTC. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set stressLevelTime(int? value) {
    final field = getField(StressLevelStressLevelTimeField.ID);

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

class StressLevelStressLevelValueField extends Field {
  StressLevelStressLevelValueField({int size = 0, bool growable = true})
      : super(
            name: 'stress_level_value',
            id: ID,
            type: BaseType.SINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class StressLevelStressLevelTimeField extends Field {
  StressLevelStressLevelTimeField({int size = 0, bool growable = true})
      : super(
            name: 'stress_level_time',
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
