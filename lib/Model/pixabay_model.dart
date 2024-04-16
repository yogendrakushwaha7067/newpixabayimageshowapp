class PixabayImage {
  final dynamic id;
  final dynamic pageURL;
  final dynamic type;
  final dynamic tags;
  final dynamic previewURL;
  final dynamic previewWidth;
  final dynamic previewHeight;
  final dynamic webformatURL;
  final dynamic webformatWidth;
  final dynamic webformatHeight;
  final dynamic views;
  final dynamic downloads;
  final dynamic favorites;
  final dynamic likes;
  final dynamic comments;
  final dynamic user_id;
  final dynamic user;
  final dynamic userImageURL;
  final dynamic largeImageURL;
  final dynamic imageWidth;
  final dynamic imageHeight;
  final dynamic imageSize;
  final dynamic format;
  final dynamic duration;
  final dynamic userId;
  final dynamic typeValue;

  PixabayImage({
    required this.id,
    required this.pageURL,
    required this.type,
    required this.tags,
    required this.previewURL,
    required this.previewWidth,
    required this.previewHeight,
    required this.webformatURL,
    required this.webformatWidth,
    required this.webformatHeight,
    required this.views,
    required this.downloads,
    required this.favorites,
    required this.likes,
    required this.comments,
    required this.user_id,
    required this.user,
    required this.userImageURL,
    required this.largeImageURL,
    required this.imageWidth,
    required this.imageHeight,
    required this.imageSize,
    required this.format,
    required this.duration,
    required this.userId,
    required this.typeValue,
  });

  factory PixabayImage.fromJson(Map<String, dynamic> json) {
    return PixabayImage(
      id: json['id'],
      pageURL: json['pageURL'],
      type: json['type'],
      tags: json['tags'],
      previewURL: json['previewURL'],
      previewWidth: json['previewWidth'],
      previewHeight: json['previewHeight'],
      webformatURL: json['webformatURL'],
      webformatWidth: json['webformatWidth'],
      webformatHeight: json['webformatHeight'],
      views: json['views'],
      downloads: json['downloads'],
      favorites: json['favorites'],
      likes: json['likes'],
      comments: json['comments'],
      user_id: json['user_id'],
      user: json['user'],
      userImageURL: json['userImageURL'],
      largeImageURL: json['largeImageURL'],
      imageWidth: json['imageWidth'].toDouble(),
      imageHeight: json['imageHeight'].toDouble(),
      imageSize: json['imageSize'],
      format: json['format'],
      duration: json['duration'],
      userId: json['userId'],
      typeValue: json['typeValue'],
    );
  }
}