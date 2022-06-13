class GraphicEntity {
  String? id;
  String? name;
  Tcgplayer? tcgplayer;

  GraphicEntity({this.id, this.name, this.tcgplayer});

  GraphicEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    tcgplayer = json['tcgplayer'] != null
        ? new Tcgplayer.fromJson(json['tcgplayer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;    
    if (this.tcgplayer != null) {
      data['tcgplayer'] = this.tcgplayer!.toJson();
    }
    return data;
  }
}

class Tcgplayer {
  String? url;
  String? updatedAt;
  Prices? prices;

  Tcgplayer({this.url, this.updatedAt, this.prices});

  Tcgplayer.fromJson(Map<String, dynamic> json) {
    url = json['url'] ?? "" ;
    updatedAt = json['updatedAt']?? "" ;
    prices =
        json['prices'] != null ? new Prices.fromJson(json['prices']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['updatedAt'] = this.updatedAt;
    if (this.prices != null) {
      data['prices'] = this.prices!.toJson();
    }
    return data;
  }
}

class Prices {
  Holofoil? holofoil;
  ReverseHolofoil? reverseHolofoil;

  Prices({this.holofoil, this.reverseHolofoil});

  Prices.fromJson(Map<String, dynamic> json) {
    holofoil = json['holofoil'] ?? '';
         new Holofoil.fromJson(json['holofoil'])
       ;
    reverseHolofoil = json['reverseHolofoil'] ?? '';
         new ReverseHolofoil.fromJson(json['reverseHolofoil'])
         ;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.holofoil != null) {
      data['holofoil'] = this.holofoil!.toJson();
    }
    if (this.reverseHolofoil != null) {
      data['reverseHolofoil'] = this.reverseHolofoil!.toJson();
    }
    return data;
  }
}

class Holofoil {
  double? low;
  double? mid;
  double? high;
  double? market;

  Holofoil({this.low, this.mid, this.high, this.market});

  Holofoil.fromJson(Map<String, dynamic> json) {
    low = json['low']?? "";
    mid = json['mid']?? "";
    high = json['high']?? "";
    market = json['market']?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['low'] = this.low;
    data['mid'] = this.mid;
    data['high'] = this.high;
    data['market'] = this.market;
    return data;
  }
}

class ReverseHolofoil {
  double? low;
  double? mid;
  double? high;
  double? market;

  ReverseHolofoil({this.low, this.mid, this.high, this.market});

  ReverseHolofoil.fromJson(Map<String, dynamic> json) {
    low = json['low']?? "";
    mid = json['mid']?? "";
    high = json['high']?? "";
    market = json['market']?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['low'] = this.low;
    data['mid'] = this.mid;
    data['high'] = this.high;
    data['market'] = this.market;
    return data;
  }
}
