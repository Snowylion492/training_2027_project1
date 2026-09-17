import 'dart:io';
import 'dart:math' ;
void runCli(List<String> arguments) {
  // Your code goes here!
  String everything = "soon";
print(everything);
print("What is your name?") ;
 String creditCardnumber = stdin.readLineSync( ) ?? 'Error';
 print("What is your favorite song?") ;
  String creditCardnumber2 = stdin.readLineSync( ) ?? 'Error';
  print('Who wrote it?') ;
  String isItswift = stdin.readLineSync( ) ?? 'Error';
  if ( isItswift == 'Taylor Swift') {
    print('Yeah no I hate her');
  }
  else if (isItswift == 'The Stupendium' || isItswift == 'Emma Stevens'){
    print('Peak music taste');
  }
  else {
    print(
        '$creditCardnumber. That\'s really your name? Whatever. I guess your favorite song is $creditCardnumber2 too. Who cares?');
  }
  print('I can name some people for you!');
  List<String> people = [
    "Jackson, my creator",
  ];
  var i = 0 ;
  while(i != 100)  {
    i = Random().nextInt(200) ;
    print('Not 100');
  }
  print('100!');
  var z = 0 ;
  print('How many times can I count to 10?') ;
  for(z=0; z<15; z++ ) {
    if(z< 7){
      print('1, 2, 3, 4, 5, 6, 7, 8, 9, 10') ;
    }
    else{
      print('1, 2, 3, 3, huff, 4, 5, 6, 6, 6, huff, 7, 8, 9, 10! Huff, that\'s hard!') ;
    }
  }
  print('Ok I\'m tired after all that. Goodbye!') ;
}
