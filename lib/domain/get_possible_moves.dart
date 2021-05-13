import 'package:chess_trainer_app/model/chess_position.dart';
import 'package:chess_trainer_app/model/chess_figure.dart';

List<List<int>> GetPossibleMoves(ChessPosition chessPosition, int a, int b) {
  ChessFigure moveFigure = ChessFigure();
  chessPosition.figures.forEach((figure) {
    if (figure.X == a && figure.Y == b) {
      moveFigure = figure;
    }
  });
  var possibleMoves;
  switch (moveFigure.name[1]) {
    case 'P':
    case 'R':
    case 'N':
    case 'B':
    case 'K':
    case 'Q':
    default:
      try {} catch (e) {
        var errorcause = moveFigure.name;
        print('Ошибка попала в вентиллятор: $errorcause');
        print(e);
      }
  }
}
