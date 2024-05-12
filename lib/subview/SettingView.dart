import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:package_info/package_info.dart';

/**
 * 设置界面
 */
class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  File? _imageFile;
  Future<void> getLostData() async {
    print("-------------getLostData---------查照片--------");
    final ImagePicker picker = ImagePicker();
    final LostDataResponse response = await picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }

    final List<XFile> images = await picker.pickMultiImage();

    picker.pickImage(source: ImageSource.gallery).then((pickedFile) {
      if (pickedFile != null) {
        setState(() {
          _imageFile = File(pickedFile.path);

          print("---------------------有大量照片--------_imageFile---------" +
              pickedFile.path);
        });
      }
    });

    final List<XFile>? files = response.files;
    if (files != null) {
      // _handleLostFiles(files);
      print("-----------有照片");

      setState(() {});
    }

    final List<XFile>? filesew = response.files;
    if (filesew != null) {
      // _handleLostFiles(files);
      print("-----------有照片");
      setState(() {
        // _imageFile = File(pickedFile.path);
        _imageFile = File(filesew.first.path);
      });
    } else {
      // _handleError(response.exception);
      print("-------------无照片");
    }
  }

  Future<String?> getPhoneVersion() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return androidInfo.version.release;
  }

  Future<String?> getPscksgrInfor() async {
    PackageInfo deviceInfo = await PackageInfo.fromPlatform();
    var veroins = deviceInfo.version;
    print("------------------version:${veroins}------");
    var mappName = deviceInfo.appName;
    print("------------------mappName:${mappName}------");
    var mpackageName = deviceInfo.packageName;
    print("------------------mpackageName:${mpackageName}------");
    return mpackageName;
  }

  void mainPhoneVersion() async {
    String? phoneVersion = await getPhoneVersion();
    print('-----------------Phone version: $phoneVersion');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("设置本地数据"),
        TextButton(
            onPressed: () {
              print('----------------------Phone version: $mainPhoneVersion()');
              getPscksgrInfor();
            },
            child: Text("设置")),
        ElevatedButton(
            onPressed: () {
              getLostData();
            },
            child: Text("获取照片1")),

        OutlinedButton(
          onPressed: () {
            // 处理点击事件
            print('--------------Outlined Button Clicked!');

            Fluttertoast.showToast(
                msg: "OutlinedButton",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);

            getLostData();
          },
          child: Text('Outlined 按钮'),
        ),

        //  Image.file(_imageFile),

        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                // 处理点击事件
                print('--------------------------------Button 1 Clicked!');
              },
              child: Text('Button 1'),
            ),
            TextButton(
              onPressed: () {
                // 处理点击事件
                print('--------------------------------Button 2 Clicked!');
              },
              child: Text('Button 2'),
            ),
          ],
        ),
      ],
    );
  }
}
