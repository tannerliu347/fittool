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

class SetMessage extends DataMessage {
  SetMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: SetMessage.NAME,
            globalId: SetMessage.ID,
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
              SetDurationField(
                  size: definitionMessage
                          ?.getFieldDefinition(SetDurationField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SetRepetitionsField(
                  size: definitionMessage
                          ?.getFieldDefinition(SetRepetitionsField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SetWeightField(
                  size: definitionMessage
                          ?.getFieldDefinition(SetWeightField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SetSetTypeField(
                  size: definitionMessage
                          ?.getFieldDefinition(SetSetTypeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SetStartTimeField(
                  size: definitionMessage
                          ?.getFieldDefinition(SetStartTimeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SetCategoryField(
                  size: definitionMessage
                          ?.getFieldDefinition(SetCategoryField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SetCategorySubtypeField(
                  size: definitionMessage
                          ?.getFieldDefinition(SetCategorySubtypeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SetWeightDisplayUnitField(
                  size: definitionMessage
                          ?.getFieldDefinition(SetWeightDisplayUnitField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SetMessageIndexField(
                  size: definitionMessage
                          ?.getFieldDefinition(SetMessageIndexField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SetWorkoutStepIndexField(
                  size: definitionMessage
                          ?.getFieldDefinition(SetWorkoutStepIndexField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 225;
  static const NAME = 'set';

  final bool growable;

  /// Returns an instance of SetMessage from a bytes list.
  static SetMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = SetMessage(definitionMessage: definitionMessage);
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

  /// Returns the value of the duration field. Returns null if the field is not defined in the message.
  double? get duration {
    final field = getField(SetDurationField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the duration field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set duration(double? value) {
    final field = getField(SetDurationField.ID);

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

  /// Returns the value of the repetitions field. Returns null if the field is not defined in the message.
  int? get repetitions {
    final field = getField(SetRepetitionsField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the repetitions field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set repetitions(int? value) {
    final field = getField(SetRepetitionsField.ID);

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

  /// Returns the value of the weight field. Returns null if the field is not defined in the message.
  double? get weight {
    final field = getField(SetWeightField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the weight field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set weight(double? value) {
    final field = getField(SetWeightField.ID);

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

  /// Returns the value of the setType field. Returns null if the field is not defined in the message.
  int? get setType {
    final field = getField(SetSetTypeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the setType field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set setType(int? value) {
    final field = getField(SetSetTypeField.ID);

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
  int? get startTime {
    final field = getField(SetStartTimeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timestamp field. [value] is milliseconds since January 1st, 1970 at 00:00:00 UTC. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set startTime(int? value) {
    final field = getField(SetStartTimeField.ID);

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

  /// Returns the value of the category field. Returns null if the field is not defined in the message.
  List<int>? get category {
    final field = getField(SetCategoryField.ID);
    if (field != null && field.isValid()) {
      return field.getValues();
    } else {
      return null;
    }
  }

  /// Sets the category field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set category(List<int>? value) {
    final field = getField(SetCategoryField.ID);

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

  /// Returns the value of the categorySubtype field. Returns null if the field is not defined in the message.
  List<int>? get categorySubtype {
    final field = getField(SetCategorySubtypeField.ID);
    if (field != null && field.isValid()) {
      return field.getValues();
    } else {
      return null;
    }
  }

  /// Sets the categorySubtype field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set categorySubtype(List<int>? value) {
    final field = getField(SetCategorySubtypeField.ID);

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

  /// Returns the value of the weightDisplayUnit field. Returns null if the field is not defined in the message.
  int? get weightDisplayUnit {
    final field = getField(SetWeightDisplayUnitField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the weightDisplayUnit field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set weightDisplayUnit(int? value) {
    final field = getField(SetWeightDisplayUnitField.ID);

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

  /// Returns the value of the messageIndex field. Returns null if the field is not defined in the message.
  int? get messageIndex {
    final field = getField(SetMessageIndexField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the messageIndex field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set messageIndex(int? value) {
    final field = getField(SetMessageIndexField.ID);

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

  /// Returns the value of the workoutStepIndex field. Returns null if the field is not defined in the message.
  int? get workoutStepIndex {
    final field = getField(SetWorkoutStepIndexField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the workoutStepIndex field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set workoutStepIndex(int? value) {
    final field = getField(SetWorkoutStepIndexField.ID);

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

class SetDurationField extends Field {
  SetDurationField({int size = 0, bool growable = true})
      : super(
            name: 'duration',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1000,
            size: size,
            units: 's',
            mainTypeName: 'uint32',
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class SetRepetitionsField extends Field {
  SetRepetitionsField({int size = 0, bool growable = true})
      : super(
            name: 'repetitions',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class SetWeightField extends Field {
  SetWeightField({int size = 0, bool growable = true})
      : super(
            name: 'weight',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 16,
            size: size,
            units: 'kg',
            mainTypeName: 'uint16',
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class SetSetTypeField extends Field {
  SetSetTypeField({int size = 0, bool growable = true})
      : super(
            name: 'set_type',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 5;
}

class SetStartTimeField extends Field {
  SetStartTimeField({int size = 0, bool growable = true})
      : super(
            name: 'start_time',
            id: ID,
            type: BaseType.UINT32,
            offset: -631065600000,
            scale: 0.001,
            size: size,
            units: 'ms',
            mainTypeName: 'date_time',
            growable: growable,
            subFields: []);

  static const ID = 6;
}

class SetCategoryField extends Field {
  SetCategoryField({int size = 0, bool growable = true})
      : super(
            name: 'category',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 7;
}

class SetCategorySubtypeField extends Field {
  SetCategorySubtypeField({int size = 0, bool growable = true})
      : super(
            name: 'category_subtype',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 8;
}

class SetWeightDisplayUnitField extends Field {
  SetWeightDisplayUnitField({int size = 0, bool growable = true})
      : super(
            name: 'weight_display_unit',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 9;
}

class SetMessageIndexField extends Field {
  SetMessageIndexField({int size = 0, bool growable = true})
      : super(
            name: 'message_index',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 10;
}

class SetWorkoutStepIndexField extends Field {
  SetWorkoutStepIndexField({int size = 0, bool growable = true})
      : super(
            name: 'wkt_step_index',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 11;
}
