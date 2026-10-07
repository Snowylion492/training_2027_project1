import 'dart:io';
import 'dart:math';
import 'firstList.dart';
import 'main.dart';
import 'dataClass.dart';
import 'package:colorize/colorize.dart';
void areYouDone(List<Data> teamsAndWinsList) {
  print('Are you done? Say \'yes\' exactly if yes. If you want to see all data, say \'see list\'') ;
  String done = stdin.readLineSync() ?? 'No';
  if(done.toLowerCase() == 'yes') {
    print('Ok, goodbye!') ;
    exit(0) ;
  }

  else if(done.toLowerCase() == 'see list') {
    for (Data j in teamsAndWinsList) {

      Colorize coloredTeam = Colorize(j.typeValueA) ;
      Colorize coloredIntNumber = Colorize('${j.typeValueB}') ;
      Colorize coloredTeamRanking = Colorize('${j.typeValueC}') ;
      Colorize coloredIntWins = Colorize('${j.typeValueD}') ;
      print(coloredTeam.red().toString() + coloredIntNumber.blue().toString() + coloredTeamRanking.green().toString() + coloredIntWins.yellow().toString()) ;
      print(j.typeValueE) ;
    }
  }
  else{
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
    String percentNamer = '$team\'s current win percent is $percent';
    teamsAndWinsList.add(Data(team, intNumber, intGames, intWins, percentNamer));
    for (Data j in teamsAndWinsList) {
      color(team, front: Styles.RED) ;
      color('$intNumber', front: Styles.BLUE) ;
      color('$intGames', front: Styles.GREEN) ;
      color('$intWins', front: Styles.YELLOW) ;
      double percent = intWins/intGames * 100 ;
      String percentNamer = '$team\'s current win percent is $percent%';
      Colorize coloredTeam = Colorize(j.typeValueA) ;
      Colorize coloredIntNumber = Colorize('${j.typeValueB}') ;
      Colorize coloredTeamGames = Colorize('${j.typeValueC}') ;
      Colorize coloredIntWins = Colorize('${j.typeValueD}') ;
      print('${coloredTeam.red()}, ${coloredIntNumber.blue()}, ${coloredTeamGames.green()}, ${coloredIntWins.yellow()}.') ;
      print(percentNamer) ;
    }
  }
}