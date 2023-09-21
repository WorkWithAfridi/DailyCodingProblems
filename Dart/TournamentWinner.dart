// Problem : Tournament Winner from AlgoExpert

void main(List<String> args) {
  List<List<String>> competitions = [
    ["HTML", "C#"],
    ["C#", "Python"],
    ["Python", "HTML"],
  ];
  // Home - Away
  // 0 means away won
  // 1 means home won

  List<int> scores = [0, 0, 1];

  Map<String, int> teamScores = {};

  for (int x = 0; x < scores.length; x++) {
    int currentScore = scores[x];
    List<String> currentTeams = competitions[x];
    if (currentScore == 0) {
      String team = currentTeams[1];
      incrementTeamScore(teamScores, team);
    } else {
      String team = currentTeams[0];
      incrementTeamScore(teamScores, team);
    }
  }

  String maxScoredTeam = "";
  int maxScore = 0;
  teamScores.forEach((key, value) {
    if (maxScore < value) {
      maxScore = value;
      maxScoredTeam = key;
    }
  });

  print("Max scored team: ${maxScoredTeam}. Max score: ${maxScore}");
}

void incrementTeamScore(Map<String, int> teamScores, String team) {
  int? score = teamScores[team];
  if (score == null) {
    teamScores.addAll({team: 1});
  } else {
    score++;
    teamScores[team] = score;
  }
}
