import 'package:flutter_flicksy/feature/home/data/dtos/movie_detail_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_flicksy/feature/home/data/dtos/movie_response_dto.dart';

void main() {
  group('MovieResponseDto', () {
    test('fromJson 테스트', () {
      final json = {
        "adult": false,
        "backdrop_path": "/kXfqcdQKsToO0OUXHcrrNCHDBzO.jpg",
        "genre_ids": [18, 80],
        "id": 278,
        "original_language": "en",
        "original_title": "The Shawshank Redemption",
        "overview":
            "촉망받는 은행 간부 앤디 듀프레인은 아내와 그녀의 정부를 살해했다는 누명을 쓴다. 주변의 증언과 살해 현장의 그럴듯한 증거들로 그는 종신형을 선고받고 악질범들만 수용한다는 지옥같은 교도소 쇼생크로 향한다. 인간 말종 쓰레기들만 모인 그곳에서 그는 이루 말할 수 없는 억압과 짐승보다 못한 취급을 당한다. 그러던 어느 날, 간수의 세금을 면제받게 해 준 덕분에 그는 일약 교도소의 비공식 회계사로 일하게 된다. 그 와중에 교도소 소장은 죄수들을 이리저리 부리면서 검은 돈을 긁어 모으고 앤디는 이 돈을 세탁하여 불려주면서 그의 돈을 관리하는데...",
        "popularity": 31.4774,
        "poster_path": "/oAt6OtpwYCdJI76AVtVKW1eorYx.jpg",
        "release_date": "1994-09-23",
        "title": "쇼생크 탈출",
        "video": false,
        "vote_average": 8.71,
        "vote_count": 28267,
      };

      final dto = MovieResponseDto.fromJson(json);

      expect(dto.id, 278);
      expect(dto.title, '쇼생크 탈출');
    });

    test('toJson 테스트', () {
      final dto = MovieResponseDto(id: 278, title: '쇼생크 탈출');

      final json = dto.toJson();

      expect(json['id'], 278);
      expect(json['title'], '쇼생크 탈출');
    });
  });

  group('MovieDetailDto', () {
    test('fromJson 테스트', () {
      final json = {
        "adult": false,
        "backdrop_path": "/viZs59bz8Iv78m0GJSQM0nusPzj.jpg",
        "belongs_to_collection": null,
        "budget": 0,
        "genres": [
          {"id": 80, "name": "범죄"},
          {"id": 18, "name": "드라마"},
        ],
        "homepage": "",
        "id": 10754,
        "imdb_id": "tt0095468",
        "origin_country": ["PL"],
        "original_language": "pl",
        "original_title": "Krótki film o zabijaniu",
        "overview":
            "바르샤바 특유의 회색빛 거리를 배회하며 방황하는 고독한 시골 청년 야체크는 자신의 최후의 무대를 연출할 사람을 찾아 나선다. 드디어 청년은 택시를 타고 도시의 외곽을 달린다. 그리고 이유없는 살인이 벌어지고 그는 곧 체포되어 재판에 회부된다. 한편 변호사 피토르는 변호사 시험에 합격한 후 첫 업무로 야체크를 위해 사형 폐지론을 주장하며 변론을 편다.",
        "popularity": 0.7632,
        "poster_path": "/2J9rVIsNrLZc9mQqACUr0oWowm.jpg",
        "production_companies": [
          {
            "id": 260086,
            "logo_path": null,
            "name": "Zespół Filmowy Tor",
            "origin_country": "PL",
          },
          {
            "id": 19356,
            "logo_path": "/9Ted1p5fSDVl12wJa3JgVagYNCr.png",
            "name": "PRF \"Zespoły Filmowe\"",
            "origin_country": "PL",
          },
        ],
        "production_countries": [
          {"iso_3166_1": "PL", "name": "Poland"},
        ],
        "release_date": "1988-03-11",
        "revenue": 0,
        "runtime": 85,
        "spoken_languages": [
          {"english_name": "Polish", "iso_639_1": "pl", "name": "Polski"},
        ],
        "status": "Released",
        "tagline": "",
        "title": "살인에 관한 짧은 필름",
        "video": false,
        "vote_average": 7.6,
        "vote_count": 363,
      };

      final dto = MovieDetailDto.fromJson(json);

      expect(dto.id, 278);
      expect(dto.title, '쇼생크 탈출');
    });

    test('toJson 테스트', () {
      final dto = MovieDetailDto(
        genres: [
          Genres(id: 80, name: "범죄"),
          Genres(id: 18, name: "드라마"),
        ],
        id: 10754,
        originCountry: ['PL'],
        originalTitle: 'Krótki film o zabijaniu',
        overview: '설명입니다.',
        popularity: 0.7632,
        posterPath: '/2J9rVIsNrLZc9mQqACUr0oWowm.jpg',
        productionCompanies: [
          ProductionCompany(id: 260086, name: "Zespół Filmowy Tor"),
        ],
        releaseDate: '1988-03-11',
        runtime: 85,
        status: 'Released',
        title: '살인에 관한 짧은 필름',
        voteAverage: 7.6,
        voteCount: 363,
      );

      final json = dto.toJson();

      expect(json['id'], 10754);
      expect(json['title'], '살인에 관한 짧은 필름');
      expect(json['genres'].length, 2);
    });
  });
}
