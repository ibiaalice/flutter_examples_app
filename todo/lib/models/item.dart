class Item {
  String title;
  bool done;

  /**
   * Constructor
   */
  Item({this.title, this.done});

  /**
   * Convert json from Item
   */
  Item.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    done = json['done'];
  }

  /**
   * Convert Item elements from format json
   */
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['done'] = this.done;
    return data;
  }
}
