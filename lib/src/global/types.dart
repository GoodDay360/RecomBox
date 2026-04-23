enum Source {
  anime,
  movies,
  tv
}

extension SourceExtension on Source {
  String get label {
    switch (this) {
      case Source.anime:
        return "Anime";
      case Source.movies:
        return "Movies";
      case Source.tv:
        return "TV";
    }
  }

  static Source fromString(String source) {
    switch (source.toLowerCase()) {
      case "anime":
        return Source.anime;
      case "movies":
        return Source.movies;
      case "tv":
        return Source.tv;
      default:
        return Source.anime;
    }
  }
}