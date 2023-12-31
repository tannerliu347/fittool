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

class WorkoutMessage extends DataMessage {
  WorkoutMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: WorkoutMessage.NAME,
            globalId: WorkoutMessage.ID,
            localId: definitionMessage?.localId ?? localId,
            endian: definitionMessage?.endian ?? endian,
            definitionMessage: definitionMessage,
            developerFields: developerFields,
            fields: [
              WorkoutSportField(
                  size: definitionMessage
                          ?.getFieldDefinition(WorkoutSportField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              WorkoutCapabilitiesField(
                  size: definitionMessage
                          ?.getFieldDefinition(WorkoutCapabilitiesField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              WorkoutNumValidStepsField(
                  size: definitionMessage
                          ?.getFieldDefinition(WorkoutNumValidStepsField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              WorkoutWorkoutNameField(
                  size: definitionMessage
                          ?.getFieldDefinition(WorkoutWorkoutNameField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              WorkoutSubSportField(
                  size: definitionMessage
                          ?.getFieldDefinition(WorkoutSubSportField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              WorkoutPoolLengthField(
                  size: definitionMessage
                          ?.getFieldDefinition(WorkoutPoolLengthField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              WorkoutPoolLengthUnitField(
                  size: definitionMessage
                          ?.getFieldDefinition(WorkoutPoolLengthUnitField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 26;
  static const NAME = 'workout';

  final bool growable;

  /// Returns an instance of WorkoutMessage from a bytes list.
  static WorkoutMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = WorkoutMessage(definitionMessage: definitionMessage);
    message.readFromBytes(bytes);
    return message;
  }

  /// Returns the value of the sport field. Returns null if the field is not defined in the message.
  Sport? get sport {
    final field = getField(WorkoutSportField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return SportExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the sport field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set sport(Sport? value) {
    final field = getField(WorkoutSportField.ID);

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

  /// Returns the value of the capabilities field. Returns null if the field is not defined in the message.
  int? get capabilities {
    final field = getField(WorkoutCapabilitiesField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the capabilities field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set capabilities(int? value) {
    final field = getField(WorkoutCapabilitiesField.ID);

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

  /// Returns the value of the numValidSteps field. Returns null if the field is not defined in the message.
  int? get numValidSteps {
    final field = getField(WorkoutNumValidStepsField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the numValidSteps field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set numValidSteps(int? value) {
    final field = getField(WorkoutNumValidStepsField.ID);

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

  /// Returns the value of the workoutName field. Returns null if the field is not defined in the message.
  String? get workoutName {
    final field = getField(WorkoutWorkoutNameField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the workoutName field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set workoutName(String? value) {
    final field = getField(WorkoutWorkoutNameField.ID);

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

  /// Returns the value of the subSport field. Returns null if the field is not defined in the message.
  SubSport? get subSport {
    final field = getField(WorkoutSubSportField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return SubSportExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the subSport field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set subSport(SubSport? value) {
    final field = getField(WorkoutSubSportField.ID);

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

  /// Returns the value of the poolLength field. Returns null if the field is not defined in the message.
  double? get poolLength {
    final field = getField(WorkoutPoolLengthField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the poolLength field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set poolLength(double? value) {
    final field = getField(WorkoutPoolLengthField.ID);

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

  /// Returns the value of the poolLengthUnit field. Returns null if the field is not defined in the message.
  DisplayMeasure? get poolLengthUnit {
    final field = getField(WorkoutPoolLengthUnitField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return DisplayMeasureExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the poolLengthUnit field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set poolLengthUnit(DisplayMeasure? value) {
    final field = getField(WorkoutPoolLengthUnitField.ID);

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
}

class WorkoutSportField extends Field {
  WorkoutSportField({int size = 0, bool growable = true})
      : super(
            name: 'sport',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class WorkoutCapabilitiesField extends Field {
  WorkoutCapabilitiesField({int size = 0, bool growable = true})
      : super(
            name: 'capabilities',
            id: ID,
            type: BaseType.UINT32Z,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 5;
}

class WorkoutNumValidStepsField extends Field {
  WorkoutNumValidStepsField({int size = 0, bool growable = true})
      : super(
            name: 'num_valid_steps',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 6;
}

class WorkoutWorkoutNameField extends Field {
  WorkoutWorkoutNameField({int size = 0, bool growable = true})
      : super(
            name: 'wkt_name',
            id: ID,
            type: BaseType.STRING,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 8;
}

class WorkoutSubSportField extends Field {
  WorkoutSubSportField({int size = 0, bool growable = true})
      : super(
            name: 'sub_sport',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 11;
}

class WorkoutPoolLengthField extends Field {
  WorkoutPoolLengthField({int size = 0, bool growable = true})
      : super(
            name: 'pool_length',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 100,
            size: size,
            units: 'm',
            mainTypeName: 'uint16',
            growable: growable,
            subFields: []);

  static const ID = 14;
}

class WorkoutPoolLengthUnitField extends Field {
  WorkoutPoolLengthUnitField({int size = 0, bool growable = true})
      : super(
            name: 'pool_length_unit',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 15;
}
