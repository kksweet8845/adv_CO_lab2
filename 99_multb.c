void _start(){
  volatile int i, j;
  volatile int result;

  for(i=1;i<10;i++){
    for(j=1;j<10;j++){
      result = i*j;
    }
  }
}