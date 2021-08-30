class PlayerModel {
  static dynamic position  = 'lB';
  static dynamic minutesPlayed  = 'lB';
  static dynamic goals  = 'lB';
  static dynamic assists  = 'lB';
  static dynamic matchesPlayed  = 'lB';
  static dynamic saves = 'lB';

  final String name;
  final String club;

  PlayerModel({
    required this.name,
    required this.club, 
  }); 
}