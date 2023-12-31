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

class ActivityMessage extends DataMessage {
  ActivityMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: ActivityMessage.NAME,
            globalId: ActivityMessage.ID,
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
              ActivityTotalTimerTimeField(
                  size: definitionMessage
                          ?.getFieldDefinition(ActivityTotalTimerTimeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              ActivityNumSessionsField(
                  size: definitionMessage
                          ?.getFieldDefinition(ActivityNumSessionsField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              ActivityTypeField(
                  size: definitionMessage
                          ?.getFieldDefinition(ActivityTypeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              ActivityEventField(
                  size: definitionMessage
                          ?.getFieldDefinition(ActivityEventField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              ActivityEventTypeField(
                  size: definitionMessage
                          ?.getFieldDefinition(ActivityEventTypeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              ActivityLocalTimestampField(
                  size: definitionMessage
                          ?.getFieldDefinition(ActivityLocalTimestampField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              ActivityEventGroupField(
                  size: definitionMessage
                          ?.getFieldDefinition(ActivityEventGroupField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 34;
  static const NAME = 'activity';

  final bool growable;

  /// Returns an instance of ActivityMessage from a bytes list.
  static ActivityMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = ActivityMessage(definitionMessage: definitionMessage);
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

  /// Returns the value of the totalTimerTime field. Returns null if the field is not defined in the message.
  double? get totalTimerTime {
    final field = getField(ActivityTotalTimerTimeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the totalTimerTime field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set totalTimerTime(double? value) {
    final field = getField(ActivityTotalTimerTimeField.ID);

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

  /// Returns the value of the numSessions field. Returns null if the field is not defined in the message.
  int? get numSessions {
    final field = getField(ActivityNumSessionsField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the numSessions field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set numSessions(int? value) {
    final field = getField(ActivityNumSessionsField.ID);

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
  Activity? get type {
    final field = getField(ActivityTypeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return ActivityExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the type field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set type(Activity? value) {
    final field = getField(ActivityTypeField.ID);

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

  /// Returns the value of the event field. Returns null if the field is not defined in the message.
  Event? get event {
    final field = getField(ActivityEventField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return EventExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the event field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set event(Event? value) {
    final field = getField(ActivityEventField.ID);

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

  /// Returns the value of the eventType field. Returns null if the field is not defined in the message.
  EventType? get eventType {
    final field = getField(ActivityEventTypeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return EventTypeExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the eventType field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set eventType(EventType? value) {
    final field = getField(ActivityEventTypeField.ID);

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

  /// Returns the value of the localTimestamp field. Returns null if the field is not defined in the message.
  int? get localTimestamp {
    final field = getField(ActivityLocalTimestampField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the localTimestamp field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set localTimestamp(int? value) {
    final field = getField(ActivityLocalTimestampField.ID);

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

  /// Returns the value of the eventGroup field. Returns null if the field is not defined in the message.
  int? get eventGroup {
    final field = getField(ActivityEventGroupField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the eventGroup field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set eventGroup(int? value) {
    final field = getField(ActivityEventGroupField.ID);

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

class ActivityTotalTimerTimeField extends Field {
  ActivityTotalTimerTimeField({int size = 0, bool growable = true})
      : super(
            name: 'total_timer_time',
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

class ActivityNumSessionsField extends Field {
  ActivityNumSessionsField({int size = 0, bool growable = true})
      : super(
            name: 'num_sessions',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 1;
}

class ActivityTypeField extends Field {
  ActivityTypeField({int size = 0, bool growable = true})
      : super(
            name: 'type',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 2;
}

class ActivityEventField extends Field {
  ActivityEventField({int size = 0, bool growable = true})
      : super(
            name: 'event',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class ActivityEventTypeField extends Field {
  ActivityEventTypeField({int size = 0, bool growable = true})
      : super(
            name: 'event_type',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class ActivityLocalTimestampField extends Field {
  ActivityLocalTimestampField({int size = 0, bool growable = true})
      : super(
            name: 'local_timestamp',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 5;
}

class ActivityEventGroupField extends Field {
  ActivityEventGroupField({int size = 0, bool growable = true})
      : super(
            name: 'event_group',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 6;
}
