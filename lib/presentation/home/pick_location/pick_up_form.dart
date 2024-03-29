import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:taxidriver/application/location/location_state.dart';
import 'package:taxidriver/application/pick_up/pick_up_event.dart';
import 'package:taxidriver/application/pick_up/pick_up_state.dart';
import 'package:taxidriver/application/providers/location/location_provider.dart';
import 'package:taxidriver/application/providers/pick_ip/pick_up.provider.dart';
import 'package:taxidriver/presentation/home/pick_location/widgets/schedule_button.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/colors.dart';

class PickUpForm extends HookConsumerWidget {
  PickUpForm({
    Key? key,
    this.isSlidedUp = true,
    required this.panelController,
  }) : super(key: key);
  final bool isSlidedUp;
  final PanelController panelController;
  final queryController = TextEditingController();

  bool checked = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickUpController = ref.watch(pickUpProvider.notifier);
    final pickUpState = ref.watch(pickUpProvider);
    final locationState = ref.watch(locationProvider);
    final isPanelOpen = useState<bool>(false);

    ref.listen<PickUpState>(pickUpProvider, (previous, next) {
      if (isPanelOpen.value != next.pickUpFompIsOpen) {
        isPanelOpen.value = next.pickUpFompIsOpen;
      }
    });
    ref.listen<LocationState>(
      locationProvider,
      (prevLocationState, nextLocationState) {
        if (nextLocationState.position != null) {
          if (checked == false) {
            checked = true;
            pickUpController.mapEventToState(
              PickUpEvent.userLocationDetected(
                nextLocationState.position!.latitude,
                nextLocationState.position!.longitude,
              ),
            );
          }
        }
      },
    );

    Widget pickUpContent = Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: Column(
          children: [
            Expanded(
              child: !pickUpState.dropOffChosen || !pickUpState.pickUpChosen
                  ? Stack(
                      children: [
                        Positioned.fill(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    !pickUpState.dropOffChosen
                                        ? 'Où aller ?'
                                        : 'Où êtes-vous ?',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                  ScheduleButton(
                                      pickUpState: pickUpState,
                                      pickUpController: pickUpController),
                                ],
                              ),
                              10.h.verticalSpace,
                              Row(
                                children: [
                                  Expanded(
                                    child: isPanelOpen.value ||
                                            pickUpState
                                                    .reverseGeocodingResult ==
                                                null ||
                                            pickUpState.reverseGeocodingResult!
                                                .results.isEmpty
                                        ? TextFormField(
                                            controller: queryController,
                                            decoration: InputDecoration(
                                              hintText: pickUpState
                                                  .reverseGeocodingResult
                                                  ?.results[0]
                                                  .formattedAdress,
                                            ),
                                            onChanged: (query) {
                                              panelController.open();
                                              isPanelOpen.value = true;
                                              if (query.isNotEmpty) {
                                                pickUpController
                                                    .mapEventToState(
                                                  PickUpEvent
                                                      .nearbyQueryChanged(
                                                    query,
                                                    locationState
                                                        .position!.latitude,
                                                    locationState
                                                        .position!.longitude,
                                                  ),
                                                );
                                              }
                                            },
                                          )
                                        : pickUpState.isGeocodingFromMapLoaidng
                                            ? Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              )
                                            : ListTile(
                                                onTap: () {
                                                  panelController.open();
                                                  isPanelOpen.value = true;
                                                },
                                                leading: Icon(
                                                  Icons.place,
                                                  color: kPrimaryColor,
                                                ),
                                                title: Text(
                                                  pickUpState
                                                      .reverseGeocodingResult!
                                                      .results
                                                      .first
                                                      .formattedAdress,
                                                  maxLines: 2,
                                                ),
                                              ),
                                  ),
                                  5.w.horizontalSpace,
                                  if (pickUpState.dropOffChosen)
                                    TextButton(
                                      onPressed: () {
                                        pickUpController.mapEventToState(
                                          PickUpEvent
                                              .pickUpChosenFormUserLocation(
                                            locationState.position!.latitude,
                                            locationState.position!.longitude,
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Skip',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              10.h.verticalSpace,
                              if (!isPanelOpen.value)
                                AnimatedContainer(
                                  duration: Duration(
                                    milliseconds: 500,
                                  ),
                                  width: double.maxFinite,
                                  child: SubmitButton(
                                    text: !pickUpState.dropOffChosen
                                        ? 'Confirmer le point de destination'
                                        : 'Confirmer le point de retrait',
                                    onPressed: () {
                                      if (!pickUpState.dropOffChosen) {
                                        pickUpController.mapEventToState(
                                          PickUpEvent.dropOffChosenFromMap(),
                                        );
                                      } else if (!pickUpState.pickUpChosen) {
                                        pickUpController.mapEventToState(
                                          PickUpEvent.pickUpChosenFormMap(),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              if (isPanelOpen.value)
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
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 2.0),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    height: 8.0,
                                                    color: Colors.white,
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
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
                                            final pickedPlace =
                                                pickUpState.places[index];
                                            final locationName =
                                                pickedPlace.name;
                                            final locationVicinity =
                                                pickedPlace.vicinity;
                                            final locationGeometry =
                                                pickedPlace.geometry;

                                            return ListTile(
                                              onTap: () {
                                                queryController.text =
                                                    locationName;
                                                panelController.close();
                                                isPanelOpen.value = false;

                                                pickUpController
                                                    .mapEventToState(
                                                  PickUpEvent
                                                      .cameraMustMoveToRequsted(
                                                    locationGeometry
                                                        .location.lat,
                                                    locationGeometry
                                                        .location.lng,
                                                  ),
                                                );
                                                panelController.close();
                                              },
                                              title: Text(
                                                locationName,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.sp,
                                                ),
                                              ),
                                              subtitle: Text(
                                                locationVicinity,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            );
                                          }),
                                        ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            pickUpState.loadingRideDetails
                                ? CircularProgressIndicator()
                                : Text(
                                    '${pickUpState.ride?.googelMatrix.rows.first.elements.first.distance.text}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                            ScheduleButton(
                              pickUpState: pickUpState,
                              pickUpController: pickUpController,
                            ),
                          ],
                        ),
                        10.h.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Départ:',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: 0.5.sw,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(pickUpState.pickupPlace!.vicinity)
                                ],
                              ),
                            ),
                          ],
                        ),
                        10.h.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Destination:',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: 0.5.sw,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    pickUpState.dropoffPlace!.vicinity,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        20.h.verticalSpace,
                        if (pickUpState.ride != null)
                          SizedBox(
                            width: double.maxFinite,
                            child: SubmitButton(
                              isLoading: pickUpState.nearbyDrivers.isEmpty,
                              text: 'Allons y!',
                              loadingText: 'Aucun chauffeur à proximité',
                              onPressed: () {
                                AutoRouter.of(context).push(
                                  BookingPageRoute(
                                    ride: pickUpState.ride!,
                                    driverId:
                                        pickUpState.nearbyDrivers.first.id,
                                    cnadidatesUids: pickUpState.nearbyDrivers
                                        .map((candidate) => candidate.id)
                                        .toList(),
                                  ),
                                );
                              },
                            ),
                          ),
                      ],
                    ),
            )
          ],
        ),
      ),
    );
    return isSlidedUp
        ? ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: pickUpContent,
            ),
          )
        : pickUpContent;
  }
}
