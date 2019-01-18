import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/notifications_tab_widgets/notification_list.dart';
import 'package:outfit_battle/src/ui/widgets/notifications_tab_widgets/title_bar.dart';
import 'package:outfit_battle/src/models/notifications_item_model.dart';

class NotificationsTab extends StatelessWidget {
  NotificationsTab();

static final newFollowerIconAsset  = "assets/svgs/train.svg";
static final battleWonIconAsset = "assets/svgs/confetti.svg";
static final newChallengeIconAsset = "assets/svgs/gamepad.svg";
static final newFollowerBattleIconAsset  = "assets/svgs/sword.svg";



  final notificationsItems = <NotificationsItem>[
    NotificationsItem("You have been challenged to a battle by @jay_dee_19", newChallengeIconAsset, "Just now"),    
    NotificationsItem("@jay_dee_19 is now following you", newFollowerIconAsset, "2 mins ago"),    
    NotificationsItem("Congrats, you won your battle with @charly!", battleWonIconAsset, "1 hour ago"),    
    NotificationsItem("@realest is now following you", newFollowerIconAsset, "5 hours ago"),    
     NotificationsItem("@hrmisss has started a new battle.", newFollowerBattleIconAsset, "6 hours ago"),    
     NotificationsItem("@nred_hreo is now following you", newFollowerIconAsset, "7 hours ago"),    
     NotificationsItem("@oreoflakes.hey is now following you", newFollowerIconAsset, "7 hours ago"),    
     NotificationsItem("@dohnmis has started a new battle.", newFollowerBattleIconAsset, "9 hours ago"),
     NotificationsItem("@legolady is now following you", newFollowerIconAsset, "10 hours ago"),    
     NotificationsItem("@fireofres is now following you", newFollowerIconAsset, "10 hours ago"),        
     NotificationsItem("You have been challenged to a battle by @charly", newChallengeIconAsset, "Yesterday"),    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          buildTitleBar(),
          Expanded(
            flex: 18,
            child: Scrollbar(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: notificationsItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildNotificationsList(notificationsItems, index);
                }, 
                separatorBuilder: (BuildContext context, int index) => Divider(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

