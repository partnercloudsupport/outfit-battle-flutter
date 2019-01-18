import 'package:flutter/material.dart';
import 'package:outfit_battle/src/models/shop_item_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<ExpansionPanel> buildPanelList(List<ShopItem> shopItems) {
  var coinAsset = "assets/svgs/coin.svg";

  var panelList = <ExpansionPanel>[];

  for (var i = 0; i < shopItems.length; i++) {
    panelList.add(ExpansionPanel(
      body: Container(
        color: Colors.white,
        child: Align(
          alignment: Alignment(0.5, 0.5),
                  child: ListTile(
            title: Text(shopItems[i].body, 
            style: TextStyle(color: Colors.black),
            ),
            trailing: RaisedButton.icon(
                color: Colors.black87,
                onPressed: () {},
                icon: IconButton(
                  color: Colors.white10,
                  iconSize: 12.0,
                  icon: SvgPicture.asset(coinAsset),
                  onPressed: () {},
                ),
                label: Text(
                  shopItems[i].itemPrice,
                  style: TextStyle(color: Colors.white),
                ),
              ),
          ),
        ),
      ),
      headerBuilder: (BuildContext context, bool isExpanded) {
        return buildShopItemHeader(coinAsset, shopItems, i);
      },
      isExpanded: shopItems[i].isExpanded,
      // isExpanded: true,
    ));
  }

  return panelList;
}

ListTile buildShopItemHeader(
    String coinAsset, List<ShopItem> shopItems, int i) {
  return ListTile(
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        shopItems[i].iconAsset,
      ),
    ),
    title: Text(shopItems[i].header),
  );
}
