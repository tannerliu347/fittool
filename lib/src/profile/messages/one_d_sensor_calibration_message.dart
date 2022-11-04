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

class OneDSensorCalibrationMessage extends DataMessage {
  OneDSensorCalibrationMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: OneDSensorCalibrationMessage.NAME,
            globalId: OneDSensorCalibrationMessage.ID,
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
              OneDSensorCalibrationSensorTypeField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              OneDSensorCalibrationSensorTypeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              OneDSensorCalibrationCalibrationFactorField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              OneDSensorCalibrationCalibrationFactorField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              OneDSensorCalibrationCalibrationDivisorField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              OneDSensorCalibrationCalibrationDivisorField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              OneDSensorCalibrationLevelShiftField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              OneDSensorCalibrationLevelShiftField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              OneDSensorCalibrationOffsetCalField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              OneDSensorCalibrationOffsetCalField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 210;
  static const NAME = 'one_d_sensor_calibration';

  final bool growable;

  /// Returns an instance of OneDSensorCalibrationMessage from a bytes list.
  static OneDSensorCalibrationMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message =
        OneDSensorCalibrationMessage(definitionMessage: definitionMessage);
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

  /// Returns the value of the sensorType field. Returns null if the field is not defined in the message.
  SensorType? get sensorType {
    final field = getField(OneDSensorCalibrationSensorTypeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return SensorTypeExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the sensorType field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set sensorType(SensorType? value) {
    final field = getField(OneDSensorCalibrationSensorTypeField.ID);

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

  /// Returns the value of the calibrationFactor field. Returns null if the field is not defined in the message.
  int? get calibrationFactor {
    final field = getField(OneDSensorCalibrationCalibrationFactorField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the calibrationFactor field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set calibrationFactor(int? value) {
    final field = getField(OneDSensorCalibrationCalibrationFactorField.ID);

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

  /// Get the value of the subfield baroCalFactor
  int? get baroCalFactor {
    final field = getField(OneDSensorCalibrationCalibrationFactorField.ID);
    final typeField = getField(OneDSensorCalibrationSensorTypeField.ID);

    final isSubFieldValid =
        typeField != null && [3].contains(typeField.getValue());
    if (field != null && field.isValid() && isSubFieldValid) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the calibrationFactor subfield with [value]. Throws [FieldNotDefinedError] if the subfield is not defined in the message.
  set baroCalFactor(int? value) {
    final field = getField(OneDSensorCalibrationCalibrationFactorField.ID);
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

  /// Returns the value of the calibrationDivisor field. Returns null if the field is not defined in the message.
  int? get calibrationDivisor {
    final field = getField(OneDSensorCalibrationCalibrationDivisorField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the calibrationDivisor field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set calibrationDivisor(int? value) {
    final field = getField(OneDSensorCalibrationCalibrationDivisorField.ID);

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

  /// Returns the value of the levelShift field. Returns null if the field is not defined in the message.
  int? get levelShift {
    final field = getField(OneDSensorCalibrationLevelShiftField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the levelShift field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set levelShift(int? value) {
    final field = getField(OneDSensorCalibrationLevelShiftField.ID);

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

  /// Returns the value of the offsetCal field. Returns null if the field is not defined in the message.
  int? get offsetCal {
    final field = getField(OneDSensorCalibrationOffsetCalField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the offsetCal field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set offsetCal(int? value) {
    final field = getField(OneDSensorCalibrationOffsetCalField.ID);

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

class OneDSensorCalibrationSensorTypeField extends Field {
  OneDSensorCalibrationSensorTypeField({int size = 0, bool growable = true})
      : super(
            name: 'sensor_type',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class OneDSensorCalibrationCalibrationFactorField extends Field {
  OneDSensorCalibrationCalibrationFactorField(
      {int size = 0, bool growable = true})
      : super(
            name: 'calibration_factor',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: [
              SubField(
                  name: 'baro_cal_factor',
                  type: BaseType.UINT32,
                  scale: 1,
                  offset: 0,
                  units: 'Pa',
                  referenceMap: {
                    OneDSensorCalibrationSensorTypeField.ID: [3]
                  })
            ]);

  static const ID = 1;
}

class OneDSensorCalibrationCalibrationDivisorField extends Field {
  OneDSensorCalibrationCalibrationDivisorField(
      {int size = 0, bool growable = true})
      : super(
            name: 'calibration_divisor',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            units: 'counts',
            mainTypeName: 'uint32',
            growable: growable,
            subFields: []);

  static const ID = 2;
}

class OneDSensorCalibrationLevelShiftField extends Field {
  OneDSensorCalibrationLevelShiftField({int size = 0, bool growable = true})
      : super(
            name: 'level_shift',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class OneDSensorCalibrationOffsetCalField extends Field {
  OneDSensorCalibrationOffsetCalField({int size = 0, bool growable = true})
      : super(
            name: 'offset_cal',
            id: ID,
            type: BaseType.SINT32,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 4;
}
