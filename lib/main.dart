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
  print('What is the team\'s current games played?');
  int intNumber = int.tryParse(teamNumber) ?? 35505;
  String teamGames = stdin.readLineSync() ?? 'Error';
  print('How many wins do they have?');
  String wins = stdin.readLineSync() ?? 'Error';
  int intWins = int.tryParse(wins) ?? 35505;
  int intGames = int.tryParse(teamGames) ?? 35505;
  double percent = intWins/intGames * 100 ;
  String percentNamer = '$team\'s current win percent is $percent%';
  List<Data>  teamsAndWinsList = teamsAndWins(team, intNumber, intGames, intWins, percent, percentNamer);
  for (Data j in teamsAndWinsList) {
    color(team, front: Styles.RED) ;
    color('$intNumber', front: Styles.BLUE) ;
    color('$intGames', front: Styles.GREEN) ;
    color('$intWins', front: Styles.YELLOW) ;
    Colorize coloredTeam = Colorize(j.typeValueA) ;
    Colorize coloredIntNumber = Colorize('${j.typeValueB}') ;
    Colorize coloredTeamGames = Colorize('${j.typeValueC}') ;
    Colorize coloredIntWins = Colorize('${j.typeValueD}') ;
    print('${coloredTeam.red()}, ${coloredIntNumber.blue()}, ${coloredTeamGames.green()}, ${coloredIntWins.yellow()}.') ;
    print(j.typeValueE) ;
  }
  int y = 0;
  for(y = 0; y == 0; ) {
    areYouDone(teamsAndWinsList);
  }
}