class SearchEntity {
  String? name;
  String? id;
  Images? images;

  SearchEntity({this.name, this.images, this.id});

  SearchEntity.fromJson(Map<String, dynamic> json) {
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
  String? large;

  Images({this.small});

  Images.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this.small;
    data['large'] = this.large;
    return data;
  }  
}

class Prices {
  double? averageSellPrice;
  double? lowPrice;
  double? trendPrice;

  Prices({this.averageSellPrice, this.lowPrice, this.trendPrice});

  Prices.fromJson(Map<String, dynamic> json) {
    averageSellPrice = json['averageSellPrice'];
    lowPrice = json['lowPrice'];
    trendPrice = json['trendPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['averageSellPrice'] = this.averageSellPrice;
    data['lowPrice'] = this.lowPrice;
    data['trendPrice'] = this.trendPrice;
    return data;
  }
}
