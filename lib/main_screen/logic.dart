import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_web/model/movie_item.dart';
import 'package:test_web/service/api_client.dart';
import 'package:test_web/service/api_constant.dart';
import 'package:test_web/service/base_response.dart';
import 'package:test_web/utils/colors.dart';

import 'state.dart';

class MainScreenLogic extends GetxController {
  final MainScreenState state = MainScreenState();

  onTabTapped(int index) {
    state.currentIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
    checkPlatform();
    callApiForFetchMovieData();
  }

  checkPlatform() {
    if (kIsWeb) {
      print("Is Web");
    } else if (Platform.isAndroid || Platform.isIOS) {
      print("Is Mobile");
    } else {
      print("other platform");
    }
  }

  callApiForFetchMovieData() async {
    try {
      ApiResponse? response =
          await ApiClient.instance.call(url: ApiConstant.loadMovie);
      if (response is DataResponse) {
        state.movieItem.value = (response.data['AllMovieDataList'] as List)
            .map((e) => MovieItem.fromJson(e))
            .toList();
      } else {
        print("dsfsdfsf $response");
      }
    } catch (e) {
      print(e);
    }
  }

  Widget commonWidget(MovieItem item) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                httpHeaders: const {
                  'Access-Control-Allow-Origin': '*',
                },
                imageUrl: "${item.ih}",
                height: Get.height / 4,
                fit: BoxFit.cover,
              )),
        ),
        Container(
          height: Get.height / 4,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [
                AppColors.heavyDark, // Adjust opacity as needed
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            margin: const EdgeInsets.all(12),
            child: Text(
              "${item.mn}",
              style: const TextStyle(color: AppColors.light),
              textAlign: TextAlign.left,
            ),
          ),
        )
      ],
    );
  }
}
