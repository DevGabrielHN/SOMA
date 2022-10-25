class TypeModel {
  int? typeId;
  String? typeCode;
  String? domainCode;
  String? flexValue01;
  String? flexValue02;
  bool? isNew;
  bool? updated;
  int? createdBy;
  String? creationDate;
  int? lastUpdatedBy;
  String? lastUpdateDate;
  String? tableName;
  Translate? translate;

  TypeModel(
      {this.typeId,
        this.typeCode,
        this.domainCode,
        this.flexValue01,
        this.flexValue02,
        this.isNew,
        this.updated,
        this.createdBy,
        this.creationDate,
        this.lastUpdatedBy,
        this.lastUpdateDate,
        this.tableName,
        this.translate});

  TypeModel.fromJson(Map<String, dynamic> json) {
    typeId = json['typeId'];
    typeCode = json['typeCode'];
    domainCode = json['domainCode'];
    flexValue01 = json['flexValue01'];
    flexValue02 = json['flexValue02'];
    isNew = json['isNew'];
    updated = json['updated'];
    createdBy = json['createdBy'];
    creationDate = json['creationDate'];
    lastUpdatedBy = json['lastUpdatedBy'];
    lastUpdateDate = json['lastUpdateDate'];
    tableName = json['tableName'];
    translate = json['translate'] != null
        ? new Translate.fromJson(json['translate'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['typeId'] = this.typeId;
    data['typeCode'] = this.typeCode;
    data['domainCode'] = this.domainCode;
    data['flexValue01'] = this.flexValue01;
    data['flexValue02'] = this.flexValue02;
    data['isNew'] = this.isNew;
    data['updated'] = this.updated;
    data['createdBy'] = this.createdBy;
    data['creationDate'] = this.creationDate;
    data['lastUpdatedBy'] = this.lastUpdatedBy;
    data['lastUpdateDate'] = this.lastUpdateDate;
    data['tableName'] = this.tableName;
    if (this.translate != null) {
      data['translate'] = this.translate!.toJson();
    }
    return data;
  }
}

class Translate {
  ESA? eSA;
  ESA? uS;
  PTB? pTB;

  Translate({this.eSA, this.uS, this.pTB});

  Translate.fromJson(Map<String, dynamic> json) {
    eSA = json['ESA'] != null ? new ESA.fromJson(json['ESA']) : null;
    uS = json['US'] != null ? new ESA.fromJson(json['US']) : null;
    pTB = json['PTB'] != null ? new PTB.fromJson(json['PTB']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eSA != null) {
      data['ESA'] = this.eSA!.toJson();
    }
    if (this.uS != null) {
      data['US'] = this.uS!.toJson();
    }
    if (this.pTB != null) {
      data['PTB'] = this.pTB!.toJson();
    }
    return data;
  }
}

class ESA {
  int? translateId;
  String? languageCode;
  String? tableName;
  int? genericKey;
  String? descr;
  int? createdBy;
  String? creationDate;
  int? lastUpdatedBy;
  String? lastUpdateDate;

  ESA(
      {this.translateId,
        this.languageCode,
        this.tableName,
        this.genericKey,
        this.descr,
        this.createdBy,
        this.creationDate,
        this.lastUpdatedBy,
        this.lastUpdateDate});

  ESA.fromJson(Map<String, dynamic> json) {
    translateId = json['translateId'];
    languageCode = json['languageCode'];
    tableName = json['tableName'];
    genericKey = json['genericKey'];
    descr = json['descr'];
    createdBy = json['createdBy'];
    creationDate = json['creationDate'];
    lastUpdatedBy = json['lastUpdatedBy'];
    lastUpdateDate = json['lastUpdateDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['translateId'] = this.translateId;
    data['languageCode'] = this.languageCode;
    data['tableName'] = this.tableName;
    data['genericKey'] = this.genericKey;
    data['descr'] = this.descr;
    data['createdBy'] = this.createdBy;
    data['creationDate'] = this.creationDate;
    data['lastUpdatedBy'] = this.lastUpdatedBy;
    data['lastUpdateDate'] = this.lastUpdateDate;
    return data;
  }
}

class PTB {
  int? translateId;
  String? languageCode;
  String? tableName;
  int? genericKey;
  String? descr;
  int? createdBy;
  String? creationDate;
  int? lastUpdatedBy;
  String? lastUpdateDate;

  PTB(
      {this.translateId,
        this.languageCode,
        this.tableName,
        this.genericKey,
        this.descr,
        this.createdBy,
        this.creationDate,
        this.lastUpdatedBy,
        this.lastUpdateDate});

  PTB.fromJson(Map<String, dynamic> json) {
    translateId = json['translateId'];
    languageCode = json['languageCode'];
    tableName = json['tableName'];
    genericKey = json['genericKey'];
    descr = json['descr'];
    createdBy = json['createdBy'];
    creationDate = json['creationDate'];
    lastUpdatedBy = json['lastUpdatedBy'];
    lastUpdateDate = json['lastUpdateDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['translateId'] = this.translateId;
    data['languageCode'] = this.languageCode;
    data['tableName'] = this.tableName;
    data['genericKey'] = this.genericKey;
    data['descr'] = this.descr;
    data['createdBy'] = this.createdBy;
    data['creationDate'] = this.creationDate;
    data['lastUpdatedBy'] = this.lastUpdatedBy;
    data['lastUpdateDate'] = this.lastUpdateDate;
    return data;
  }
}