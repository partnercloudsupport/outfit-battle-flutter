import 'package:flutter/material.dart';
import 'package:outfit_battle/src/models/shop_item_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<ExpansionPanel> buildPanelList(List<ShopItem> shopItems) {
    var panelList = <ExpansionPanel>[];

    for (var i = 0; i < shopItems.length; i++) {
      panelList.add(ExpansionPanel(
        body: Text(shopItems[i].body),
        headerBuilder: (BuildContext context, bool isExpanded) {
          return ListTile(
            leading: IconButton(
                  onPressed: (){},
                          icon: SvgPicture.asset(
              shopItems[i].iconAsset,),
            ),
            title: Text(shopItems[i].header),
          );
        },
        isExpanded: shopItems[i].isExpanded,
        // isExpanded: true,
      ));
    }

    return panelList;
  }