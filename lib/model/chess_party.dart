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

ChessParty chessPartyGenerator(String text, String fen) {
  DateTime now = DateTime.now();
  return ChessParty(
      movesList: [fen],
      timeStarted: now,
      partyInfo: 'Сыграно в $now игроком, название text');
}
