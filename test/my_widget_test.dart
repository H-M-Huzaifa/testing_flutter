import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter/main.dart';

void main(){
  testWidgets("description", (tester) async{
    await tester.pumpWidget(
        const MaterialApp(home: MyHomePage(title: "Testing"))
    );


    final ctr =find.text("0");
    expect(ctr, findsOneWidget);

    final ctr2 =find.text("2");
    expect(ctr2, findsNothing);

    final incrementBtn=find.byTooltip("Increment");
    await tester.tap(incrementBtn);

    //this works whenever setstate is called in UI
    await tester.pump();

    final ctr3 =find.text("1");
    expect(ctr3, findsOneWidget);

    final ctr4 =find.text("0");
    expect(ctr4, findsNothing);


    //now for finding appbar
    expect(find.byType(AppBar), findsOneWidget);

  },);
}