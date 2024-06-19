class Images {
  final int imageId;
  final String imageAlt;
  final String imagePotraitpath;

  const Images({
    required this.imageId,
    required this.imageAlt,
    required this.imagePotraitpath,
  });

  factory Images.fromJson(Map<String, dynamic> json)=>Images(
   imageId: json["id"] as int,
   imageAlt: json["alt"] as String,
   imagePotraitpath: json["src"]["portrait"] as String,
  );

  Images.emptyConstructor({
     this.imageId = 0,
     this.imageAlt = '',
     this.imagePotraitpath = '',
  });
}