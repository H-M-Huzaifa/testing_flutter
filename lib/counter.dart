class Counter{

  int _counter=0;

  int get count=>_counter;

  void incrementCounter(){
    _counter++;
  }

  void decrementCounter(){
    _counter--;
  }

  void resetCounter(){
    _counter=0;
  }
}