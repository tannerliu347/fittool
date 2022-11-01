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

class TotalsMessage extends DataMessage {
  TotalsMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: TotalsMessage.NAME,
            globalId: TotalsMessage.ID,
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
              TimestampField(
                  size: definitionMessage
                          ?.getFieldDefinition(TimestampField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              TotalsTimerTimeField(
                  size: definitionMessage
                          ?.getFieldDefinition(TotalsTimerTimeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              TotalsDistanceField(
                  size: definitionMessage
                          ?.getFieldDefinition(TotalsDistanceField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              TotalsCaloriesField(
                  size: definitionMessage
                          ?.getFieldDefinition(TotalsCaloriesField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              TotalsSportField(
                  size: definitionMessage
                          ?.getFieldDefinition(TotalsSportField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              TotalsElapsedTimeField(
                  size: definitionMessage
                          ?.getFieldDefinition(TotalsElapsedTimeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              TotalsSessionsField(
                  size: definitionMessage
                          ?.getFieldDefinition(TotalsSessionsField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              TotalsActiveTimeField(
                  size: definitionMessage
                          ?.getFieldDefinition(TotalsActiveTimeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              TotalsSportIndexField(
                  size: definitionMessage
                          ?.getFieldDefinition(TotalsSportIndexField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 33;
  static const NAME = 'totals';

  final bool growable;

  /// Returns an instance of TotalsMessage from a bytes list.
  static TotalsMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = TotalsMessage(definitionMessage: definitionMessage);
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

  /// Returns the value of the timerTime field. Returns null if the field is not defined in the message.
  int? get timerTime {
    final field = getField(TotalsTimerTimeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timerTime field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set timerTime(int? value) {
    final field = getField(TotalsTimerTimeField.ID);

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
  int? get distance {
    final field = getField(TotalsDistanceField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the distance field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set distance(int? value) {
    final field = getField(TotalsDistanceField.ID);

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

  /// Returns the value of the calories field. Returns null if the field is not defined in the message.
  int? get calories {
    final field = getField(TotalsCaloriesField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the calories field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set calories(int? value) {
    final field = getField(TotalsCaloriesField.ID);

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
    final field = getField(TotalsSportField.ID);
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
    final field = getField(TotalsSportField.ID);

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

  /// Returns the value of the elapsedTime field. Returns null if the field is not defined in the message.
  int? get elapsedTime {
    final field = getField(TotalsElapsedTimeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the elapsedTime field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set elapsedTime(int? value) {
    final field = getField(TotalsElapsedTimeField.ID);

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

  /// Returns the value of the sessions field. Returns null if the field is not defined in the message.
  int? get sessions {
    final field = getField(TotalsSessionsField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the sessions field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set sessions(int? value) {
    final field = getField(TotalsSessionsField.ID);

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

  /// Returns the value of the activeTime field. Returns null if the field is not defined in the message.
  int? get activeTime {
    final field = getField(TotalsActiveTimeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the activeTime field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set activeTime(int? value) {
    final field = getField(TotalsActiveTimeField.ID);

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

  /// Returns the value of the sportIndex field. Returns null if the field is not defined in the message.
  int? get sportIndex {
    final field = getField(TotalsSportIndexField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the sportIndex field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set sportIndex(int? value) {
    final field = getField(TotalsSportIndexField.ID);

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

class TotalsTimerTimeField extends Field {
  TotalsTimerTimeField({int size = 0, bool growable = true})
      : super(
            name: 'timer_time',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            units: 's',
            mainTypeName: 'uint32',
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class TotalsDistanceField extends Field {
  TotalsDistanceField({int size = 0, bool growable = true})
      : super(
            name: 'distance',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            units: 'm',
            mainTypeName: 'uint32',
            growable: growable,
            subFields: []);

  static const ID = 1;
}

class TotalsCaloriesField extends Field {
  TotalsCaloriesField({int size = 0, bool growable = true})
      : super(
            name: 'calories',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            units: 'kcal',
            mainTypeName: 'uint32',
            growable: growable,
            subFields: []);

  static const ID = 2;
}

class TotalsSportField extends Field {
  TotalsSportField({int size = 0, bool growable = true})
      : super(
            name: 'sport',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class TotalsElapsedTimeField extends Field {
  TotalsElapsedTimeField({int size = 0, bool growable = true})
      : super(
            name: 'elapsed_time',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            units: 's',
            mainTypeName: 'uint32',
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class TotalsSessionsField extends Field {
  TotalsSessionsField({int size = 0, bool growable = true})
      : super(
            name: 'sessions',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 5;
}

class TotalsActiveTimeField extends Field {
  TotalsActiveTimeField({int size = 0, bool growable = true})
      : super(
            name: 'active_time',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            units: 's',
            mainTypeName: 'uint32',
            growable: growable,
            subFields: []);

  static const ID = 6;
}

class TotalsSportIndexField extends Field {
  TotalsSportIndexField({int size = 0, bool growable = true})
      : super(
            name: 'sport_index',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 9;
}
