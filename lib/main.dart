import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_mobile/app/routes/auth_routers.dart';
import 'package:vakinha_burger_mobile/app/routes/splash_routers.dart';

void main() {
  runApp(const VakinhaBurgerMainApp());
}

class VakinhaBurgerMainApp extends StatefulWidget {
  const VakinhaBurgerMainApp({Key? key}) : super(key: key);

  @override
  _VakinhaBurgerMainAppState createState() => _VakinhaBurgerMainAppState();
}

class _VakinhaBurgerMainAppState extends State<VakinhaBurgerMainApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vakinha Burger',
      theme: VakinhaUi.theme,
      getPages: [
        ...SplashRouters.routers,
        ...AuthRouters.routers,
      ],
    );
  }
}
