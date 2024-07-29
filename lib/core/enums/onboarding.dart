



import 'package:shoppe/core/constants/app_contants.dart';

enum Onboarding {
  onboarding1,
  onboarding2,
  lastStep,
}
extension OnboardingExt on Onboarding {
  String get title {
    switch (this) {
      case Onboarding.onboarding1:
        return "Search Restaurants";
      case Onboarding.onboarding2:
        return "Choose favorite dishes!";
      case Onboarding.lastStep:
        return "Get your food";
    }
  }

  String get description {
    switch (this) {
      case Onboarding.onboarding1:
        return "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or ";
      case Onboarding.onboarding2:
        return "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or ";
      case Onboarding.lastStep:
        return "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or ";
    }
  }

  String get textButton {
    switch (this) {
      case Onboarding.onboarding1:
        return "Next";
      case Onboarding.onboarding2:
        return "Next ";
      case Onboarding.lastStep:
        return "Get started";
    }
  }

 static String getDescription({int currentIndexPage = 0}) {
    if (currentIndexPage == AppConstants.step0) {
      return Onboarding.onboarding1.description;
    }
    if (currentIndexPage == AppConstants.step1) {
      return Onboarding.onboarding2.description;
    }
    return Onboarding.lastStep.description;
  }
static  String getTitle({int currentIndexPage = 0}) {
    if (currentIndexPage == AppConstants.step0) {
      return Onboarding.onboarding1.title;
    }
    if (currentIndexPage == AppConstants.step1) {
      return Onboarding.onboarding2.title;
    }
    return Onboarding.lastStep.title;
  }
static  String getTextButton({int currentIndexPage = 0}) {
    if (currentIndexPage == AppConstants.step0) {
      return Onboarding.onboarding1.textButton;
    }
    if (currentIndexPage == AppConstants.step1) {
      return Onboarding.onboarding2.textButton;
    }
    return Onboarding.lastStep.textButton;
  }
}
