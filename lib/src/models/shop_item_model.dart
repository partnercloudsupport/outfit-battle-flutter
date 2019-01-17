class ShopItem {
  var _isExpanded;
  final String header;
  final String body;
  final String iconAsset;

  ShopItem(this._isExpanded, this.header, this.body, this.iconAsset);

  bool get isExpanded => _isExpanded;

  set isExpanded(bool isExpanded) {
    _isExpanded = isExpanded;
  }
}