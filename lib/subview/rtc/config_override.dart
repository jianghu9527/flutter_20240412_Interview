import 'package:flutter_20240407_code_wall/subview/rtc/agora.config.dart';

/// Key of APP ID
const keyAppId = 'TEST_APP_ID';
// const keyAppId = "c5d0c71ae90c4ce7933628dfbabd40d5";

/// Key of Channel ID
// const keyChannelId = '007eJxTYBDdGPvsjUdG/NTA3oUs1/rSf/xdc/Jh9TK3zzOdFws080grMCSbphgkmxsmploaJJskp5pbGhubGVmkpCUlJqWYGKSYvjLTTWsIZGRQSBFjYIRCEJ+LoSAzLz0lMb84s4KBAQCB/iKG';
const keyChannelId = 'TEST_CHANNEL_ID';
/// Key of token
// const keyToken = 'pingdaosix';
const keyToken = 'TEST_TOKEN';

ExampleConfigOverride? _gConfigOverride;

/// This class allow override the config(appId/channelId/token) in the example.
class ExampleConfigOverride {
  ExampleConfigOverride._();

  factory ExampleConfigOverride() {
    _gConfigOverride = _gConfigOverride ?? ExampleConfigOverride._();
    return _gConfigOverride!;
  }
  final Map<String, String> _overridedConfig = {};

  /// Get the expected APP ID
  String getAppId() {
    print("-----------》》》--------------getAppId--------${_overridedConfig[keyAppId] ??
        // Allow pass an `appId` as an environment variable with name `TEST_APP_ID` by using --dart-define
        // const String.fromEnvironment(keyAppId, defaultValue: '<TEST_APP_ID>');
       const String.fromEnvironment(keyAppId, defaultValue: 'c5d0c71ae90c4ce7933628dfbabd40d5')}");


    return _overridedConfig[keyAppId] ??
        // Allow pass an `appId` as an environment variable with name `TEST_APP_ID` by using --dart-define
        // const String.fromEnvironment(keyAppId, defaultValue: '<TEST_APP_ID>');
       const String.fromEnvironment(keyAppId, defaultValue: 'c5d0c71ae90c4ce7933628dfbabd40d5');


    // return ""+appId;
  }

  /// Get the expected Channel ID
  String getChannelId() {
    return _overridedConfig[keyChannelId] ??
        // Allow pass a `token` as an environment variable with name `TEST_TOKEN` by using --dart-define
        const String.fromEnvironment(keyChannelId,
            defaultValue: '<TEST_CHANNEL_ID>');
    //  return channelId;
  }

  /// Get the expected Token
  String getToken() {
    return _overridedConfig[keyToken] ??
        // Allow pass a `channelId` as an environment variable with name `TEST_CHANNEL_ID` by using --dart-define
        const String.fromEnvironment(keyToken, defaultValue: '007eJxTYBDdGPvsjUdG/NTA3oUs1/rSf/xdc/Jh9TK3zzOdFws080grMCSbphgkmxsmploaJJskp5pbGhubGVmkpCUlJqWYGKSYvjLTTWsIZGRQSBFjYIRCEJ+LoSAzLz0lMb84s4KBAQCB/iKG');

    // return token;
  }

  /// Override the config(appId/channelId/token)
  void set(String name, String value) {
    _overridedConfig[name] = value;
  }
}
