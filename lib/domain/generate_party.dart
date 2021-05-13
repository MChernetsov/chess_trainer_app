import 'package:chess_trainer_app/model/chess_position.dart';
import 'package:chess_trainer_app/model/chess_party.dart';
import 'package:chess_trainer_app/model/chess_figure.dart';

ChessPosition GenerateParty(bool ISPlayerWhiteSide) {
  ChessParty chessParty = new ChessParty();
  var startingChessBoard;
  if (ISPlayerWhiteSide) {
    startingChessBoard = [
      [
        'BR',
        'BN',
        'BB',
        'BQ',
        'BK',
        'BB',
        'BN',
        'BR',
      ],
      [
        'BP',
        'BP',
        'BP',
        'BP',
        'BP',
        'BP',
        'BP',
        'BP',
      ],
      [
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
      ],
      [
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
      ],
      [
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
      ],
      [
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
      ],
      [
        'WP',
        'WP',
        'WP',
        'WP',
        'WP',
        'WP',
        'WP',
        'WP',
      ],
      [
        'WR',
        'WN',
        'WB',
        'WQ',
        'WK',
        'WB',
        'WN',
        'WR',
      ],
    ];
  } else {
    startingChessBoard = [
      [
        'WR',
        'WN',
        'WB',
        'WQ',
        'WK',
        'WB',
        'WN',
        'WR',
      ],
      [
        'WP',
        'WP',
        'WP',
        'WP',
        'WP',
        'WP',
        'WP',
        'WP',
      ],
      [
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
      ],
      [
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
      ],
      [
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
      ],
      [
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
      ],
      [
        'BP',
        'BP',
        'BP',
        'BP',
        'BP',
        'BP',
        'BP',
        'BP',
      ],
      [
        'BR',
        'BN',
        'BB',
        'BQ',
        'BK',
        'BB',
        'BN',
        'BR',
      ],
    ];
  }
  ChessPosition startingPosition = new ChessPosition()
    ..halfturn = 1
    ..chessBoard = startingChessBoard;

  for (var i = 0; i < 8; i++) {
    for (var j = 0; j < 8; j++) {
      if (startingPosition.chessBoard[i][j] != null) {
        ChessFigure generationFigure = new ChessFigure()
          ..name = startingPosition.chessBoard[i][j]
          ..X = j
          ..Y = i;
        startingPosition.figures.add(generationFigure);
      }
    }
  }

  chessParty.timeStarted = DateTime.now();
  chessParty.movesList.add(startingPosition);
}
