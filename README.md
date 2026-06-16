# News App

A polished Flutter news reader built around NewsAPI.

The app starts with onboarding, moves into a curated home feed, supports category browsing, and opens the original article externally.

## Table of Contents

- [Overview](#overview)
- [What It Does](#what-it-does)
- [Highlights](#highlights)
- [Architecture](#architecture)
- [App Flow](#app-flow)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Screens and UX](#screens-and-ux)
- [Screenshots](#screenshots)
- [Setup](#setup)
- [Configuration](#configuration)
- [Build and Release](#build-and-release)
- [Testing](#testing)
- [Troubleshooting](#troubleshooting)
- [Roadmap](#roadmap)
- [License](#license)

## Overview

This project is a Flutter news application focused on fast browsing and a clean reading experience.

It keeps the core user journey short:

open the app, continue from onboarding, browse hot news or categories, then open the full story in a browser.

The codebase is split into shared app infrastructure and feature folders, which makes it easier to maintain and extend.

## What It Does

The app is designed to help users browse current news without overwhelming them with unnecessary screens.

It emphasizes:

- A clear starting experience.
- Fast access to top stories.
- Category-based discovery.
- Smooth image loading.
- External article opening for the source content.

The result is a lightweight reader-style app rather than a heavy content platform.

## Highlights

- Onboarding-first entry experience.
- Hot news and trending content on the home screen.
- Category-based browsing for faster discovery.
- External article opening via `url_launcher`.
- Smooth image loading with `cached_network_image` and `shimmer`.
- Dependency injection through `get_it`.
- State management with `flutter_bloc`.
- Declarative navigation with `GoRouter`.
- Network access through `dio`.

## Architecture

The project follows a lightweight clean architecture style.

The goal is not overengineering.

Instead, the structure is meant to keep responsibilities separated enough for real-world maintenance.

### Main layers

- Presentation layer for screens, widgets, and Cubits.
- Data layer for repositories and API access.
- Core layer for shared utilities, constants, failures, and helpers.

### Why this structure works well here

- UI remains focused on rendering and interaction.
- API logic stays inside repository and service code.
- Shared behavior is centralized in `core`.
- The app can grow without flattening everything into one folder.

### Main packages in use

- `GoRouter` handles navigation.
- `flutter_bloc` manages screen state.
- `get_it` provides dependency injection.
- `dio` handles API communication.
- `NewsAPI` is the data source.

## App Flow

1. Launch the app.
2. Reach the onboarding screen.
3. Tap Get Started to enter the home feed.
4. Browse hot news or pick a category.
5. Open the original article in the external browser.

The flow is intentionally short and easy to follow.

## Tech Stack

- Flutter
- Dart
- NewsAPI
- Dio
- Bloc / Cubit
- GoRouter
- GetIt
- url_launcher
- cached_network_image
- shimmer

## Project Structure

```text
lib/
  main.dart                  # App entry point
  core/
    constants/               # Constants such as API keys
    exceptions/              # Error handling
    failures/                # Failure models
    functions/               # Helper functions
    services/                # Shared services
    utils/                   # Router and utility files
    widgets/                 # App shell and shared widgets
  features/
    onboarding/              # Entry/onboarding screen
    home/                    # Home screen, news feeds, and categories
```

## Screens and UX

### Onboarding

The onboarding screen is the entry point of the app.

It introduces the app and directs the user into the main experience with a single action.

### Home screen

The home screen is where most of the browsing happens.

It contains a mix of hot news, trending items, and category shortcuts.

### Category view

Each category opens its own news feed.

This keeps the browsing experience focused and helps users move directly to a topic of interest.

### Article opening

Articles are opened externally.

That keeps the app simple and avoids building and maintaining a separate in-app article reader.

## Screenshots

The project already includes screenshots in `assets/screenshots/`.

The gallery is organized visually so the README stays readable instead of turning into a filename catalog.

The images are presented as grouped app states rather than as a repetitive file list.

### Visual Groups

- Group 1: onboarding and entry flow.
- Group 2: home feed and hot news browsing.
- Group 3: category-based discovery.
- Group 4: loading states and card presentation.
- Group 5: alternate views captured from the same app flow.

### Gallery

<table>
  <tr>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14.jpeg" width="220" alt="Onboarding and home screen 1"></td>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%281%29.jpeg" width="220" alt="Onboarding and home screen 2"></td>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%282%29.jpeg" width="220" alt="Onboarding and home screen 3"></td>
  </tr>
  <tr>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%283%29.jpeg" width="220" alt="Feed and categories 1"></td>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%284%29.jpeg" width="220" alt="Feed and categories 2"></td>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%285%29.jpeg" width="220" alt="Feed and categories 3"></td>
  </tr>
  <tr>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%286%29.jpeg" width="220" alt="Loading states 1"></td>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%287%29.jpeg" width="220" alt="Loading states 2"></td>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%288%29.jpeg" width="220" alt="Loading states 3"></td>
  </tr>
  <tr>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%289%29.jpeg" width="220" alt="Trending and cards 1"></td>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%2810%29.jpeg" width="220" alt="Trending and cards 2"></td>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%2811%29.jpeg" width="220" alt="Trending and cards 3"></td>
  </tr>
  <tr>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%2812%29.jpeg" width="220" alt="More screens 1"></td>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%2813%29.jpeg" width="220" alt="More screens 2"></td>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%2814%29.jpeg" width="220" alt="More screens 3"></td>
  </tr>
  <tr>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.14.14%20%2815%29.jpeg" width="220" alt="More screens 4"></td>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.17.02.jpeg" width="220" alt="Final screens 1"></td>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.17.02%20%281%29.jpeg" width="220" alt="Final screens 2"></td>
  </tr>
  <tr>
    <td><img src="assets/screenshots/WhatsApp%20Image%202026-06-17%20at%2000.17.02%20%282%29.jpeg" width="220" alt="Final screens 3"></td>
    <td></td>
    <td></td>
  </tr>
</table>

### Screenshot Notes

If you want to label each screenshot more precisely later, rename the files inside `assets/screenshots/` and add short captions below each row.

The current setup is still useful because it documents the actual captures already present in the repository without repeating filenames in the body text.

## Setup

### Prerequisites

- Flutter SDK compatible with `sdk: ^3.12.0`
- Android Studio or VS Code with the Flutter extension
- A valid NewsAPI account and API key

### Install dependencies

```bash
flutter pub get
```

### Run locally

```bash
flutter run
```

### Optional device selection

```bash
flutter devices
flutter run -d <device_id>
```

## Configuration

### NewsAPI key

The project currently uses a NewsAPI key in `lib/core/constants/api_consts.dart`.

Replace it with your own key if you are running the app in a different environment.

### Assets

The project already declares image assets under `assets/images/`.

The screenshots are stored separately in `assets/screenshots/` and are referenced directly from the README.

### Routing

Navigation is handled with `GoRouter`.

The app currently includes routes for:

- Onboarding screen.
- Home screen.
- Category screen.

### Dependency injection

`get_it` is used to register shared dependencies.

That keeps initialization in one place and avoids wiring services manually throughout the app.

## Build and Release

### Android release build

```bash
flutter build apk
```

### iOS release build

```bash
flutter build ios
```

### Web build

```bash
flutter build web
```

### Desktop builds

The project includes desktop folders as part of the Flutter scaffold.

If you enable the target platform in your environment, you can build the corresponding desktop app as well.

## Testing

### Unit and widget tests

```bash
flutter test
```

### Notes on current test coverage

The repository does not appear to include a large test suite yet.

That means the best validation today is to run the app and inspect the main flows manually.

### Suggested future tests

- Repository data fetching tests.
- Cubit state transition tests.
- Router behavior tests.
- Widget tests for the onboarding and home screens.

## Troubleshooting

### App does not start

- Verify that Flutter is installed correctly.
- Run `flutter doctor`.
- Make sure dependencies are fetched with `flutter pub get`.

### News data does not load

- Check the API key in `lib/core/constants/api_consts.dart`.
- Confirm the device has an internet connection.
- Make sure NewsAPI is reachable from your current network.

### Images do not appear

- Confirm the paths under `assets/images/` are still valid.
- Confirm the screenshots still exist under `assets/screenshots/`.
- Rebuild the app after changing assets.

### Navigation does not behave as expected

- Check the route definitions in the router file.
- Verify the correct extra data is passed when opening category pages.
- Ensure the app is initialized through the main app shell.

## Roadmap

The app can be extended in several useful directions.

### Possible next features

- In-app article details page.
- Search by keyword.
- Save favorites locally.
- Pull-to-refresh for feeds.
- Offline caching.
- Theme customization.
- Better category filtering.
- Share article support.
- Reading history.

### UX improvements worth adding

- More informative empty states.
- More skeleton loaders.
- Better screenshots labeling.
- A dedicated about page.
- A settings page for app preferences.

### Engineering improvements worth adding

- More tests.
- Better API error handling.
- Environment-based key management.
- Cleaner data models.
- Documentation for contributors.

## Credits

- Flutter team for the framework.
- NewsAPI for the content source.
- The packages used in this app for making the implementation compact and readable.

## License

This project is intended for learning and personal development.

Update this section if you plan to publish it as open source.
