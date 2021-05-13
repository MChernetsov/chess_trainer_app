import 'package:chess_trainer_app/model/chess_position.dart';

class ChessParty {
  List<ChessPosition> movesList;
  bool isWhiteMove = true;
  String transformToPGN() {
    return 'a';
  }

  DateTime timeStarted;
  String partyInfo;
}
