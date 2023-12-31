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

class BloodPressureMessage extends DataMessage {
  BloodPressureMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: BloodPressureMessage.NAME,
            globalId: BloodPressureMessage.ID,
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
              BloodPressureSystolicPressureField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              BloodPressureSystolicPressureField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              BloodPressureDiastolicPressureField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              BloodPressureDiastolicPressureField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              BloodPressureMeanArterialPressureField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              BloodPressureMeanArterialPressureField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              BloodPressureMap3SampleMeanField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              BloodPressureMap3SampleMeanField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              BloodPressureMapMorningValuesField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              BloodPressureMapMorningValuesField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              BloodPressureMapEveningValuesField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              BloodPressureMapEveningValuesField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              BloodPressureHeartRateField(
                  size: definitionMessage
                          ?.getFieldDefinition(BloodPressureHeartRateField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              BloodPressureHeartRateTypeField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              BloodPressureHeartRateTypeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              BloodPressureStatusField(
                  size: definitionMessage
                          ?.getFieldDefinition(BloodPressureStatusField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              BloodPressureUserProfileIndexField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              BloodPressureUserProfileIndexField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 51;
  static const NAME = 'blood_pressure';

  final bool growable;

  /// Returns an instance of BloodPressureMessage from a bytes list.
  static BloodPressureMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = BloodPressureMessage(definitionMessage: definitionMessage);
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

  /// Returns the value of the systolicPressure field. Returns null if the field is not defined in the message.
  int? get systolicPressure {
    final field = getField(BloodPressureSystolicPressureField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the systolicPressure field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set systolicPressure(int? value) {
    final field = getField(BloodPressureSystolicPressureField.ID);

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

  /// Returns the value of the diastolicPressure field. Returns null if the field is not defined in the message.
  int? get diastolicPressure {
    final field = getField(BloodPressureDiastolicPressureField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the diastolicPressure field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set diastolicPressure(int? value) {
    final field = getField(BloodPressureDiastolicPressureField.ID);

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

  /// Returns the value of the meanArterialPressure field. Returns null if the field is not defined in the message.
  int? get meanArterialPressure {
    final field = getField(BloodPressureMeanArterialPressureField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the meanArterialPressure field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set meanArterialPressure(int? value) {
    final field = getField(BloodPressureMeanArterialPressureField.ID);

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

  /// Returns the value of the map3SampleMean field. Returns null if the field is not defined in the message.
  int? get map3SampleMean {
    final field = getField(BloodPressureMap3SampleMeanField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the map3SampleMean field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set map3SampleMean(int? value) {
    final field = getField(BloodPressureMap3SampleMeanField.ID);

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

  /// Returns the value of the mapMorningValues field. Returns null if the field is not defined in the message.
  int? get mapMorningValues {
    final field = getField(BloodPressureMapMorningValuesField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the mapMorningValues field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set mapMorningValues(int? value) {
    final field = getField(BloodPressureMapMorningValuesField.ID);

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

  /// Returns the value of the mapEveningValues field. Returns null if the field is not defined in the message.
  int? get mapEveningValues {
    final field = getField(BloodPressureMapEveningValuesField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the mapEveningValues field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set mapEveningValues(int? value) {
    final field = getField(BloodPressureMapEveningValuesField.ID);

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

  /// Returns the value of the heartRate field. Returns null if the field is not defined in the message.
  int? get heartRate {
    final field = getField(BloodPressureHeartRateField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the heartRate field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set heartRate(int? value) {
    final field = getField(BloodPressureHeartRateField.ID);

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

  /// Returns the value of the heartRateType field. Returns null if the field is not defined in the message.
  HrType? get heartRateType {
    final field = getField(BloodPressureHeartRateTypeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return HrTypeExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the heartRateType field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set heartRateType(HrType? value) {
    final field = getField(BloodPressureHeartRateTypeField.ID);

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

  /// Returns the value of the status field. Returns null if the field is not defined in the message.
  BpStatus? get status {
    final field = getField(BloodPressureStatusField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return BpStatusExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the status field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set status(BpStatus? value) {
    final field = getField(BloodPressureStatusField.ID);

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

  /// Returns the value of the userProfileIndex field. Returns null if the field is not defined in the message.
  int? get userProfileIndex {
    final field = getField(BloodPressureUserProfileIndexField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the userProfileIndex field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set userProfileIndex(int? value) {
    final field = getField(BloodPressureUserProfileIndexField.ID);

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

class BloodPressureSystolicPressureField extends Field {
  BloodPressureSystolicPressureField({int size = 0, bool growable = true})
      : super(
            name: 'systolic_pressure',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            units: 'mmHg',
            mainTypeName: 'uint16',
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class BloodPressureDiastolicPressureField extends Field {
  BloodPressureDiastolicPressureField({int size = 0, bool growable = true})
      : super(
            name: 'diastolic_pressure',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            units: 'mmHg',
            mainTypeName: 'uint16',
            growable: growable,
            subFields: []);

  static const ID = 1;
}

class BloodPressureMeanArterialPressureField extends Field {
  BloodPressureMeanArterialPressureField({int size = 0, bool growable = true})
      : super(
            name: 'mean_arterial_pressure',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            units: 'mmHg',
            mainTypeName: 'uint16',
            growable: growable,
            subFields: []);

  static const ID = 2;
}

class BloodPressureMap3SampleMeanField extends Field {
  BloodPressureMap3SampleMeanField({int size = 0, bool growable = true})
      : super(
            name: 'map_3_sample_mean',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            units: 'mmHg',
            mainTypeName: 'uint16',
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class BloodPressureMapMorningValuesField extends Field {
  BloodPressureMapMorningValuesField({int size = 0, bool growable = true})
      : super(
            name: 'map_morning_values',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            units: 'mmHg',
            mainTypeName: 'uint16',
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class BloodPressureMapEveningValuesField extends Field {
  BloodPressureMapEveningValuesField({int size = 0, bool growable = true})
      : super(
            name: 'map_evening_values',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            units: 'mmHg',
            mainTypeName: 'uint16',
            growable: growable,
            subFields: []);

  static const ID = 5;
}

class BloodPressureHeartRateField extends Field {
  BloodPressureHeartRateField({int size = 0, bool growable = true})
      : super(
            name: 'heart_rate',
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

class BloodPressureHeartRateTypeField extends Field {
  BloodPressureHeartRateTypeField({int size = 0, bool growable = true})
      : super(
            name: 'heart_rate_type',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 7;
}

class BloodPressureStatusField extends Field {
  BloodPressureStatusField({int size = 0, bool growable = true})
      : super(
            name: 'status',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 8;
}

class BloodPressureUserProfileIndexField extends Field {
  BloodPressureUserProfileIndexField({int size = 0, bool growable = true})
      : super(
            name: 'user_profile_index',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 9;
}
