class Timer{
  int sec = 0;
  int min = 0;
  int hour = 0;
  Timer(){
    Future.delayed(Duration(seconds: 1),(){
      if(sec >= 0 && sec <= 59){
        sec++;
      }
      if(sec > 59){
        sec = 0;
        min++;
      }
      if(min > 59){
        min = 0;
        hour ++;
      }
      Timer();
    });
  }

}
