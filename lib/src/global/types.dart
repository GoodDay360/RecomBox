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
        return "TV"; // special case so it’s not just "Tv"
    }
  }
}