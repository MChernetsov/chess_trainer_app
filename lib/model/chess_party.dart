class ChessParty {
  List<String> movesList;
  DateTime timeStarted;
  String partyInfo;
  ChessParty({
    this.movesList,
    this.timeStarted,
    this.partyInfo,
  });
}

ChessParty chessPartyGenerator(String text) {
  DateTime now = DateTime.now();
  return ChessParty(
      movesList: ["rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"],
      timeStarted: now,
      partyInfo: 'Сыграно в $now игроком');
}
