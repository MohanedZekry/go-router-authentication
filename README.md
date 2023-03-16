# go_router Authentication

This is an example shows how to use go_router for authentication with BLoC as state management, The purpose of the go_router package is that it is A declarative routing package for Flutter that uses the Router API to provide a convenient, url-based API for navigating between different screens and reduce complexity, regardless of the platform you're targeting (mobile, web, desktop), You can define URL patterns, navigate using a URL, handle deep links, and a number of other navigation-related scenarios.

[go_router](https://pub.dev/packages/go_router) and [BLoC](https://pub.dev/packages/flutter_bloc)


## Table of Contents
- [Requirements](#requirements)
- [Intro](#intro)
- [Screenshots](#screenshots)
- [Implementation](#implementation)
- [Conclusion?](#conclusion)

## Requirements
- [bloc](https://pub.dev/packages/flutter_bloc) for state management
- [go_router](https://pub.dev/packages/go_router) for navigation
- [hive](https://pub.dev/packages/hive) as local storage
- [freezed](https://pub.dev/packages/freezed) using as code generation for immutable classes
- [dartz](https://pub.dev/packages/dartz) for functional programming

## Intro
This example is built using go_router 6.2.0.
Build authentication example with go_router.
Instead of using buildBody and currentIndex for routing, we’ll be using go router to navigate between screens.
