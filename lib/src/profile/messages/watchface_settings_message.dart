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

class WatchfaceSettingsMessage extends DataMessage {
  WatchfaceSettingsMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: WatchfaceSettingsMessage.NAME,
            globalId: WatchfaceSettingsMessage.ID,
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
              WatchfaceSettingsModeField(
                  size: definitionMessage
                          ?.getFieldDefinition(WatchfaceSettingsModeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              WatchfaceSettingsLayoutField(
                  size: definitionMessage
                          ?.getFieldDefinition(WatchfaceSettingsLayoutField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 159;
  static const NAME = 'watchface_settings';

  final bool growable;

  /// Returns an instance of WatchfaceSettingsMessage from a bytes list.
  static WatchfaceSettingsMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message =
        WatchfaceSettingsMessage(definitionMessage: definitionMessage);
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

  /// Returns the value of the mode field. Returns null if the field is not defined in the message.
  WatchfaceMode? get mode {
    final field = getField(WatchfaceSettingsModeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return WatchfaceModeExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the mode field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set mode(WatchfaceMode? value) {
    final field = getField(WatchfaceSettingsModeField.ID);

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

  /// Returns the value of the layout field. Returns null if the field is not defined in the message.
  int? get layout {
    final field = getField(WatchfaceSettingsLayoutField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the layout field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set layout(int? value) {
    final field = getField(WatchfaceSettingsLayoutField.ID);

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

  /// Get the value of the subfield digitalLayout
  DigitalWatchfaceLayout? get digitalLayout {
    final field = getField(WatchfaceSettingsLayoutField.ID);
    final typeField = getField(WatchfaceSettingsModeField.ID);

    final isSubFieldValid =
        typeField != null && [0].contains(typeField.getValue());
    if (field != null && field.isValid() && isSubFieldValid) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the layout subfield with [value]. Throws [FieldNotDefinedError] if the subfield is not defined in the message.
  set digitalLayout(DigitalWatchfaceLayout? value) {
    final field = getField(WatchfaceSettingsLayoutField.ID);
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

  /// Get the value of the subfield analogLayout
  AnalogWatchfaceLayout? get analogLayout {
    final field = getField(WatchfaceSettingsLayoutField.ID);
    final typeField = getField(WatchfaceSettingsModeField.ID);

    final isSubFieldValid =
        typeField != null && [1].contains(typeField.getValue());
    if (field != null && field.isValid() && isSubFieldValid) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the layout subfield with [value]. Throws [FieldNotDefinedError] if the subfield is not defined in the message.
  set analogLayout(AnalogWatchfaceLayout? value) {
    final field = getField(WatchfaceSettingsLayoutField.ID);
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

class WatchfaceSettingsModeField extends Field {
  WatchfaceSettingsModeField({int size = 0, bool growable = true})
      : super(
            name: 'mode',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class WatchfaceSettingsLayoutField extends Field {
  WatchfaceSettingsLayoutField({int size = 0, bool growable = true})
      : super(
            name: 'layout',
            id: ID,
            type: BaseType.BYTE,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: [
              SubField(
                  name: 'digital_layout',
                  type: BaseType.ENUM,
                  scale: 1,
                  offset: 0,
                  referenceMap: {
                    WatchfaceSettingsModeField.ID: [0]
                  }),
              SubField(
                  name: 'analog_layout',
                  type: BaseType.ENUM,
                  scale: 1,
                  offset: 0,
                  referenceMap: {
                    WatchfaceSettingsModeField.ID: [1]
                  })
            ]);

  static const ID = 1;
}
