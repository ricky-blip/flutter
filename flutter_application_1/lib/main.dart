import 'package:flutter/material.dart';
import 'package:flutter_application_1/roadmap/3_http_request/6.covid_API/1.summary.dart';
import 'package:flutter_application_1/roadmap/4_packages_flutter/5.intro_screen.dart';
import 'package:flutter_application_1/roadmap/4_packages_flutter/6.dropdown_search.dart';
import 'package:flutter_application_1/roadmap/4_packages_flutter/dropdown_API/indonesian_region.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/1.counter_app.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/10.0.route_management.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/10.1.route_page1.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/10.2.route_page2.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/10.3.route_page3.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/11.0.binding_builder.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/11.1binding_builder.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/12.class_bindings.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/13.0.get_storage1.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/13.1.get_storage2.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/2.snack_bar.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/3.dialog.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/4.bottom_sheet.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/5.state_manager_reactive.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/6.state_manager_simple.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/7.reactive_variable.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/9.0.dependency_management.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/controller/1.reactive_controller.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/8.workers.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_1.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_2.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_3.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_4.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_5.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_6.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_7.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_8.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_9.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_10.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_11.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_12.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_13.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_14.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_15.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_16.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_17.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_18.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_19.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_20.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_21.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_22.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_23.dart';
import 'roadmap/1_flutter_basic/exercise/exercise_24.dart';
import 'roadmap/2_stateless_stateful/0.increment_apps.dart';
import 'roadmap/2_stateless_stateful/1.dialog.dart';
import 'roadmap/2_stateless_stateful/2.snack_bar.dart';
import 'roadmap/2_stateless_stateful/3.text_field.dart';
import 'roadmap/2_stateless_stateful/4.tab_bar.dart';
import 'roadmap/2_stateless_stateful/5.dropdown.dart';
import 'roadmap/2_stateless_stateful/6.bottom_navigation_bar.dart';
import 'roadmap/2_stateless_stateful/7.bottom_sheet.dart';
import 'roadmap/2_stateless_stateful/8.drawer.dart';
import 'roadmap/2_stateless_stateful/9.navigation.dart';
import 'roadmap/3_http_request/0.http_get.dart';
import 'roadmap/3_http_request/1.http_post.dart';
import 'roadmap/3_http_request/2.http_patch.dart';
import 'roadmap/3_http_request/3.http_delete.dart';
import 'roadmap/3_http_request/4.http_future_builder.dart';
import 'roadmap/3_http_request/5.http_models.dart';
import 'roadmap/4_packages_flutter/1.faker.dart';
import 'roadmap/4_packages_flutter/2.date_format.dart';
import 'roadmap/4_packages_flutter/3.convex_bottombar.dart';
import 'roadmap/4_packages_flutter/4.avatar_glow.dart';
import 'roadmap/5_State_Management_GetX/controller/6.binding_builder_controller.dart';

void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPages(),
      getPages: [
        GetPage(name: "/homepages", page: () => HomePages()),
        GetPage(name: "/loginpages", page: () => LoginPages()),
      ],
      // getPages: [
      //   GetPage(
      //     name: "/Page2",
      //     page: () => Page2(),
      //     //access binding from ClassBindings
      //     binding: BindingsClass(),
      //     // binding: BindingsBuilder.put(() => BindingBuilderController()),
      //   ),
      // ],
      //NOTE Create Route here with NameRoute
      // routes: {
      //   "home": (p0) => RouteHome(),
      //   "pageOne": (p1) => RoutePAGE1(),
      //   "pageTwo": (p2) => RoutePAGE2(),
      //   "pageThree": (p3) => RoutePAGE3(),
      // },
      // getPages: [
      //   GetPage(name: "/home", page: () => RouteHome()),
      //   GetPage(name: "/pageOne", page: () => RoutePAGE1()),
      //   GetPage(name: "/pageTwo", page: () => RoutePAGE2()),
      //   GetPage(name: "/pageThree", page: () => RoutePAGE3()),
      // ],
    );
  }
}
