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

class AntTxMessage extends DataMessage {
  AntTxMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: AntTxMessage.NAME,
            globalId: AntTxMessage.ID,
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
              AntTxFractionalTimestampField(
                  size: definitionMessage
                          ?.getFieldDefinition(AntTxFractionalTimestampField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              AntTxMesgIdField(
                  size: definitionMessage
                          ?.getFieldDefinition(AntTxMesgIdField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              AntTxMesgDataField(
                  size: definitionMessage
                          ?.getFieldDefinition(AntTxMesgDataField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              AntTxChannelNumberField(
                  size: definitionMessage
                          ?.getFieldDefinition(AntTxChannelNumberField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              AntTxDataField(
                  size: definitionMessage
                          ?.getFieldDefinition(AntTxDataField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 81;
  static const NAME = 'ant_tx';

  final bool growable;

  /// Returns an instance of AntTxMessage from a bytes list.
  static AntTxMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = AntTxMessage(definitionMessage: definitionMessage);
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
    final field = getField(AntTxFractionalTimestampField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the fractionalTimestamp field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set fractionalTimestamp(double? value) {
    final field = getField(AntTxFractionalTimestampField.ID);

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

  /// Returns the value of the mesgId field. Returns null if the field is not defined in the message.
  int? get mesgId {
    final field = getField(AntTxMesgIdField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the mesgId field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set mesgId(int? value) {
    final field = getField(AntTxMesgIdField.ID);

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

  /// Returns the value of the mesgData field. Returns null if the field is not defined in the message.
  Uint8List? get mesgData {
    final field = getField(AntTxMesgDataField.ID);
    if (field != null && field.isValid()) {
      return field.getValues();
    } else {
      return null;
    }
  }

  /// Sets the mesgData field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set mesgData(Uint8List? value) {
    final field = getField(AntTxMesgDataField.ID);

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

  /// Returns the value of the channelNumber field. Returns null if the field is not defined in the message.
  int? get channelNumber {
    final field = getField(AntTxChannelNumberField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the channelNumber field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set channelNumber(int? value) {
    final field = getField(AntTxChannelNumberField.ID);

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

  /// Returns the value of the data field. Returns null if the field is not defined in the message.
  Uint8List? get data {
    final field = getField(AntTxDataField.ID);
    if (field != null && field.isValid()) {
      return field.getValues();
    } else {
      return null;
    }
  }

  /// Sets the data field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set data(Uint8List? value) {
    final field = getField(AntTxDataField.ID);

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

class AntTxFractionalTimestampField extends Field {
  AntTxFractionalTimestampField({int size = 0, bool growable = true})
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

class AntTxMesgIdField extends Field {
  AntTxMesgIdField({int size = 0, bool growable = true})
      : super(
            name: 'mesg_id',
            id: ID,
            type: BaseType.BYTE,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 1;
}

class AntTxMesgDataField extends Field {
  AntTxMesgDataField({int size = 0, bool growable = true})
      : super(
            name: 'mesg_data',
            id: ID,
            type: BaseType.BYTE,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 2;
}

class AntTxChannelNumberField extends Field {
  AntTxChannelNumberField({int size = 0, bool growable = true})
      : super(
            name: 'channel_number',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class AntTxDataField extends Field {
  AntTxDataField({int size = 0, bool growable = true})
      : super(
            name: 'data',
            id: ID,
            type: BaseType.BYTE,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 4;
}
