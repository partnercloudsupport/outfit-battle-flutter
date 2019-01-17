import 'package:flutter/material.dart';
import 'package:outfit_battle/src/models/shop_item_model.dart';
import 'package:outfit_battle/src/ui/widgets/shop_tab_widgets/shop_items_layout.dart';
import 'package:outfit_battle/src/ui/widgets/shop_tab_widgets/title_bar.dart';

class ShopTab extends StatefulWidget {
  _ShopTabState createState() => _ShopTabState();
}

class _ShopTabState extends State<ShopTab> {
  static String moreBattlesAsset = "assets/svgs/spinner.svg";
  static String noDailyCoinLimtAsset = "assets/svgs/rings.svg";
  static String cancelSoloBattleAsset = "assets/svgs/x-button.svg";
  static String doubleCoinsAsset = "assets/svgs/balloons.svg";
  static String boostBattlesAsset = "assets/svgs/slingshot.svg";
  static String removeAdsAsset = "assets/svgs/scooter.svg";
  static String premiumBattlePackAsset = "assets/svgs/rocket.svg";




  var shopItems = <ShopItem>[
    ShopItem(false, "More battles", "Body", moreBattlesAsset),
    ShopItem(false, "No daily coin limit", "Body2", noDailyCoinLimtAsset),
    ShopItem(false, "Can cancel solo battles", "Body3", cancelSoloBattleAsset),
    ShopItem(false, "Double coins", "Body4", doubleCoinsAsset),
    ShopItem(false, "Boost battles", "Body5", boostBattlesAsset),
    ShopItem(false, "Remove ads", "Body6", removeAdsAsset),
    ShopItem(false, "Premium battle pack", "Body7", premiumBattlePackAsset),
  ];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          buildTitleBar(),
          PanelList(shopItems: shopItems,),
        ],
      ),
    );
  }
}
