import 'dart:io';
import 'dart:math';
import 'firstList.dart';
import 'areYouDone.dart';
import 'dataClass.dart' ;
import 'package:colorize/colorize.dart';
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
    color(team, front: Styles.RED) ;
    color('$intNumber', front: Styles.BLUE) ;
    color(teamRanking, front: Styles.GREEN) ;
    color('$intNumber', front: Styles.YELLOW) ;
    Colorize coloredTeam = Colorize('${j.typeValueA}') ;
    Colorize coloredIntNumber = Colorize('${j.typeValueB}') ;
    Colorize coloredTeamRanking = Colorize('${j.typeValueC}') ;
    Colorize coloredIntWins = Colorize('${j.typeValueD}') ;
    print(coloredTeam.red().toString() + ', ' + coloredIntNumber.blue().toString() + ', ' + coloredTeamRanking.green().toString() + ', ' + coloredIntWins.yellow().toString() + '.') ;
  }
  int y = 0;
  for(y = 0; y == 0; ) {
    areYouDone(teamsAndWinsList);
  }
}