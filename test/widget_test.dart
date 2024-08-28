import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tunisair_master/main.dart';  // Correct import for main.dart
import 'package:tunisair_master/pages/welcome_page.dart';  // Correct import for welcome_page.dart

void main() {
  testWidgets('WelcomePage initial state and interactions', (WidgetTester tester) async {
    // Build the MyApp widget
    await tester.pumpWidget(const MyApp());

    // Verify initial state
    expect(find.text('Welcome to the App'), findsOneWidget); // Verify the initial text is present
    expect(find.byIcon(Icons.home), findsOneWidget); // Verify the home icon is present

    // Check if the button exists and can be tapped
    final Finder buttonFinder = find.byType(ElevatedButton); // Find the button
    expect(buttonFinder, findsOneWidget); // Ensure the button is found

    // Tap the button and trigger a state change
    await tester.tap(buttonFinder);
    await tester.pump(); // Rebuild the widget after the tap

    // Check the expected outcome after interaction
    expect(find.text('Next Page'), findsOneWidget); // Verify that the "Next Page" text appears
  });
}
