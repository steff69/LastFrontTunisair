import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tunisair_master/main.dart';  // Import the main application
import 'package:tunisair_master/pages/welcome_page.dart';  // Import the WelcomePage directly if needed

void main() {
  testWidgets('WelcomePage initial state and interactions', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(MyApp());

    // Verify initial state
    expect(find.text('Welcome to the App'), findsOneWidget); // Example text
    expect(find.byIcon(Icons.home), findsOneWidget); // Example icon

    // If there are buttons or other interactive widgets
    // Example: Check if a button exists and can be tapped
    final Finder buttonFinder = find.byType(ElevatedButton); // Example button type
    expect(buttonFinder, findsOneWidget);

    // Tap the button and verify state change
    await tester.tap(buttonFinder);
    await tester.pump(); // Rebuild the widget after the tap

    // Check expected outcome after interaction
    expect(find.text('Next Page'), findsOneWidget); // Example outcome
  });
}
