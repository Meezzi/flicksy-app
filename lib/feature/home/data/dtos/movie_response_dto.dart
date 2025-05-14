class MovieResponseDto {
  final DateRangeDto dates;
  final int page;
  final List<MovieDto> results;
  final int totalPages;
  final int totalResults;

  MovieResponseDto({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  // API에서 기본값이 설정되지 않는 것만 기본값 설정
  factory MovieResponseDto.fromJson(Map<String, dynamic> json) {
    return MovieResponseDto(
      dates:
          json['dates'] != null
              ? DateRangeDto.fromJson(json['dates'])
              : DateRangeDto(minimum: '', maximum: ''),
      page: json['page'],
      results:
          (json['results'] as List<dynamic>?)
              ?.map((e) => MovieDto.fromJson(e))
              .toList() ??
          [],
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'results': results.map((e) => e.toJson()).toList(),
      'total_pages': totalPages,
      'total_results': totalResults,
    };
  }
}

class DateRangeDto {
  final String minimum;
  final String maximum;

  DateRangeDto({required this.minimum, required this.maximum});

  factory DateRangeDto.fromJson(Map<String, dynamic> json) {
    return DateRangeDto(minimum: json['minimum'], maximum: json['maximum']);
  }

  Map<String, dynamic> toJson() => {'minimum': minimum, 'maximum': maximum};
}

class MovieDto {
  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  MovieDto({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieDto.fromJson(Map<String, dynamic> json) {
    return MovieDto(
      adult: json['adult'],
      backdropPath: json['backdrop_path'] ?? '',
      genreIds: List<int>.from(json['genre_ids'] ?? []),
      id: json['id'],
      originalLanguage: json['original_language'] ?? '',
      originalTitle: json['original_title'] ?? '',
      overview: json['overview'] ?? '',
      popularity: json['popularity'],
      posterPath: json['poster_path'] ?? '',
      releaseDate: json['release_date'] ?? '',
      title: json['title'] ?? '',
      video: json['video'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdrop_path': backdropPath,
      'genre_ids': genreIds,
      'id': id,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }
}
