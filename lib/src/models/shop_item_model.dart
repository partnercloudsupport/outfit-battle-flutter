import 'package:flutter/material.dart';

class ShopItem {
  var _isExpanded;
  final String header;
  final Widget body;

  ShopItem(this._isExpanded, this.header, this.body);

  bool get isExpanded => _isExpanded;

  set isExpanded(bool isExpanded) {
    _isExpanded = isExpanded;
  }
}