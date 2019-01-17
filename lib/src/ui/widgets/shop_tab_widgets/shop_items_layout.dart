import 'package:flutter/material.dart';
import 'package:outfit_battle/src/models/shop_item_model.dart';

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
                      print(index.toString() + " is index");
                      setState(() {
                        print(widget.shopItems[index].isExpanded);
                        widget.shopItems[index].isExpanded = !(widget.shopItems[index].isExpanded);
                        print(widget.shopItems[index].isExpanded.toString() + " after");
                      });
                    },
                    children: buildPanelList(),
                  ),
                ),
              ),
            ),
          );
  }

  List<ExpansionPanel> buildPanelList() {
    var panelList = <ExpansionPanel>[];

    for (var i = 0; i < widget.shopItems.length; i++) {
      panelList.add(ExpansionPanel(
        // body: shopItems[i].body,
        body: Text("data"),
        headerBuilder: (BuildContext context, bool isExpanded) {
          return ListTile(
            trailing: Icon(Icons.gamepad),
            leading: Icon(Icons.gamepad),
            title: Text(widget.shopItems[i].header),
          );
        },
        isExpanded: widget.shopItems[i].isExpanded,
        // isExpanded: true,
      ));
    }

    return panelList;
  }
}


