class WebtoonEpisodeModel {
  final String title, id, rating, date;

  WebtoonEpisodeModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        id = json['id'],
        date = json['date'],
        rating = json['rating'];
}
