class Lamps {
  late String name;
  late bool status;
  late String id;

  Lamps({required this.name, required this.status, required this.id});

  Lamps.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    status = json['status'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['status'] = status;
    data['id'] = id;
    return data;
  }
}
