class HomeEntity {
  String? name;
  String? id;
  Images? images;

  HomeEntity({this.name, this.images});

  HomeEntity.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    return data;
  }
}

class Images {
  String? small;

  Images({this.small});

  Images.fromJson(Map<String, dynamic> json) {
    small = json['small'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this.small;
    return data;
  }
}