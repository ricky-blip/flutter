import 'package:flutter/material.dart';
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
import 'roadmap/4_packages_flutter.dart/1.faker.dart';
import 'roadmap/4_packages_flutter.dart/2.date_format.dart';
import 'roadmap/4_packages_flutter.dart/3.convex_bottombar.dart';
import 'roadmap/4_packages_flutter.dart/4.avatar_glow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AvatarGlowPackage(),
    );
  }
}
