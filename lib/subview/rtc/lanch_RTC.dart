

import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:permission_handler/permission_handler.dart';

import 'RTC_main.dart';
import 'agora.config.dart';
import 'config_override.dart';
import 'index.dart';
import 'join_channel_video/join_channel_video.dart';


/**
 * 初始化界面
 * 
 * 
 */
class LanchRTC extends StatefulWidget {
  const LanchRTC({super.key});

  @override
  State<LanchRTC> createState() => _LanchRTCState();
}

class _LanchRTCState extends State<LanchRTC> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: RTC_main(),
         home: MyApp(), 
    );
  }
  }




final basic = [
  {'name': 'Basic'},
  // {'name': 'JoinChannelAudio', 'widget': const JoinChannelAudio()},
  {'name': 'JoinChannelVideo', 'widget': const JoinChannelVideo()},
  // {'name': 'StringUid', 'widget': const StringUid()}
];

const bool kIsWeb = bool.fromEnvironment('dart.library.js_util');
class MyApp extends StatefulWidget {
  /// Construct the [MyApp]
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
 class _MyAppState extends State<MyApp> {
  // final _data = [...basic, ...advanced];

  bool _showPerformanceOverlay = false;

  bool _isWebSetup = false;

  bool _isConfigInvalid() {
    // return  appId .isEmpty  ||
    //      token  .isEmpty ||
    //      channelId  .isEmpty;
        return  true;
  }

  @override
  void initState() {
    super.initState();

    _isWebSetup = !kIsWeb;

    _requestPermissionIfNeed();
  }

  Future<void> _requestPermissionIfNeed() async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      await [Permission.microphone, Permission.camera].request();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: _showPerformanceOverlay,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('APIExample'),
          actions: [
            ToggleButtons(
              color: Colors.grey[300],
              selectedColor: Colors.white,
              renderBorder: false,
              children: const [
                Icon(
                  Icons.data_thresholding_outlined,
                )
              ],
              isSelected: [_showPerformanceOverlay],
              onPressed: (index) {
                setState(() {
                  _showPerformanceOverlay = !_showPerformanceOverlay;
                });
              },
            )
          ],
        ),
        body: _body(),
      ),
    );
  }

  Widget _body() {
    if (!_isWebSetup) {
      return _WebSetupPage(setupCompleted: () {
        setState(() {
          _isWebSetup = true;
        });
      });
    }

    if (_isConfigInvalid()) {
      return const InvalidConfigWidget();
    }

return Center();
    // return ListView.builder(
    //   itemCount: _data.length,
    //   itemBuilder: (context, index) {
    //     return _data[index]['widget'] == null
    //         ? Ink(
    //             color: Colors.grey,
    //             child: ListTile(
    //               title: Text(_data[index]['name'] as String,
    //                   style:
    //                       const TextStyle(fontSize: 24, color: Colors.white)),
    //             ),
    //           )
    //         : ListTile(
    //             onTap: () {
    //               Navigator.push(context, MaterialPageRoute(builder: (context) {
    //                 Widget widget = Scaffold(
    //                   appBar: AppBar(
    //                     title: Text(_data[index]['name'] as String),
    //                     // ignore: prefer_const_literals_to_create_immutables
    //                     actions: [const LogActionWidget()],
    //                   ),
    //                   body: _data[index]['widget'] as Widget?,
    //                 );

    //                 if (!kIsWeb && Platform.isAndroid) {
    //                   widget = AndroidForegroundServiceWidget(child: widget);
    //                 }

    //                 return widget;
    //               }));
    //             },
    //             title: Text(
    //               _data[index]['name'] as String,
    //               style: const TextStyle(fontSize: 24, color: Colors.black),
    //             ),
    //           );
    //   },
    // );


  }
}

 

 
 

 class InvalidConfigWidget extends StatelessWidget {
  /// Construct the [InvalidConfigWidget]
  const InvalidConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Text(
          'Make sure you set the correct appId, token, channelId, etc.. in the lib/config/agora.config.dart file.'),
    );
  }
}




class _WebSetupPage extends StatefulWidget {
  const _WebSetupPage({Key? key, required this.setupCompleted})
      : super(key: key);

  final VoidCallback setupCompleted;

  @override
  State<_WebSetupPage> createState() => _WebSetupPageState();
}

class _WebSetupPageState extends State<_WebSetupPage> {
  late TextEditingController _appIdController;
  late TextEditingController _channelIdController;
  late TextEditingController _tokenController;

  bool _isValid = false;

  late final ExampleConfigOverride _configOverride;

  @override
  void initState() {
    super.initState();

    _configOverride = ExampleConfigOverride();

    _appIdController = TextEditingController(text: _configOverride.getAppId());
        // _appIdController = TextEditingController(text: "c5d0c71ae90c4ce7933628dfbabd40d5");
    _channelIdController = TextEditingController(text: _configOverride.getChannelId());
      //  _channelIdController = TextEditingController(text: "pingdaosix" );
    _tokenController = TextEditingController(text: _configOverride.getToken());
        // _tokenController = TextEditingController(text: "007eJxTYBDdGPvsjUdG/NTA3oUs1/rSf/xdc/Jh9TK3zzOdFws080grMCSbphgkmxsmploaJJskp5pbGhubGVmkpCUlJqWYGKSYvjLTTWsIZGRQSBFjYIRCEJ+LoSAzLz0lMb84s4KBAQCB/iKG" );

    _appIdController.addListener(_validCheck);
    _channelIdController.addListener(_validCheck);



 // 设置一个只执行一次的定时器，在1秒后执行逻辑
    _timer = Timer(Duration(seconds: 2), () {
      setState(() {
        print("-------------setState--------${_counter}---------------");
        _counter++;

                    //     _configOverride.set(keyAppId, "c5d0c71ae90c4ce7933628dfbabd40d5");
                    //   _configOverride.set(
                    //       keyChannelId, "pingdaosix");
                    //   _configOverride.set(keyToken, "007eJxTYBDdGPvsjUdG/NTA3oUs1/rSf/xdc/Jh9TK3zzOdFws080grMCSbphgkmxsmploaJJskp5pbGhubGVmkpCUlJqWYGKSYvjLTTWsIZGRQSBFjYIRCEJ+LoSAzLz0lMb84s4KBAQCB/iKG");

                    // //    _configOverride.set("TEST_APP_ID", "c5d0c71ae90c4ce7933628dfbabd40d5");
                    // //   _configOverride.set(
                    // //       "TEST_CHANNEL_ID", "pingdaosix");
                    // //  _configOverride.set("TEST_TOKEN", "007eJxTYBDdGPvsjUdG/NTA3oUs1/rSf/xdc/Jh9TK3zzOdFws080grMCSbphgkmxsmploaJJskp5pbGhubGVmkpCUlJqWYGKSYvjLTTWsIZGRQSBFjYIRCEJ+LoSAzLz0lMb84s4KBAQCB/iKG");



                    //   widget.setupCompleted();

      });
    });
    
  }


   int _counter = 0;
  Timer? _timer;

  // 创建一个定时器，每隔1秒执行一次
 

 

  // 定时器逻辑
  void _timerLogic() {
    setState(() {
      _counter++;
    });
  }

  void _validCheck() {
    _isValid = _appIdController.text.isNotEmpty &&
        _channelIdController.text.isNotEmpty;
    setState(() {
      print("--------_validCheck------------appId:${_appIdController}----------${_isValid}");
    });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: Column(
          children: [
            const Text('Input Your APP ID'),
            TextField(
              controller: _appIdController,
              decoration: const InputDecoration(
                labelText: 'APP ID can not be empty',
                // errorText: _appIdValidate ? "Value Can't Be Empty" : null,
              ),
            ),
            const Text('Input Your Channel ID'),
            TextField(
              controller: _channelIdController,
              decoration: const InputDecoration(
                labelText: 'Channel ID can not be empty',
                // errorText: _appIdValidate ? "Value Can't Be Empty" : null,
              ),
            ),
            const Text('Input Your Token (Optional)'),
            TextField(
              controller: _tokenController,
            ),
            ElevatedButton(
              onPressed: !_isValid
                  ? null
                  : () {
                      _configOverride.set(keyAppId, "c5d0c71ae90c4ce7933628dfbabd40d5");
                      _configOverride.set(
                          keyChannelId, "pingdaosix");
                      _configOverride.set(keyToken, "007eJxTYBDdGPvsjUdG/NTA3oUs1/rSf/xdc/Jh9TK3zzOdFws080grMCSbphgkmxsmploaJJskp5pbGhubGVmkpCUlJqWYGKSYvjLTTWsIZGRQSBFjYIRCEJ+LoSAzLz0lMb84s4KBAQCB/iKG");

                      widget.setupCompleted();
                    },
              child: const Text('Done'),
            ),

            Text("$_counter"),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {

        _timer?.cancel();

    _appIdController.dispose();
    _channelIdController.dispose();
    _tokenController.dispose();
    super.dispose();
  }
}