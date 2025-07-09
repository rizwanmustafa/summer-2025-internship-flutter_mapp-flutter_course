// ValueNotifier: This one holds the data
// ValueListenableBuilder: This one listens to the data. It will change according to the data
// Using the above things, we don't need setState

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier<int>(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(false);
