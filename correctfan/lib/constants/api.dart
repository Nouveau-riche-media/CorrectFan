var year = DateTime.now().year;
var month = DateTime.now().month;
var day = DateTime.now().day;

var today = DateTime(year, month, day).toString().substring(0, 10);
var tomorrow = DateTime(year, month, day + 1).toString().substring(0, 10);
var yesterday = DateTime(year, month, day - 1).toString().substring(0, 10);
var next = DateTime(year, month, day + 2).toString().substring(0, 10);

final todayUri =
    'https://api.sportsdata.io/v3/soccer/scores/json/GamesByDate/$today?key=7788832784ab47388f3326603d86427f';

final tomorrowUri =
    'https://api.sportsdata.io/v3/soccer/scores/json/GamesByDate/$tomorrow?key=7788832784ab47388f3326603d86427f';

final yesterdayUri =
    'https://api.sportsdata.io/v3/soccer/scores/json/GamesByDate/$yesterday?key=7788832784ab47388f3326603d86427f';

final nextUri =
    'https://api.sportsdata.io/v3/soccer/scores/json/GamesByDate/$next?key=7788832784ab47388f3326603d86427f';


final pLNews = 'http://api.espn.com/v1/sports/soccer/eng.1/news/headlines';