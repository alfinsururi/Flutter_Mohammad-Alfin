import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_tugas/home_page.dart';

void main() {
  testWidgets('UI Test for HomePage', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    expect(find.text('Contacts'), findsOneWidget);
    expect(find.byIcon(Icons.account_box), findsOneWidget);
    expect(find.text('Create New Contacts'), findsOneWidget);
    expect(find.text('A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.byType(ElevatedButton), findsNWidgets(2));
    expect(find.text('Kontak masih kosong'), findsOneWidget);

    await tester.enterText(find.byType(TextField).first, 'John Doe');
    await tester.enterText(find.byType(TextField).last, '1234567890');
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('1234567890'), findsOneWidget);

    await tester.tap(find.text('Submit'));
    await tester.pump();
    expect(find.text('John Doe'), findsNWidgets(2)); 

    await tester.tap(find.byIcon(Icons.edit).first);
    await tester.pump();
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('1234567890'), findsOneWidget);

    await tester.enterText(find.byType(TextField).first, 'Jane Smith');
    await tester.enterText(find.byType(TextField).last, '9876543210');
    await tester.tap(find.text('Update'));
    await tester.pump();
    expect(find.text('Jane Smith'), findsOneWidget);
    expect(find.text('9876543210'), findsOneWidget);
  });
}
