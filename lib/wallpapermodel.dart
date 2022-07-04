class WallpaperModel {
  final String imageUrl;

  WallpaperModel(this.imageUrl);
}

var wallPaper = List.generate(
    100,
    ((index) =>
        "https://source.unsplash.com/random/1080x1920/?wallpapers/$index"));
