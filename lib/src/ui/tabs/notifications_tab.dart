import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/notifications_tab_widgets/title_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationsTab extends StatelessWidget {
  NotificationsTab();

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
                itemCount: 47,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/svgs/podium.svg"),
                    ),
                    title: Text("You have a following $index"),
                    subtitle: Text("Just now"),
                  );
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
