import 'package:dio/dio.dart';
import 'package:flutter_flicksy/feature/home/data/services/remote_movie_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group('RemoteMovieService', () {
    late MockDio mockDio;
    late RemoteMovieService service;

    setUp(() {
      mockDio = MockDio();
      service = RemoteMovieService(dio: mockDio);
    });

    test('fetchNowPlayingMovies', () async {
      when(
        () =>
            mockDio.get(any(), queryParameters: any(named: 'queryParameters')),
      ).thenAnswer(
        (_) async => Response(
          data: mockResponseData,
          statusCode: 200,
          requestOptions: RequestOptions(path: ''),
        ),
      );

      final result = await service.fetchNowPlayingMovies();

      expect(result?.results?.first.title, '쇼생크 탈출');
    });

    test('fetchPopularMovies', () async {
      when(
        () =>
            mockDio.get(any(), queryParameters: any(named: 'queryParameters')),
      ).thenAnswer(
        (_) async => Response(
          data: mockResponseData,
          statusCode: 200,
          requestOptions: RequestOptions(path: ''),
        ),
      );

      final result = await service.fetchPopularMovies();

      expect(result?.results?.first.title, '쇼생크 탈출');
    });

    test('fetchTopRatedMovies', () async {
      when(
        () =>
            mockDio.get(any(), queryParameters: any(named: 'queryParameters')),
      ).thenAnswer(
        (_) async => Response(
          data: mockResponseData,
          statusCode: 200,
          requestOptions: RequestOptions(path: ''),
        ),
      );

      final result = await service.fetchTopRatedMovies();

      expect(result?.results?.first.title, '쇼생크 탈출');
    });

    test('fetchUpcomingMovies', () async {
      when(
        () =>
            mockDio.get(any(), queryParameters: any(named: 'queryParameters')),
      ).thenAnswer(
        (_) async => Response(
          data: mockResponseData,
          statusCode: 200,
          requestOptions: RequestOptions(path: ''),
        ),
      );

      final result = await service.fetchUpcomingMovies();

      expect(result?.results?.first.title, '쇼생크 탈출');
    });

    test('fetchMovieDetail returns MovieDetailDto', () async {
      when(
        () =>
            mockDio.get(any(), queryParameters: any(named: 'queryParameters')),
      ).thenAnswer(
        (_) async => Response(
          data: mockDetailData,
          statusCode: 200,
          requestOptions: RequestOptions(path: ''),
        ),
      );

      final result = await service.fetchMovieDetail(278);

      expect(result?.id, mockDetailData['id']);
    });
  });
}

final mockDetailData = {
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
  "popularity": 0.7513,
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

final mockResponseData = {
  "page": 1,
  "results": [
    {
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
      "vote_count": 28268,
    },
    {
      "adult": false,
      "backdrop_path": "/tmU7GeKVybMWFButWEGl2M4GeiP.jpg",
      "genre_ids": [18, 80],
      "id": 238,
      "original_language": "en",
      "original_title": "The Godfather",
      "overview":
          "시실리에서 이민온 뒤, 정치권까지 영향력을 미치는 거물로 자리잡은 돈 꼴레오네는 갖가지 고민을 호소하는 사람들의 문제를 해결해주며 대부라 불리운다. 한편 솔로소라는 인물은 꼴레오네가와 라이벌인 탓타리아 패밀리와 손잡고 새로운 마약 사업을 제안한다. 돈 꼴레오네가 마약 사업에 참여하지 않기로 하자, 돈 꼴레오네를 저격해 그는 중상을 입고 사경을 헤매게 된다. 그 뒤, 돈 꼴레오네의 아들 소니는 조직력을 총 동원해 다른 패밀리들과 피를 부르는 전쟁을 시작하는데... 가족의 사업과 상관없이 대학에 진학한 뒤 인텔리로 지내왔던 막내 아들 마이클은 아버지가 총격을 당한 뒤, 아버지를 구하기 위해 위험천만한 협상 자리에 나선다.",
      "popularity": 76.1872,
      "poster_path": "/I1fkNd5CeJGv56mhrTDoOeMc2r.jpg",
      "release_date": "1972-03-14",
      "title": "대부",
      "video": false,
      "vote_average": 8.687,
      "vote_count": 21422,
    },
    {
      "adult": false,
      "backdrop_path": "/kGzFbGhp99zva6oZODW5atUtnqi.jpg",
      "genre_ids": [18, 80],
      "id": 240,
      "original_language": "en",
      "original_title": "The Godfather Part II",
      "overview":
          "아버지의 장례식 도중에 맏아들 파올로가 총에 맞아 죽고, 비토(로버트 드니로)는 겨우 도망쳐 미국으로 건너온다. 대부로 성장한 후 비토는 다시 치치오를 찾아 복수를 한다. 새롭게 등장한 젊은 대부 마이클(알 파치노)은 본거지를 라스베가스로 옮기고 가족의 사업을 가능한 합법적인 것으로 바꾸려고 애쓴다. 그런 과중 중에 자신을 제거하려는 음모를 알게되고 그는 냉혹하고 신속하게 반대파들을 제거, 조직을 더욱 확대해 나간다. 이를 위해 마이클은 배신한 형마저 죽이고, 일 때문에 아내와 헤어지는 등 인간적으로는 계속 외로워져 가는데...",
      "popularity": 14.3596,
      "poster_path": "/bhqvqYuAgrTGwyNAmMR0ZVmjXel.jpg",
      "release_date": "1974-12-20",
      "title": "대부 2",
      "video": false,
      "vote_average": 8.571,
      "vote_count": 12944,
    },
  ],
  "total_pages": 507,
  "total_results": 10131,
};
