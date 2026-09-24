import 'dart:io';
List<Data> teamsAndWins(String team, int intNumber, String teamRanking, int intWins) {
  List<Data> teamsAndWinsList = [
    Data(team, intNumber, teamRanking, intWins)
  ];
  return teamsAndWinsList ;
}
void areYouDone(List<Data> teamsAndWinsList) {
  print('Are you done? Say \'yes\' exactly if yes. If you want to see all data, say \'see list\'') ;
  String done = stdin.readLineSync() ?? 'No';
  if(done.toLowerCase() == 'yes') {
    print('Ok, goodbye!') ;
    exit(0) ;
  }
  else if(done.toLowerCase() == 'see list') {
    print('$teamsAndWinsList') ;
  }
  else{
    print('What is the team\'s chosen name?');
    String team = stdin.readLineSync() ?? 'Error';
    print('What is the team\'s number?');
    String teamNumber = stdin.readLineSync() ?? 'Error';
    print('What is the team\'s current ranking?');
    int intNumber = int.tryParse(teamNumber) ?? 35505;
    String teamRanking = stdin.readLineSync() ?? 'Error';
    print('How many wins do they have?');
    String wins = stdin.readLineSync() ?? 'Error';
    int intWins = int.tryParse(wins) ?? 35505;
    teamsAndWinsList.add(Data(team, intNumber, teamRanking, intWins));
    print(teamsAndWinsList);
  }
}
class Data {
  String typeValueA ;
  int typeValueB;
  String typeValueC;
  int typeValueD;
  Data(this.typeValueA, this.typeValueB, this.typeValueC, this.typeValueD);
}
void runCli(List<String> arguments) {
  print('What is the team\'s chosen name?');
  String team = stdin.readLineSync() ?? 'Error';
  print('What is the team\'s number?');
  String teamNumber = stdin.readLineSync() ?? 'Error';
  print('What is the team\'s current ranking?');
  int intNumber = int.tryParse(teamNumber) ?? 35505;
  String teamRanking = stdin.readLineSync() ?? 'Error';
  print('How many wins do they have?');
  String wins = stdin.readLineSync() ?? 'Error';
  int intWins = int.tryParse(wins) ?? 35505;
List<Data> teamsAndWinsList= teamsAndWins(team, intNumber, teamRanking, intWins);
  print(teamsAndWinsList);
  int y = 0;
  while(y == 0) {
    areYouDone(teamsAndWinsList);
  }
}