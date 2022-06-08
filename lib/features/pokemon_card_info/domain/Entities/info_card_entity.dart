class InfoPokemonEntity {
  List<Data>? data;
  int? page;
  int? pageSize;
  int? count;
  int? totalCount;

  InfoPokemonEntity(
      {this.data, this.page, this.pageSize, this.count, this.totalCount});

  InfoPokemonEntity.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    page = json['page'];
    pageSize = json['pageSize'];
    count = json['count'];
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['page'] = this.page;
    data['pageSize'] = this.pageSize;
    data['count'] = this.count;
    data['totalCount'] = this.totalCount;
    return data;
  }
}

class Data {
  String? id;
  String? name;
  String? supertype;
  List<String>? subtypes;
  String? level;
  String? hp;
  List<String>? types;
  List<Attacks>? attacks;
  List<String>? retreatCost;
  int? convertedRetreatCost;
  String? number;
  String? rarity;
  Legalities? legalities;
  Images? images;
  String? evolvesFrom;
  List<Abilities>? abilities;
  List<String>? evolvesTo;
  String? flavorText;
  List<String>? rules;
  String? regulationMark;

  Data(
      {this.id,
      this.name,
      this.supertype,
      this.subtypes,
      this.level,
      this.hp,
      this.types,
      this.attacks,
      this.retreatCost,
      this.convertedRetreatCost,
      this.number,
      this.rarity,
      this.legalities,
      this.images,
      this.evolvesFrom,
      this.abilities,
      this.evolvesTo,
      this.flavorText,
      this.rules,
      this.regulationMark});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    supertype = json['supertype'];
    subtypes = json['subtypes'].cast<String>();
    level = json['level'];
    hp = json['hp'];
    types = json['types'].cast<String>();
    if (json['attacks'] != null) {
      attacks = <Attacks>[];
      json['attacks'].forEach((v) {
        attacks!.add(new Attacks.fromJson(v));
      });
    }

    retreatCost = json['retreatCost'].cast<String>();
    convertedRetreatCost = json['convertedRetreatCost'];
    legalities = json['legalities'] != null
        ? new Legalities.fromJson(json['legalities'])
        : null;
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
    evolvesFrom = json['evolvesFrom'];
    if (json['abilities'] != null) {
      abilities = <Abilities>[];
      json['abilities'].forEach((v) {
        abilities!.add(new Abilities.fromJson(v));
      });
    }
    evolvesTo = json['evolvesTo'].cast<String>();
    flavorText = json['flavorText'];
    rules = json['rules'].cast<String>();
    regulationMark = json['regulationMark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['supertype'] = this.supertype;
    data['subtypes'] = this.subtypes;
    data['level'] = this.level;
    data['hp'] = this.hp;
    data['types'] = this.types;
    if (this.attacks != null) {
      data['attacks'] = this.attacks!.map((v) => v.toJson()).toList();
    }

    data['retreatCost'] = this.retreatCost;
    data['convertedRetreatCost'] = this.convertedRetreatCost;
    data['number'] = this.number;
    data['rarity'] = this.rarity;
    if (this.legalities != null) {
      data['legalities'] = this.legalities!.toJson();
    }
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    data['evolvesFrom'] = this.evolvesFrom;
    if (this.abilities != null) {
      data['abilities'] = this.abilities!.map((v) => v.toJson()).toList();
    }
    data['evolvesTo'] = this.evolvesTo;
    data['flavorText'] = this.flavorText;
    data['rules'] = this.rules;
    data['regulationMark'] = this.regulationMark;
    return data;
  }
}

class Attacks {
  String? name;
  List<String>? cost;
  int? convertedEnergyCost;
  String? damage;
  String? text;

  Attacks(
      {this.name, this.cost, this.convertedEnergyCost, this.damage, this.text});

  Attacks.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    cost = json['cost'].cast<String>();
    convertedEnergyCost = json['convertedEnergyCost'];
    damage = json['damage'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['cost'] = this.cost;
    data['convertedEnergyCost'] = this.convertedEnergyCost;
    data['damage'] = this.damage;
    data['text'] = this.text;
    return data;
  }
}

class Weaknesses {
  String? type;
  String? value;

  Weaknesses({this.type, this.value});

  Weaknesses.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['value'] = this.value;
    return data;
  }
}

class Set {
  String? id;
  String? name;
  String? series;
  int? printedTotal;
  int? total;
  Legalities? legalities;
  String? ptcgoCode;
  String? releaseDate;
  String? updatedAt;
  Images? images;

  Set(
      {this.id,
      this.name,
      this.series,
      this.printedTotal,
      this.total,
      this.legalities,
      this.ptcgoCode,
      this.releaseDate,
      this.updatedAt,
      this.images});

  Set.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    series = json['series'];
    printedTotal = json['printedTotal'];
    total = json['total'];
    legalities = json['legalities'] != null
        ? new Legalities.fromJson(json['legalities'])
        : null;
    ptcgoCode = json['ptcgoCode'];
    releaseDate = json['releaseDate'];
    updatedAt = json['updatedAt'];
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['series'] = this.series;
    data['printedTotal'] = this.printedTotal;
    data['total'] = this.total;
    if (this.legalities != null) {
      data['legalities'] = this.legalities!.toJson();
    }
    data['ptcgoCode'] = this.ptcgoCode;
    data['releaseDate'] = this.releaseDate;
    data['updatedAt'] = this.updatedAt;
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    return data;
  }
}

class Legalities {
  String? unlimited;
  String? expanded;
  String? standard;

  Legalities({this.unlimited, this.expanded, this.standard});

  Legalities.fromJson(Map<String, dynamic> json) {
    unlimited = json['unlimited'];
    expanded = json['expanded'];
    standard = json['standard'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['unlimited'] = this.unlimited;
    data['expanded'] = this.expanded;
    data['standard'] = this.standard;
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

class Tcgplayer {
  String? url;
  String? updatedAt;
  Prices? prices;

  Tcgplayer({this.url, this.updatedAt, this.prices});

  Tcgplayer.fromJson(Map<String, dynamic> json) {
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
  double? reverseHoloSell;
  double? reverseHoloLow;
  double? reverseHoloTrend;
  double? lowPriceExPlus;
  double? avg1;
  double? avg7;
  double? avg30;
  double? reverseHoloAvg1;
  double? reverseHoloAvg7;
  double? reverseHoloAvg30;

  Prices(
      {this.averageSellPrice,
      this.lowPrice,
      this.trendPrice,
      this.reverseHoloSell,
      this.reverseHoloLow,
      this.reverseHoloTrend,
      this.lowPriceExPlus,
      this.avg1,
      this.avg7,
      this.avg30,
      this.reverseHoloAvg1,
      this.reverseHoloAvg7,
      this.reverseHoloAvg30});

  Prices.fromJson(Map<String, dynamic> json) {
    averageSellPrice = json['averageSellPrice'];
    lowPrice = json['lowPrice'];
    trendPrice = json['trendPrice'];
    reverseHoloSell = json['reverseHoloSell'];
    reverseHoloLow = json['reverseHoloLow'];
    reverseHoloTrend = json['reverseHoloTrend'];
    lowPriceExPlus = json['lowPriceExPlus'];
    avg1 = json['avg1'];
    avg7 = json['avg7'];
    avg30 = json['avg30'];
    reverseHoloAvg1 = json['reverseHoloAvg1'];
    reverseHoloAvg7 = json['reverseHoloAvg7'];
    reverseHoloAvg30 = json['reverseHoloAvg30'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['averageSellPrice'] = this.averageSellPrice;
    data['lowPrice'] = this.lowPrice;
    data['trendPrice'] = this.trendPrice;
    data['reverseHoloSell'] = this.reverseHoloSell;
    data['reverseHoloLow'] = this.reverseHoloLow;
    data['reverseHoloTrend'] = this.reverseHoloTrend;
    data['lowPriceExPlus'] = this.lowPriceExPlus;
    data['avg1'] = this.avg1;
    data['avg7'] = this.avg7;
    data['avg30'] = this.avg30;
    data['reverseHoloAvg1'] = this.reverseHoloAvg1;
    data['reverseHoloAvg7'] = this.reverseHoloAvg7;
    data['reverseHoloAvg30'] = this.reverseHoloAvg30;
    return data;
  }
}

class Abilities {
  String? name;
  String? text;
  String? type;

  Abilities({this.name, this.text, this.type});

  Abilities.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    text = json['text'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['text'] = this.text;
    data['type'] = this.type;
    return data;
  }
}
