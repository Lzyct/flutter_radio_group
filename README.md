
# AnimatedSearchBar  [![pub package](https://img.shields.io/pub/v/flutter_radio_group.svg)](https://pub.dev/packages/flutter_radio_group) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)  [![Build Status](https://travis-ci.com/ukieTux/flutter_radio_group.svg?branch=main)](https://travis-ci.com/ukieTux/flutter_radio_group)
A Beautiful and Simple Radio Group widget for Flutter. It can be fully customized with label, titles, labelStyle, titleStyle, orientation, etc. It also maintains onChanged state.

  ## Getting Started
 In the `pubspec.yaml` of your flutter project, add the following dependency:
 ```yaml dependencies:
 flutter_radio_group: "^latest_version"
```
Import it:
 ```dart
 import'package:flutter_radio_group/flutter_radio_group.dart';
 ```

 ## Usage Examples
 ![Farmers Market Finder Demo](https://github.com/ukieTux/flutter_radio_group/blob/main/gifs/demo.gif)
 ```dart

 var _listHorizontal = ["Horizontal 1", "Horizontal 2", "Horizontal 3"];
 var _indexHorizontal = 0;

 FlutterRadioGroup(
                  titles: _listHorizontal,
                  labelStyle: TextStyle(color: Colors.white38),
                  labelVisible: true,
                  label: "This is label radio",
                  activeColor: Colors.blue,
                  titleStyle: TextStyle(fontSize: 14),
                  defaultSelected: _indexHorizontal,
                  orientation: RGOrientation.HORIZONTAL,
                  onChanged: (index) {
                    setState(() {
                      _indexHorizontal = index;
                    });
                  }),
```
  ## Available Parameters
| Param | isRequired |
|--|--|
| **RGOrientation** orientation (RGOrientation.VERTICAL) | No |
| **List<**String**>** titles | Yes |
| **TextStyle** titleStyle | No |
| **String** label | No |
| **TextStyle** labelStyle | No |
| **int** defaultSelected (0) | No |
| **bool** labelVisible (true) | No |
| **Color** activeColor (PrimaryColor) | No |
| **Function(int)** onChanged | No |

---
<h3 align="center">Buy me coffee if you love my works ☕️</h3> <p align="center">
  <a href="https://ko-fi.com/ukietux" target="_blank">
    <img src="https://help.ko-fi.com/system/photos/3604/0095/9793/logo_circle.png" alt="ko-fi" style="vertical-align:top; margin:8px" height="40">
  </a>&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="https://www.buymeacoffee.com/ukieTux" target="_blank">
    <img src="https://www.buymeacoffee.com/assets/img/guidelines/download-assets-sm-2.svg" alt="buymeacoffe" style="vertical-align:top; margin:8px" height="40">
  </a>&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="https://paypal.me/ukieTux" target="_blank">
    <img src="https://blog.zoom.us/wp-content/uploads/2019/08/paypal.png" alt="paypal" style="vertical-align:top; margin:8px" height="40">
</a> </p> <br><br>