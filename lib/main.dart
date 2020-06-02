import 'dart:io' show Platform; //Alias para usar o Platform
import 'package:flutter/material.dart';
import 'package:flutterimc/ui/android/material-app.dart';
import 'package:flutterimc/ui/ios/cupertino-app.dart';

// Usando Platform, pode-se verificar qual sistema operacional está sendo executado
void main() => 
  Platform.isIOS ? runApp(MyCupertinoApp()) : runApp(MyMaterialApp());