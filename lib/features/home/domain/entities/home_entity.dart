class HomeEntity {
  String? name;
  Images? images;

  HomeEntity({this.name, this.images});

  HomeEntity.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
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