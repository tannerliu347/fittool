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

class NmeaSentenceMessage extends DataMessage {
  NmeaSentenceMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: NmeaSentenceMessage.NAME,
            globalId: NmeaSentenceMessage.ID,
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
              NmeaSentenceTimestampMsField(
                  size: definitionMessage
                          ?.getFieldDefinition(NmeaSentenceTimestampMsField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              NmeaSentenceSentenceField(
                  size: definitionMessage
                          ?.getFieldDefinition(NmeaSentenceSentenceField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 177;
  static const NAME = 'nmea_sentence';

  final bool growable;

  /// Returns an instance of NmeaSentenceMessage from a bytes list.
  static NmeaSentenceMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = NmeaSentenceMessage(definitionMessage: definitionMessage);
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

  /// Returns the value of the timestampMs field. Returns null if the field is not defined in the message.
  int? get timestampMs {
    final field = getField(NmeaSentenceTimestampMsField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timestampMs field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set timestampMs(int? value) {
    final field = getField(NmeaSentenceTimestampMsField.ID);

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

  /// Returns the value of the sentence field. Returns null if the field is not defined in the message.
  String? get sentence {
    final field = getField(NmeaSentenceSentenceField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the sentence field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set sentence(String? value) {
    final field = getField(NmeaSentenceSentenceField.ID);

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

class NmeaSentenceTimestampMsField extends Field {
  NmeaSentenceTimestampMsField({int size = 0, bool growable = true})
      : super(
            name: 'timestamp_ms',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            units: 'ms',
            mainTypeName: 'uint16',
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class NmeaSentenceSentenceField extends Field {
  NmeaSentenceSentenceField({int size = 0, bool growable = true})
      : super(
            name: 'sentence',
            id: ID,
            type: BaseType.STRING,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 1;
}
