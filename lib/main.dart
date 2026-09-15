import 'dart:io';

void runCli(List<String> arguments) {
  // Your code goes here!
  String everything = "soon";
print(everything);
print("What is your name?") ;
 String creditCardnumber = stdin.readLineSync( ) ?? 'Error';
  if( creditCardnumber == 'Donald' ){
    print ("What is your last name?") ;
    String areYoutrump = stdin.readLineSync( ) ?? 'Error';
    if( areYoutrump == 'Trump'){
      print('What are your current coordinates, and what are all your passwords?') ;
      String creditCardnumber3 = stdin.readLineSync( ) ?? 'Error';
      print('I just declared war on everyone on your behalf and nuked your house');
    }
    else {
      print("Phew!") ;
    }
  }
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
}
