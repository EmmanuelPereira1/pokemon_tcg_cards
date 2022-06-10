class HomeEntity {
  String? name;
  String? id;
  Images? images;

  HomeEntity({this.name, this.images, this.id});

  HomeEntity.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    // number = json['number'];
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
    // cardmarket = json['cardmarket'] != null
    //     ? new Cardmarket.fromJson(json['cardmarket'])
    //     : null;
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

// class Cardmarket {
//   String? url;
//   String? updatedAt;
//   Prices? prices;

//   Cardmarket({this.url, this.updatedAt, this.prices});

//   Cardmarket.fromJson(Map<String, dynamic> json) {
//     url = json['url'];
//     updatedAt = json['updatedAt'];
//     prices =
//         json['prices'] != null ? new Prices.fromJson(json['prices']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['url'] = this.url;
//     data['updatedAt'] = this.updatedAt;
//     if (this.prices != null) {
//       data['prices'] = this.prices!.toJson();
//     }
//     return data;
//   }
// }


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
