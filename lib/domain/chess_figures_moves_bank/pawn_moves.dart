import 'package:chess_trainer_app/model/chess_position.dart';
import 'package:chess_trainer_app/model/chess_party.dart';
import 'package:chess_trainer_app/model/chess_figure.dart';

List<List<int>> Pawnmoves(
  ChessPosition position,
  int x,
  int y,
) {
  var elpassantcheck = false;
  var color = position.chessBoard[x][y][0];
  var moves = [
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
  ];
  moves[x][y - 1] = 1; //добавляем любые возможные ходы;
  moves[x + 1][y - 1] = 2;
  moves[x - 1][y - 1] = 2; //только при условии наличия фигур;
  if (y == 6) {
    moves[x][5] = 1;
    moves[x][4] = 1;
  }
  for (var i = 0; i < 8; i++) {
    for (var j = 0; j < 8; j++) {
      if ((moves[i][j] == 1) & (position.chessBoard[i][j] != '')) {
        moves[i][j] = 0;
      }
      if ((moves[i][j] == 2) &
          ((position.chessBoard[i][j] == '') |
              (position.chessBoard[i][j][0] == color))) {
        moves[i][j] = 0;
      }
      if (moves[i][j] == 2) {
        moves[i][j] = 1;
      }
      if (moves[i][j] == 3) {
        moves[i][j] = 1;
      }
    }
    return moves;
  }
}
