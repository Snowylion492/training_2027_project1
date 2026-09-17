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
  print('I can name some people for you!');
  List<String> people = [
    "Jackson, my creator",
    "Donald Trump",
    "Emma Stevens",
    "George Washington",
    "Uhh... Rick!",
  ];
  Map<String, String> peopleandhow = {
    "Jackson, my creator": "He made me",
    "Donald Trump":"Everyone knows him now!",
    "Emma Stevens" : "My creator likes her music",
    "George Washington": "He made the US",
    "Uhh... Rick!": "https://youtu.be/yvg5ZVwR-N4?si=8IXORpDwbKWTjfCR",
  };
  for(var j in people){
    print(people) ;
  }
  print('Oh wait, I know someone else!') ;
  people.add(creditCardnumber);
  print(people);
  print('That\'s ${people.length} people!') ;
  print('Do you want to know how I know them?') ;
  String yes = stdin.readLineSync() ?? "Error" ;
  if( yes == 'No'){
    print('Well too bad!');
    print(people[0]);
    print(peopleandhow["Jackson, my creator"]);
    print(people[1]);
    print(peopleandhow["Donald Trump"]);
    print(people[3]);
    print(peopleandhow["Emma Stevens"]);
    print(people[4]);
    print(peopleandhow["George Washington"]);
    print(people[5]);
    print(peopleandhow["Uhh... Rick!"]);
  }
  else{
    print('Ok, here!');
    print(people[0]);
    print(peopleandhow["Jackson, my creator"]);
    print(people[1]);
    print(peopleandhow["Donald Trump"]);
    print(people[3]);
    print(peopleandhow["Emma Stevens"]);
    print(people[4]);
    print(peopleandhow["George Washington"]);
    print(people[5]);
    print(peopleandhow["Uhh... Rick!"]);
  }
  print('Ok I\'m tired after all that. Goodbye!') ;
}
