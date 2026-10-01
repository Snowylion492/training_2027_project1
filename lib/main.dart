import 'dart:io';
import 'dart:math';
import 'firstList.dart';
import 'areYouDone.dart';
import 'dataClass.dart';
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
  for (Data j in teamsAndWinsList) {
    print('${j.typeValueA}, ${j.typeValueB}, ${j.typeValueC}, ${j.typeValueD}.') ;
  }
  int y = 0;
  for(y = 0; y == 0; ) {
    areYouDone(teamsAndWinsList);
  }
}