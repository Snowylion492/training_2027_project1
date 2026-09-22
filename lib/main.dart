import 'dart:io';
import 'dart:math' ;
Map<String,int> teamsAndWins(String team, int wins) {
  Map<String, int> teamsAndWinsMap = {
    team: wins
  };
  return teamsAndWinsMap ;
}
// function, { user input, user input, add to teamsAndWinsMap, print what I just did}
Map<String, int> addingTeams(String addedTeam, int newWins) {
  Map<String, int> teamsAndWinsMap = {
  addedTeam: newWins
  };
  return teamsAndWinsMap ;
}
void areYouDone(Map<String, int> teamsAndWinsMap) {
  print('Are you done? Say \'yes\' exactly if yes. If you want to see all data, say \'see list\'') ;
  String done = stdin.readLineSync() ?? 'No';
  if(done.toLowerCase() == 'yes') {
    print('Ok, goodbye!') ;
    exit(0) ;
  }
  else if(done.toLowerCase() == 'see list') {
print('$teamsAndWinsMap') ;
  }
  else{
    print('What is the team?') ;
    String team = stdin.readLineSync() ?? 'Error' ;
    print('How many wins') ;
    String wins = stdin.readLineSync() ?? 'Error' ;
    int intWins = int.tryParse(wins) ?? 35505;
    teamsAndWinsMap[team] = intWins ;
    print('$team, ${teamsAndWinsMap[team]}');
  }
}
void runCli(List<String> arguments) {
  // Your code goes here!
  // team, matches won
  print('What is the team?');
  String team = stdin.readLineSync() ?? 'Error';
  print('How many wins');
  String wins = stdin.readLineSync() ?? 'Error';
  int intWins = int.tryParse(wins) ?? 35505;
  Map<String, int> teamsAndWinsMap = teamsAndWins(team, intWins);
  print('$team, ${teamsAndWinsMap[team]}');
  int y = 0;
  for(y = 0; y == 0; ) {
    areYouDone(teamsAndWinsMap);
  }
}
