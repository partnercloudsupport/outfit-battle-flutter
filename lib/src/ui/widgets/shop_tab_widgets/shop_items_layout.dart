import 'package:flutter/material.dart';
import 'package:outfit_battle/src/models/shop_item_model.dart';
import 'package:outfit_battle/src/ui/widgets/shop_tab_widgets/panel_list.dart';

class PanelList extends StatefulWidget {
  final List<ShopItem> shopItems;

  PanelList({Key key, this.shopItems}) : super(key: key);

  _PanelListState createState() => _PanelListState();
}

class _PanelListState extends State<PanelList> {
  @override
  Widget build(BuildContext context) {
     return Expanded(
            flex: 18,
            child: SingleChildScrollView(
              child: SafeArea(
                child: Container(
                  child: ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded) {
                      setState(() {
                        widget.shopItems[index].isExpanded = !(widget.shopItems[index].isExpanded);
                      });
                    },
                    children: buildPanelList(widget.shopItems),
                  ),
                ),
              ),
            ),
          );
  }
}


