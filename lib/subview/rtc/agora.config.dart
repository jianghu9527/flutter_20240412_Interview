 

import 'config_override.dart';

/// Get your own App ID at https://dashboard.agora.io/
String get appId {
  // You can directly edit this code to return the appId you want.

  // ExampleConfigOverride.appId="";
  
  print("---------------------ExampleConfigOverride------------appId:${ExampleConfigOverride().getAppId()}");
    // return ExampleConfigOverride().getAppId();
    return "c5d0c71ae90c4ce7933628dfbabd40d5";
}

/// Please refer to https://docs.agora.io/en/Agora%20Platform/token
String get token {
  // You can directly edit this code to return the token you want.
  return "007eJxTYBDdGPvsjUdG/NTA3oUs1/rSf/xdc/Jh9TK3zzOdFws080grMCSbphgkmxsmploaJJskp5pbGhubGVmkpCUlJqWYGKSYvjLTTWsIZGRQSBFjYIRCEJ+LoSAzLz0lMb84s4KBAQCB/iKG";
// return ExampleConfigOverride().getToken();
}

/// Your channel ID
String get channelId {
  // You can directly edit this code to return the channel ID you want.
  return "pingdaosix";
    // return ExampleConfigOverride().getChannelId();
}

/// Your int user ID
const int uid = 0;

/// Your user ID for the screen sharing
const int screenSharingUid = 10;

/// Your string user ID
const String stringUid = '0';

String get musicCenterAppId {
  // Allow pass a `token` as an environment variable with name `TEST_TOKEN` by using --dart-define
  return const String.fromEnvironment('MUSIC_CENTER_APPID',
      defaultValue: '<MUSIC_CENTER_APPID>');
}
