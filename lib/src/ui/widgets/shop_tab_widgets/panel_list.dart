import 'package:flutter/material.dart';
import 'package:outfit_battle/src/models/shop_item_model.dart';

List<ExpansionPanel> buildPanelList(List<ShopItem> shopItems) {
    var panelList = <ExpansionPanel>[];

    for (var i = 0; i < shopItems.length; i++) {
      panelList.add(ExpansionPanel(
        // body: shopItems[i].body,
        body: Text("data"),
        headerBuilder: (BuildContext context, bool isExpanded) {
          return ListTile(
            trailing: Icon(Icons.gamepad),
            leading: Icon(Icons.gamepad),
            title: Text(shopItems[i].header),
          );
        },
        isExpanded: shopItems[i].isExpanded,
        // isExpanded: true,
      ));
    }

    return panelList;
  }