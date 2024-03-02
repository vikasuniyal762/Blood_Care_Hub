import 'package:flutter/cupertino.dart';
import 'package:flutter_inapp_notifications/flutter_inapp_notifications.dart';

import '../utils/appColors.dart';

showNotification({
  required String title,
  required IconData leadingIcon,
  required IconData endingIcon,
  required String description,
  required void Function() onTap,
}) {

  return InAppNotifications.show(
    title: title,
    leading: Icon(
      leadingIcon,
      color: AppColor.accentGreen,
      size: 50,
    ),
    ending: Icon(
      endingIcon,
      color: AppColor.accentYellow,
    ),
    description: description,
    onTap: onTap,

  );

}
