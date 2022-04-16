import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:taxidriver/application/location/location_state.dart';
import 'package:taxidriver/application/pick_up/pick_up_event.dart';
import 'package:taxidriver/application/providers/location/location_provider.dart';
import 'package:taxidriver/application/providers/pick_ip/pick_up.provider.dart';

class PickUpForm extends HookConsumerWidget {
  PickUpForm({Key? key, this.isSlidedUp = false}) : super(key: key);
  final bool isSlidedUp;
  bool checked = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickUpController = ref.watch(pickUpProvider.notifier);
    final pickUpState = ref.watch(pickUpProvider);
    final locationState = ref.watch(locationProvider);
    ref.listen<LocationState>(
      locationProvider,
      (prevLocationState, nextLocationState) {
        if (nextLocationState.locationData != null) {
          if (checked == false) {
            checked = true;
            pickUpController.mapEventToState(
              PickUpEvent.nearbyLocationsRequested(
                  nextLocationState.locationData!.latitude!,
                  nextLocationState.locationData!.longitude!),
            );
            pickUpController.mapEventToState(
              PickUpEvent.reverseGecodingFromMapRequested(
                nextLocationState.locationData!.latitude!,
                nextLocationState.locationData!.longitude!,
              ),
            );
          }
        }
      },
    );

    Widget pickUpContent = Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Where To ?',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                            ),
                          ),
                          10.h.verticalSpace,
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: pickUpState.reverseGeocodingResult
                                  ?.results[0].formattedAdress,
                            ),
                            onChanged: (query) {
                              if (query != null && query.isNotEmpty) {
                                pickUpController.mapEventToState(
                                  PickUpEvent.nearbyQueryChanged(
                                      query,
                                      locationState.locationData!.latitude!,
                                      locationState.locationData!.longitude!),
                                );
                              }
                            },
                          ),
                          Expanded(
                            child: pickUpState.isNearbyPlacesLoading
                                ? Shimmer.fromColors(
                                    child: ListView.builder(
                                      itemCount: 20,
                                      itemBuilder: ((context, index) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              width: double.infinity,
                                              height: 8.0,
                                              color: Colors.white,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2.0),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 8.0,
                                              color: Colors.white,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2.0),
                                            ),
                                            Container(
                                              width: 40.0,
                                              height: 8.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        );
                                      }),
                                    ),
                                    baseColor: Colors.grey.shade300,
                                    highlightColor: Colors.grey.shade100,
                                  )
                                : ListView.builder(
                                    itemCount: pickUpState.places.length,
                                    itemBuilder: ((context, index) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                          bottom: 5.h,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              pickUpState.places[index].name,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                            Text(
                                              pickUpState
                                                  .places[index].vicinity,
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14.sp,
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    }),
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
    return isSlidedUp
        ? MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: pickUpContent,
          )
        : pickUpContent;
  }
}
