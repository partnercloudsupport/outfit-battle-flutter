import 'package:flutter/material.dart';
import 'package:outfit_battle/src/models/shop_item_model.dart';
import 'package:outfit_battle/src/ui/widgets/shop_tab_widgets/shop_items_layout.dart';
import 'package:outfit_battle/src/ui/widgets/shop_tab_widgets/title_bar.dart';

class ShopTab extends StatefulWidget {
  _ShopTabState createState() => _ShopTabState();
}

class _ShopTabState extends State<ShopTab> {
  static String moreBattlesAsset = "assets/svgs/spinner.svg";
  static String noDailyCoinLimitAsset = "assets/svgs/rings.svg";
  static String cancelSoloBattleAsset = "assets/svgs/x-button.svg";
  static String doubleCoinsAsset = "assets/svgs/balloons.svg";
  static String boostBattlesAsset = "assets/svgs/slingshot.svg";
  static String removeAdsAsset = "assets/svgs/scooter.svg";
  static String premiumBattlePackAsset = "assets/svgs/rocket.svg";

  static String moreBattlesPrice = "500";
  static String noDailyCoinLimitPrice = "100";
  static String cancelSoloBattlePrice = "200";
  static String doubleCoinsPrice = "100";
  static String boostBattlesPrice = "300";
  static String removeAdsPrice = "3000";
  static String premiumBattlePackPrice = "1000";

  static String moreBattlesDescription = "Increases the maximum amount of active battles you can have by one.\n\nCan be bought up to 17 times.";
  static String noDailyCoinLimitDescription = "Removes the daily 100 coin limit that you can earn by voting battles.\n\nLasts 48 hours.";
  static String cancelSoloBattleDescription = "Allows you cancel your own solo battles before they expire to free up slots\n\nLasts 48 hours.";
  static String doubleCoinsDescription = "Doubles the amount of coins you can get from voting and winning battles.\n\nLasts 48 hours.";
  static String boostBattlesDescription = "Adds your battles to a privileged queue.\n\nBattles from the privileged queue are shown before other battles not in the queue.";
  static String removeAdsDescription = "Removes ads from the app.\n\nLasts one month.";
  static String premiumBattlePackDescription = "Removes ads, boosts your battles, gives 7 active battle slots and doubles coins on wins.\n\nLasts one week.";


  var shopItems = <ShopItem>[
    ShopItem(false, "Double coins", doubleCoinsDescription, doubleCoinsAsset, doubleCoinsPrice),
    ShopItem(false, "No daily coin limit", noDailyCoinLimitDescription, noDailyCoinLimitAsset, noDailyCoinLimitPrice),
    ShopItem(false, "Can cancel solo battles", cancelSoloBattleDescription, cancelSoloBattleAsset, cancelSoloBattlePrice),
    ShopItem(false, "Boost battles", boostBattlesDescription, boostBattlesAsset, boostBattlesPrice),
    ShopItem(false, "More battles", moreBattlesDescription, moreBattlesAsset, moreBattlesPrice,),
    ShopItem(false, "Remove ads", removeAdsDescription, removeAdsAsset, removeAdsPrice),
    ShopItem(false, "Premium battle pack", premiumBattlePackDescription, premiumBattlePackAsset, premiumBattlePackPrice),
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
