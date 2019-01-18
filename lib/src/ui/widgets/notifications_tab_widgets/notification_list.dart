import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outfit_battle/src/models/notifications_item_model.dart';

ListTile buildNotificationsList(
    List<NotificationsItem> notificationsItems, int index) {
  return ListTile(
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(notificationsItems[index].iconAsset),
    ),
    title: Text(notificationsItems[index].notificationMessage),
    subtitle: Text(notificationsItems[index].time),
  );
}
