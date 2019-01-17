import 'package:flutter/material.dart';
import 'package:outfit_battle/src/models/shop_item_model.dart';
import 'package:outfit_battle/src/ui/widgets/shop_tab_widgets/shop_items_layout.dart';
import 'package:outfit_battle/src/ui/widgets/shop_tab_widgets/title_bar.dart';

class ShopTab extends StatefulWidget {
  _ShopTabState createState() => _ShopTabState();
}

class _ShopTabState extends State<ShopTab> {
  var shopItems = <ShopItem>[
    ShopItem(false, "Cow", Text("Body")),
    ShopItem(false, "Cow2", Text("Body2")),
    ShopItem(false, "Cow3", Text("Body3")),
    ShopItem(false, "Cow4", Text("Body4")),
    ShopItem(false, "Cow5", Text("Body5")),
    ShopItem(false, "Cow6", Text("Body6")),
    ShopItem(true, "Cow7", Text("Body7")),
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
