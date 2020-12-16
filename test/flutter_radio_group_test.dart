import 'package:flutter/material.dart';
import 'package:flutter_radio_group/flutter_radio_group.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final titles = ["Test 1", "Test 2"];
  const MaterialApp app = MaterialApp(
      home: Scaffold(
          body: const FlutterRadioGroup(titles: ["Test 1", "Test 2"])));

  testWidgets('app should work', (tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(FlutterRadioGroup), findsOneWidget);
  });
}
