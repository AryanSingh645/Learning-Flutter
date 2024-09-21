// ignore_for_file: unused_import, prefer_const_constructors,avoid_print ,unused_local_variable, use_key_in_widget_constructors, use_build_context_synchronously, camel_case_types

import 'package:flutter/material.dart';
import 'Widgets/grid_view.dart';
import 'Widgets/snackbar.dart';
import 'Widgets/dismissible.dart';
import 'Widgets/drawer.dart';
import 'Widgets/alert.dart';
import 'Widgets/bottomsheet.dart';
import 'Widgets/animatedtext.dart';
import 'Widgets/bottomnav.dart';
import 'Widgets/dropdown.dart';
import 'Widgets/form.dart';
import 'Widgets/stack.dart';
import 'Widgets/tabbar.dart';
import 'Widgets/imagepicker.dart';
import 'Widgets/location.dart';

void main () => runApp(MaterialApp(
  theme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.deepPurple
  ),
  home: LocationWidget(),
));

