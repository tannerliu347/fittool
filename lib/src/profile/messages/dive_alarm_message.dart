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

class DiveAlarmMessage extends DataMessage {
  DiveAlarmMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: DiveAlarmMessage.NAME,
            globalId: DiveAlarmMessage.ID,
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
              DiveAlarmDepthField(
                  size: definitionMessage
                          ?.getFieldDefinition(DiveAlarmDepthField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              DiveAlarmTimeField(
                  size: definitionMessage
                          ?.getFieldDefinition(DiveAlarmTimeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              DiveAlarmEnabledField(
                  size: definitionMessage
                          ?.getFieldDefinition(DiveAlarmEnabledField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              DiveAlarmAlarmTypeField(
                  size: definitionMessage
                          ?.getFieldDefinition(DiveAlarmAlarmTypeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              DiveAlarmSoundField(
                  size: definitionMessage
                          ?.getFieldDefinition(DiveAlarmSoundField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              DiveAlarmDiveTypesField(
                  size: definitionMessage
                          ?.getFieldDefinition(DiveAlarmDiveTypesField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 262;
  static const NAME = 'dive_alarm';

  final bool growable;

  /// Returns an instance of DiveAlarmMessage from a bytes list.
  static DiveAlarmMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = DiveAlarmMessage(definitionMessage: definitionMessage);
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

  /// Returns the value of the depth field. Returns null if the field is not defined in the message.
  double? get depth {
    final field = getField(DiveAlarmDepthField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the depth field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set depth(double? value) {
    final field = getField(DiveAlarmDepthField.ID);

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

  /// Returns the value of the time field. Returns null if the field is not defined in the message.
  int? get time {
    final field = getField(DiveAlarmTimeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the time field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set time(int? value) {
    final field = getField(DiveAlarmTimeField.ID);

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

  /// Returns the value of the enabled field. Returns null if the field is not defined in the message.
  bool? get enabled {
    final field = getField(DiveAlarmEnabledField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the enabled field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set enabled(bool? value) {
    final field = getField(DiveAlarmEnabledField.ID);

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

  /// Returns the value of the alarmType field. Returns null if the field is not defined in the message.
  DiveAlarmType? get alarmType {
    final field = getField(DiveAlarmAlarmTypeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return DiveAlarmTypeExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the alarmType field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set alarmType(DiveAlarmType? value) {
    final field = getField(DiveAlarmAlarmTypeField.ID);

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

  /// Returns the value of the sound field. Returns null if the field is not defined in the message.
  Tone? get sound {
    final field = getField(DiveAlarmSoundField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return ToneExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the sound field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set sound(Tone? value) {
    final field = getField(DiveAlarmSoundField.ID);

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

  /// Returns the value of the diveTypes field. Returns null if the field is not defined in the message.
  List<SubSport>? get diveTypes {
    final field = getField(DiveAlarmDiveTypesField.ID);
    if (field != null && field.isValid()) {
      final values = field.getValues();
      return values.map((item) => SubSportExt.fromValue(item)).toList();
    } else {
      return null;
    }
  }

  /// Sets the diveTypes field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set diveTypes(List<SubSport>? value) {
    final field = getField(DiveAlarmDiveTypesField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        final values = value.map((item) => item.value).toList();
        field.setValues(values);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }
}

class DiveAlarmDepthField extends Field {
  DiveAlarmDepthField({int size = 0, bool growable = true})
      : super(
            name: 'depth',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1000,
            size: size,
            units: 'm',
            mainTypeName: 'uint32',
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class DiveAlarmTimeField extends Field {
  DiveAlarmTimeField({int size = 0, bool growable = true})
      : super(
            name: 'time',
            id: ID,
            type: BaseType.SINT32,
            offset: 0,
            scale: 1,
            size: size,
            units: 's',
            mainTypeName: 'sint32',
            growable: growable,
            subFields: []);

  static const ID = 1;
}

class DiveAlarmEnabledField extends Field {
  DiveAlarmEnabledField({int size = 0, bool growable = true})
      : super(
            name: 'enabled',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 2;
}

class DiveAlarmAlarmTypeField extends Field {
  DiveAlarmAlarmTypeField({int size = 0, bool growable = true})
      : super(
            name: 'alarm_type',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class DiveAlarmSoundField extends Field {
  DiveAlarmSoundField({int size = 0, bool growable = true})
      : super(
            name: 'sound',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class DiveAlarmDiveTypesField extends Field {
  DiveAlarmDiveTypesField({int size = 0, bool growable = true})
      : super(
            name: 'dive_types',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 5;
}
