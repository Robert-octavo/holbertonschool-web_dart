int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = 0;
  int teamBPoints = 0;

  teamA.forEach((key, value) {
    if (key == 'Free throws') {
      teamAPoints += value;
    } else if (key == '2 pointers') {
      teamAPoints += value * 2;
    } else if (key == '3 pointers') {
      teamAPoints += value * 3;
    }
  });

  teamB.forEach((key, value) {
    if (key == 'Free throws') {
      teamBPoints += value;
    } else if (key == '2 pointers') {
      teamBPoints += value * 2;
    } else if (key == '3 pointers') {
      teamBPoints += value * 3;
    }
  });
  // print(teamAPoints);
  // print(teamBPoints);
  // print(teamAPoints > teamBPoints ? 'Team A wins' : 'Team B wins');
  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
