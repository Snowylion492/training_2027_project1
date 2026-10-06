import 'dart:io';
import 'dart:math';
import 'firstList.dart';
import 'main.dart';
import 'dataClass.dart' ;
import 'package:colorize/colorize.dart';
List<Data> teamsAndWins(String team, int intNumber, String teamRanking, int intWins) {
  color(team, front: Styles.RED) ;
  color('$intNumber', front: Styles.BLUE) ;
  color(teamRanking, front: Styles.GREEN) ;
color('$intNumber', front: Styles.YELLOW) ;
  List<Data> teamsAndWinsList = [
    Data(team, intNumber, teamRanking, intWins)
  ];
  return teamsAndWinsList ;
}