// screen sizes
import 'package:flutter/cupertino.dart';

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}


// divider

Widget dividerH20() {
  return const SizedBox(height: 20);
}

Widget dividerH10() {
  return const SizedBox(height: 10);
}

Widget dividerH5() {
  return const SizedBox(height: 5);
}


Widget dividerW10() {
  return const SizedBox(width: 10);
}

Widget dividerW5() {
  return const SizedBox(width: 5);
}

Widget dividerW20() {
  return const SizedBox(width: 20);
}

// padding size
EdgeInsets commonPaddingAll10 = const EdgeInsets.all(10);
EdgeInsets commonPaddingAll20 = const EdgeInsets.all(20);
EdgeInsets commonPaddingAll30 = const EdgeInsets.all(30);
