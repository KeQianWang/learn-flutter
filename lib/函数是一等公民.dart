main(List<String> args){

  bool isEvnentNumber(int n ){
    if(n % 2==0){
      return true;
    }
    return false;
  }
  
  printNUmber(int n ){
    for(var i=1;i<n;i++){
      if(isEvnentNumber(i)){
        print(i);
      }
    }
  }
  printNUmber(10);

}



