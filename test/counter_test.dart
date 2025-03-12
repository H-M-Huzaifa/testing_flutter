import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter/counter.dart';

void main(){
  late Counter counter;

  setUp((){
    counter=Counter();
  });

  group("Counter class -", (){
    //1
    //given, when, then (arrange,act,assert)
    test("Given: in Counter class at instantiation, count should be 0",(){
      //arrange
      //counter.count;

      //Act
      final val=counter.count;

      //assert
      expect(val, 0);
    },);


    //2
    test("when increment counter is called, the value of the counter should be incremented to 1", (){
      //arrange
      //counter.count;
      //act
      counter.incrementCounter();
      final val=counter.count;
      //assert
      expect(val, 1);
    });

    //3
    test("when decrement counter is called, the value of the counter should be decremented to -1", (){
      //arrange
      //counter.count;
      //act
      counter.decrementCounter();
      final val=counter.count;
      //assert
      expect(val, -1);
    });

    //4
    test("when reset is called, value of counter should be set to 0", (){
      //arrange
      final Counter counter=Counter();
      //act
      counter.resetCounter();
      final val=counter.count;
      //assert
      expect(val, 0);
    });


  });
}