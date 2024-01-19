class Items {
  late String icon;
  late String name;
  late bool status;
  late int number;
  late String param;

  Items({required this.icon, required this.name, required this.status,required this.number,required this.param});

  Items.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    name = json['name'];
    status = json['status'];
    number = json['number'];
    param = json['param'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['icon'] = icon;
    data['name'] = name;
    data['status'] = status;
    data['number'] = number;
    data['param'] = param;
    return data;
  }
}
