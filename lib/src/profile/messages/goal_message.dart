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

class GoalMessage extends DataMessage {
  GoalMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: GoalMessage.NAME,
            globalId: GoalMessage.ID,
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
              GoalSportField(
                  size: definitionMessage
                          ?.getFieldDefinition(GoalSportField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GoalSubSportField(
                  size: definitionMessage
                          ?.getFieldDefinition(GoalSubSportField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GoalStartDateField(
                  size: definitionMessage
                          ?.getFieldDefinition(GoalStartDateField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GoalEndDateField(
                  size: definitionMessage
                          ?.getFieldDefinition(GoalEndDateField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GoalTypeField(
                  size: definitionMessage
                          ?.getFieldDefinition(GoalTypeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GoalValueField(
                  size: definitionMessage
                          ?.getFieldDefinition(GoalValueField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GoalRepeatField(
                  size: definitionMessage
                          ?.getFieldDefinition(GoalRepeatField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GoalTargetValueField(
                  size: definitionMessage
                          ?.getFieldDefinition(GoalTargetValueField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GoalRecurrenceField(
                  size: definitionMessage
                          ?.getFieldDefinition(GoalRecurrenceField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GoalRecurrenceValueField(
                  size: definitionMessage
                          ?.getFieldDefinition(GoalRecurrenceValueField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GoalEnabledField(
                  size: definitionMessage
                          ?.getFieldDefinition(GoalEnabledField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GoalSourceField(
                  size: definitionMessage
                          ?.getFieldDefinition(GoalSourceField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 15;
  static const NAME = 'goal';

  final bool growable;

  /// Returns an instance of GoalMessage from a bytes list.
  static GoalMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = GoalMessage(definitionMessage: definitionMessage);
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

  /// Returns the value of the sport field. Returns null if the field is not defined in the message.
  Sport? get sport {
    final field = getField(GoalSportField.ID);
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
    final field = getField(GoalSportField.ID);

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

  /// Returns the value of the subSport field. Returns null if the field is not defined in the message.
  SubSport? get subSport {
    final field = getField(GoalSubSportField.ID);
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
    final field = getField(GoalSubSportField.ID);

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

  /// Returns the value of the timestamp field in  milliseconds since January 1st, 1970 at 00:00:00 UTC
  int? get startDate {
    final field = getField(GoalStartDateField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timestamp field. [value] is milliseconds since January 1st, 1970 at 00:00:00 UTC. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set startDate(int? value) {
    final field = getField(GoalStartDateField.ID);

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
  int? get endDate {
    final field = getField(GoalEndDateField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timestamp field. [value] is milliseconds since January 1st, 1970 at 00:00:00 UTC. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set endDate(int? value) {
    final field = getField(GoalEndDateField.ID);

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
  Goal? get type {
    final field = getField(GoalTypeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return GoalExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the type field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set type(Goal? value) {
    final field = getField(GoalTypeField.ID);

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

  /// Returns the value of the value field. Returns null if the field is not defined in the message.
  int? get value {
    final field = getField(GoalValueField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the value field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set value(int? value) {
    final field = getField(GoalValueField.ID);

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

  /// Returns the value of the repeat field. Returns null if the field is not defined in the message.
  bool? get repeat {
    final field = getField(GoalRepeatField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the repeat field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set repeat(bool? value) {
    final field = getField(GoalRepeatField.ID);

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

  /// Returns the value of the targetValue field. Returns null if the field is not defined in the message.
  int? get targetValue {
    final field = getField(GoalTargetValueField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the targetValue field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set targetValue(int? value) {
    final field = getField(GoalTargetValueField.ID);

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

  /// Returns the value of the recurrence field. Returns null if the field is not defined in the message.
  GoalRecurrence? get recurrence {
    final field = getField(GoalRecurrenceField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return GoalRecurrenceExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the recurrence field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set recurrence(GoalRecurrence? value) {
    final field = getField(GoalRecurrenceField.ID);

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

  /// Returns the value of the recurrenceValue field. Returns null if the field is not defined in the message.
  int? get recurrenceValue {
    final field = getField(GoalRecurrenceValueField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the recurrenceValue field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set recurrenceValue(int? value) {
    final field = getField(GoalRecurrenceValueField.ID);

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
    final field = getField(GoalEnabledField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the enabled field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set enabled(bool? value) {
    final field = getField(GoalEnabledField.ID);

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

  /// Returns the value of the source field. Returns null if the field is not defined in the message.
  GoalSource? get source {
    final field = getField(GoalSourceField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return GoalSourceExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the source field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set source(GoalSource? value) {
    final field = getField(GoalSourceField.ID);

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

class GoalSportField extends Field {
  GoalSportField({int size = 0, bool growable = true})
      : super(
            name: 'sport',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class GoalSubSportField extends Field {
  GoalSubSportField({int size = 0, bool growable = true})
      : super(
            name: 'sub_sport',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 1;
}

class GoalStartDateField extends Field {
  GoalStartDateField({int size = 0, bool growable = true})
      : super(
            name: 'start_date',
            id: ID,
            type: BaseType.UINT32,
            offset: -631065600000,
            scale: 0.001,
            size: size,
            units: 'ms',
            mainTypeName: 'date_time',
            growable: growable,
            subFields: []);

  static const ID = 2;
}

class GoalEndDateField extends Field {
  GoalEndDateField({int size = 0, bool growable = true})
      : super(
            name: 'end_date',
            id: ID,
            type: BaseType.UINT32,
            offset: -631065600000,
            scale: 0.001,
            size: size,
            units: 'ms',
            mainTypeName: 'date_time',
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class GoalTypeField extends Field {
  GoalTypeField({int size = 0, bool growable = true})
      : super(
            name: 'type',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class GoalValueField extends Field {
  GoalValueField({int size = 0, bool growable = true})
      : super(
            name: 'value',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 5;
}

class GoalRepeatField extends Field {
  GoalRepeatField({int size = 0, bool growable = true})
      : super(
            name: 'repeat',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 6;
}

class GoalTargetValueField extends Field {
  GoalTargetValueField({int size = 0, bool growable = true})
      : super(
            name: 'target_value',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 7;
}

class GoalRecurrenceField extends Field {
  GoalRecurrenceField({int size = 0, bool growable = true})
      : super(
            name: 'recurrence',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 8;
}

class GoalRecurrenceValueField extends Field {
  GoalRecurrenceValueField({int size = 0, bool growable = true})
      : super(
            name: 'recurrence_value',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 9;
}

class GoalEnabledField extends Field {
  GoalEnabledField({int size = 0, bool growable = true})
      : super(
            name: 'enabled',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 10;
}

class GoalSourceField extends Field {
  GoalSourceField({int size = 0, bool growable = true})
      : super(
            name: 'source',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 11;
}
