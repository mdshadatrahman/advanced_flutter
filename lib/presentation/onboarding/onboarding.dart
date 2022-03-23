import 'package:advanced_flutter/presentation/resources/assets_manager.dart';
import 'package:advanced_flutter/presentation/resources/color_manager.dart';
import 'package:advanced_flutter/presentation/resources/string_manager.dart';
import 'package:advanced_flutter/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderData();
  PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  List<SliderObject> _getSliderData() => [
        SliderObject(
          AppStrings.onBoardingSubTitle1,
          AppStrings.onBoardingSubTitle1,
          ImageAssets.onBoardingLogo1,
        ),
        SliderObject(
          AppStrings.onBoardingSubTitle2,
          AppStrings.onBoardingSubTitle2,
          ImageAssets.onBoardingLogo2,
        ),
        SliderObject(
          AppStrings.onBoardingSubTitle3,
          AppStrings.onBoardingSubTitle3,
          ImageAssets.onBoardingLogo3,
        ),
        SliderObject(
          AppStrings.onBoardingSubTitle4,
          AppStrings.onBoardingSubTitle4,
          ImageAssets.onBoardingLogo4,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        elevation: AppSize.s1_5,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: PageView.builder(
          itemCount: _list.length,
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return OnBoardingPage(_list[index]);
          }),
      bottomSheet: Container(
        color: ColorManager.white,
        height: AppSize.s100,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  AppStrings.skip,
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  SliderObject _sliderObject;
  OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: AppSize.s40),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        SizedBox(height: AppSize.s60),
        SvgPicture.asset(_sliderObject.image),
      ],
    );
  }
}

class SliderObject {
  String title;
  String subtitle;
  String image;
  SliderObject(this.title, this.subtitle, this.image);
}
