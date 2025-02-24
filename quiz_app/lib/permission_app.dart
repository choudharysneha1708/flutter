import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PermissionApp extends StatelessWidget {
  const PermissionApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PermissionScreen(),
    );
  }
}

class PermissionScreen extends StatelessWidget {
  const PermissionScreen({super.key});

  Future<void> requestCameraPermission() async {
    PermissionStatus status = await Permission.camera.request();
    if (status == PermissionStatus.granted) {
      Fluttertoast.showToast(msg: "Permission Granted!");
    } else if (status == PermissionStatus.denied) {
      Fluttertoast.showToast(msg: "Permission Denied!");
    } else if (status == PermissionStatus.permanentlyDenied) {
      Fluttertoast.showToast(msg: "Permission Permanently Denied!");
      openAppSettings();
    }
  }

  Future<void> requestMicrophonePermission() async {
    PermissionStatus status = await Permission.microphone.request();
    if (status == PermissionStatus.granted) {
      Fluttertoast.showToast(msg: "Permission Granted!");
    } else if (status == PermissionStatus.denied) {
      Fluttertoast.showToast(msg: "Permission Denied!");
    } else if (status == PermissionStatus.permanentlyDenied) {
      Fluttertoast.showToast(msg: "Permission Permanently Denied!");
      openAppSettings();
    }
  }

  Future<void> requestLocationPermission() async {
    PermissionStatus status = await Permission.location.request();
    if (status == PermissionStatus.granted) {
      Fluttertoast.showToast(msg: "Permission Granted!");
    } else if (status == PermissionStatus.denied) {
      Fluttertoast.showToast(msg: "Permission Denied!");
    } else if (status == PermissionStatus.permanentlyDenied) {
      Fluttertoast.showToast(msg: "Permission Permanently Denied!");
      openAppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Permission App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: requestCameraPermission,
                child: const Text("Camera Access")),
            ElevatedButton(
                onPressed: requestMicrophonePermission,
                child: const Text("Microphone Access")),
            ElevatedButton(
                onPressed: requestLocationPermission,
                child: const Text("Location Access")),
          ],
        ),
      ),
    );
  }
}
