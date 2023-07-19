int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = 0;
  int teamBPoints = 0;

  teamA.forEach((key, value) {
    if (key == 'Free throws') {
      teamAPoints += value;
    } else if (key == '2 pointer') {
      teamAPoints += value * 2;
    } else if (key == '3 pointer') {
      teamAPoints += value * 3;
    }
  });

  teamB.forEach((key, value) {
    if (key == 'Free throws') {
      teamBPoints += value;
    } else if (key == '2 pointer') {
      teamBPoints += value * 2;
    } else if (key == '3 pointer') {
      teamBPoints += value * 3;
    }
  });

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
