function Goal(scorer, passer1, passer2) {
    var self = this;
    self.scorer = scorer;
    self_passer1 = passer1;
    self_passer2 = passer2;
}

function GameViewModel() {
	var self = this;

  self.homeTeamPlayers = [
    { player_name: "45 Tuukka Lammi", id: 1 },
    { player_name: "14 Kaapo Lammi", id: 2 },
    { player_name: "13 Harri Lammi", id: 3 }
  ];

  self.home_goals = ko.observableArray([
    new Goal(1, 2, 3),
    new Goal(3, 1, 2)
  ]);
}

ko.applyBindings(new GameViewModel());