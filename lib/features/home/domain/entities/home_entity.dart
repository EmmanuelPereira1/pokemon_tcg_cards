class HomeEntity {
  Data? data;

  HomeEntity({this.data});

  HomeEntity.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? id;
  String? name;
  List<String>? types;
  List<String>? rules;
  String? number;
  String? artist;
  String? rarity;
  Images? images;

  Data(
      {this.id,
      this.name,
      this.types,
      this.rules,
      this.number,
      this.artist,
      this.rarity,
      this.images,
      });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    types = json['types'].cast<String>();
    rules = json['rules'].cast<String>();
    number = json['number'];
    artist = json['artist'];
    rarity = json['rarity'];
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['types'] = this.types;
    data['rules'] = this.rules;
    data['number'] = this.number;
    data['rarity'] = this.rarity;
    return data;
  }
}



class Images {
  String? small;
  String? large;

  Images({this.small, this.large});

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
 //* COLOCAR NO ENTITY DO GRAFICO

// class Tcgplayer {
//   String? url;
//   String? updatedAt;
//   Prices? prices;

//   Tcgplayer({this.url, this.updatedAt, this.prices});

//   Tcgplayer.fromJson(Map<String, dynamic> json) {
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

     

// class Prices {
//   Holofoil? holofoil;

//   Prices({this.holofoil});

//   Prices.fromJson(Map<String, dynamic> json) {
//     holofoil = json['holofoil'] != null
//         ? new Holofoil.fromJson(json['holofoil'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.holofoil != null) {
//       data['holofoil'] = this.holofoil!.toJson();
//     }
//     return data;
//   }
// }

// class Holofoil {
//   int? low;
//   double? mid;
//   double? high;
//   double? market;
//   double? directLow;

//   Holofoil({this.low, this.mid, this.high, this.market, this.directLow});

//   Holofoil.fromJson(Map<String, dynamic> json) {
//     low = json['low'];
//     mid = json['mid'];
//     high = json['high'];
//     market = json['market'];
//     directLow = json['directLow'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['low'] = this.low;
//     data['mid'] = this.mid;
//     data['high'] = this.high;
//     data['market'] = this.market;
//     data['directLow'] = this.directLow;
//     return data;
//   }
// }