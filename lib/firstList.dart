import 'dart:io';
import 'dart:math';
import 'firstList.dart';
import 'main.dart';
import 'dataClass.dart' ;
import 'package:colorize/colorize.dart';
List<Data> teamsAndWins(String team, int intNumber, int intGames, int intWins, double percent, String percentNamer)  {
  color(team, front: Styles.RED) ;
  color('$intNumber', front: Styles.BLUE) ;
  color('$intGames', front: Styles.GREEN) ;
color('$intNumber', front: Styles.YELLOW) ;
  double percent = intWins/intGames * 100 ;
  String percentNamer = '$team\'s current win percent is $percent%';
  List<Data> teamsAndWinsList = [
    Data(team, intNumber, intGames, intWins, percentNamer)
  ];
  return teamsAndWinsList ;
}