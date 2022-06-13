class InfoPokemonEntity {
  String? id;
  String? name;
  Images? images;
  Cardmarket? cardmarket;
  String? rarity;
  Set? set;
  Tcgplayer? tcgplayer;

  InfoPokemonEntity({
    this.id,
    this.name,
    this.images,
    this.cardmarket,
    this.rarity,
    this.set,
  });

  InfoPokemonEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    rarity = json['rarity'];
    set = json['set'] != null ? new Set.fromJson(json['set']) : null;
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
    cardmarket = json['cardmarket'] != null
        ? new Cardmarket.fromJson(json['cardmarket'])
        : null;
     tcgplayer = json['tcgplayer'] != null
        ? new Tcgplayer.fromJson(json['tcgplayer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['rarity'] = this.rarity;
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    if (this.cardmarket != null) {
      data['cardmarket'] = this.cardmarket!.toJson();
    }
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

class Set {
  String? series;

  Set({
    this.series,
  });

  Set.fromJson(Map<String, dynamic> json) {
    series = json['series'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['series'] = this.series;

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

class Cardmarket {
  String? url;
  String? updatedAt;
  Prices? prices;

  Cardmarket({this.url, this.updatedAt, this.prices});

  Cardmarket.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    updatedAt = json['updatedAt'];
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

