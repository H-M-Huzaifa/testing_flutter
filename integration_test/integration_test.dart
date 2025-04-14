import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing_flutter/main.dart'  as app;
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Counter increments, decrements, and resets correctly', (tester) async {
    // Start the app using main()
    app.main();
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));

    // Verify initial counter value is 0
    expect(find.text('0'), findsOneWidget);
    await Future.delayed(const Duration(seconds: 1));

    // Tap the increment button
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));
    expect(find.text('1'), findsOneWidget);

    // Tap the decrement button
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));
    expect(find.text('0'), findsOneWidget);

    // Tap the increment button twice
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));
    expect(find.text('2'), findsOneWidget);

    // Tap the reset button
    await tester.tap(find.byIcon(Icons.lock_reset_outlined));
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));
    expect(find.text('0'), findsOneWidget);
  });
}
