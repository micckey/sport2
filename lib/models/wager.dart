class Wager {
  final String assetImage;
  final String name;
  final String sport;
  final String club;
  final String date;
  final String opponent;
  final double ranking;
  final String oddType;
  final double oddValue;
  final String pointsType;
  final int pointValue;

  Wager({
    required this.assetImage,
    required this.name,
    required this.sport,
    required this.club,
    required this.date,
    required this.opponent,
    required this.ranking,
    required this.oddType,
    required this.oddValue,
    required this.pointsType,
    required this.pointValue,
  });
}
