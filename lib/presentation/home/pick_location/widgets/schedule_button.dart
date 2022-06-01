import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxidriver/application/pick_up/pick_up_controller.dart';
import 'package:taxidriver/application/pick_up/pick_up_event.dart';
import 'package:taxidriver/application/pick_up/pick_up_state.dart';
import 'package:taxidriver/presentation/theme/colors.dart';
import 'package:taxidriver/booking/domain/ride.dart';

class ScheduleButton extends StatelessWidget {
  const ScheduleButton({
    Key? key,
    required this.pickUpState,
    required this.pickUpController,
  }) : super(key: key);

  final PickUpState pickUpState;
  final PickUpController pickUpController;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (pickUpState.rideType == RideType.now) {
          DatePicker.showDateTimePicker(
            context,
            onConfirm: ((dateTime) {
              pickUpController.mapEventToState(
                PickUpEvent.rideScheduled(
                  dateTime,
                ),
              );
            }),
            locale: LocaleType.fr,
            theme: DatePickerTheme(
              cancelStyle: TextStyle(
                color: kPrimaryColor,
                fontSize: 16.sp,
              ),
            ),
          );
        } else {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    10.h.verticalSpace,
                    Text(
                      DateFormat('MMMM dd, hh:mm')
                          .format(pickUpState.rideDateTime!),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                      ),
                    ),
                    10.h.verticalSpace,
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        DatePicker.showDateTimePicker(context,
                            onConfirm: ((dateTime) {
                          pickUpController.mapEventToState(
                              PickUpEvent.rideScheduled(dateTime));
                        }),
                            locale: LocaleType.fr,
                            theme: DatePickerTheme(
                              cancelStyle: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 16.sp,
                              ),
                            ));
                      },
                      child: Text(
                        'Change Date',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        pickUpController.mapEventToState(
                          const PickUpEvent.rideScheduledToNow(),
                        );
                      },
                      child: Text(
                        'Reschedule ride to current datetime',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    10.h.verticalSpace,
                  ],
                );
              });
        }
      },
      child: Row(
        children: [
          Icon(
            Icons.schedule,
            color: kPrimaryColor,
          ),
          4.w.horizontalSpace,
          if (pickUpState.rideType == RideType.now) ...[
            Text(
              'Now',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.expand_more)
          ],
          if (pickUpState.rideType == RideType.shceduled)
            Text(
              DateFormat('MMMM dd, hh:mm').format(pickUpState.rideDateTime!),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }
}
