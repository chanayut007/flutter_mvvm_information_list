# flutter_information_list_mvvm_app

Flutter MVVM using Provider

## How to find Libraries
- [pub.dev](https://pub.dev/)

## Using Libraries
- [dio](https://pub.dev/packages/dio) : call api and interceptor
- [provider](https://pub.dev/packages/provider) : state management
- [json_serializable](https://pub.dev/packages/json_serializable) : Map Request Response API to Object
- [json_annotation](https://pub.dev/packages/json_annotation) : Use with [json_serializable](https://pub.dev/packages/json_serializable)
- [build_runner](https://pub.dev/packages/build_runner) : for build *.g.dart to map data from Response API

## Folder
- config : Config
- model : Model & Map Model Request & Response API
- network : Interceptor
- repository : For call API
- utils : Another Function to using in Project
- view : Presentation
- view_model : View Model

## Command using build_runner
* flutter pub run build_runner build --delete-conflicting-outputs

## Android Emulator cannot connect Wifi
- [Link ref](https://medium.com/@daydreamer_/how-to-fix-android-emulator-wi-fi-connected-with-no-internet-c62fd4ed652d)



