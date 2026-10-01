import 'dart:io';
import 'dart:math';
import 'firstList.dart';
import 'main.dart';
import 'dataClass.dart' ;
List<Data> teamsAndWins(String team, int intNumber, String teamRanking, int intWins) {
  List<Data> teamsAndWinsList = [
    Data(team, intNumber, teamRanking, intWins)
  ];
  return teamsAndWinsList ;
}