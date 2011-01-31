size(500, 500);
background(#B7740F);
stroke(0);
int boardSize = 9;
int goMargin = 50;
int firstCoord = goMargin;
int guessedLastCoord = (width - goMargin);
int goPixels = (int) ((guessedLastCoord - firstCoord) / (boardSize - 1));
int stoneRadius = (goPixels - 1);
int coord2pixel(x) {
  return (firstCoord + ((x - 1) * goPixels))
}
int lastCoord = coord2pixel(boardSize);
void drawBoard() {
  for (int i = 1; (i <= boardSize); (i ++)) {
    int pix = coord2pixel(i);
    line(firstCoord, pix, lastCoord, pix);
    line(pix, firstCoord, pix, lastCoord);
  }
}
void drawStone(x, y) {
  ellipse(coord2pixel(x), coord2pixel(y), stoneRadius, stoneRadius);
}
void addBlack(x, y) {
  fill(0);
  drawStone(x, y);
}
void addWhite(x, y) {
  fill(255);
  drawStone(x, y);
};
drawBoard();
addBlack(3, 4);
addWhite(6, 6);