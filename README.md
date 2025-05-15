# 🎬 Flicksy

TMDB API를 기반으로 한 Flutter 영화 앱 **Flicksy**는 현재 상영 중, 인기 영화, 평점 높은 영화, 개봉 예정 영화 정보를 가져와 사용자에게 제공합니다. 영화 상세 페이지에서는 포스터, 개요, 장르, 흥행 정보, 제작사 로고 등을 확인할 수 있습니다.

<br>

## 🚀 주요 기능

- 🔍 TMDB 영화 데이터 연동
- 🏗 클린 아키텍처 기반 구조
- 🔄 당겨서 새로고침(Pull to refresh)
- 🎯 Riverpod을 활용한 상태 관리
- 🧩 영화 상세 페이지에서 다양한 정보 제공
- 📦 .env 파일을 통한 API 키 관리

<br>

## 📱 스크린샷

| 홈 화면 | 상세 페이지 |
|---------|-------------|
| <img src="https://github.com/user-attachments/assets/b747bc20-f43b-4c71-8423-15bedecae1f8" width="300" height="600"/> | <img src="https://github.com/user-attachments/assets/dea871a2-f966-4bc9-ab78-dd4921ad5b4e" width="300" height="600"/> |

<br>

## 🧱 프로젝트 구조
```
lib/
├── feature/                      # 기능 단위로 나눈 구조
│   └── home/                     # '홈' 도메인의 모든 코드
│       ├── core/                 # 홈 기능에 한정된 공통 상수/도구
│       │   ├── constants/        # 포스터 URL 등
│       │   │   └── poster_base_url.dart
│       │
│       ├── data/                 # 외부 데이터 소스 (API, Provider 등)
│       │   ├── dtos/             # TMDB API 응답 모델 정의
│       │   ├── providers/        # 데이터 계층의 Provider
│       │   ├── repositories/     # 데이터 구현체 (Repository Impl)
│       │   └── services/         # TMDB API 호출 서비스
│       │
│       ├── domain/               # 비즈니스 로직 계층
│       │   ├── entities/         # 핵심 Entity 정의
│       │   ├── providers/        # 유스케이스 Provider
│       │   ├── repositories/     # 추상화된 Repository 인터페이스
│       │   └── usecases/         # UseCase 클래스
│       │
│       └── presentation/         # UI 및 상태 관리 계층
│           ├── detail/           # 영화 상세 화면
│           │   ├── widgets/      # 상세 화면용 위젯
│           │   └── detail_page.dart
│           │
│           ├── home/             # 홈 화면
│           │   └──  widgets/     # 홈 UI 구성 위젯
│           │
│           ├── providers/        # ViewModel Provider 정의
│           └── viewmodels/       # ViewModel 정의
│
└── main.dart                     # 앱 진입점
```

<br>

## 🔧 기술 스택

### 프레임워크 및 언어
- Flutter SDK ^3.7.2
- Dart SDK ^3.7.2

### 주요 패키지
- **상태 관리**: flutter_riverpod ^2.6.1
- **네트워크**: dio ^5.8.0+1
- **환경 설정**: flutter_dotenv ^5.2.1
- **테스트**: mocktail ^1.0.4
