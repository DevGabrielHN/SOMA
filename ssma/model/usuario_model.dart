class UsuarioModal {
  int? userId;
  String? languageCode;
  int? createdBy;
  DateTime? creationDate;
  int? lastUpdatedBy;
  DateTime? lastUpdateDate;
  String? userName;
  String? emplId;
  String? blocked;
  String? authenticate;
  String? changePasswordFirstAccess;
  DateTime? expirationDate;
  DateTime? lastAccessDate;
  String? encryptedUserPassword;
  String? sysAdmin;
  List<UserAccessFunctionList>? userAccessFunctionList;
  UserPermissionGroup? userPermissionGroup;

  UsuarioModal(
      {this.userId,
        this.languageCode,
        this.createdBy,
        this.creationDate,
        this.lastUpdatedBy,
        this.lastUpdateDate,
        this.userName,
        this.emplId,
        this.blocked,
        this.authenticate,
        this.changePasswordFirstAccess,
        this.expirationDate,
        this.lastAccessDate,
        this.encryptedUserPassword,
        this.sysAdmin,
        this.userAccessFunctionList,
        this.userPermissionGroup
      });

  UsuarioModal.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    languageCode = json['languageCode'];
    createdBy = json['createdBy'];
    creationDate = json['creationDate'];
    lastUpdatedBy = json['lastUpdatedBy'];
    lastUpdateDate = json['lastUpdateDate'];
    userName = json['userName'];
    emplId = json['emplId'];
    blocked = json['blocked'];
    authenticate = json['authenticate'];
    changePasswordFirstAccess = json['changePasswordFirstAccess'];
    expirationDate = json['expirationDate'];
    lastAccessDate = json['lastAccessDate'];
    encryptedUserPassword = json['encryptedUserPassword'];
    sysAdmin = json['sysAdmin'];
    if (json['userAccessFunctionList'] != null) {
      userAccessFunctionList = <UserAccessFunctionList>[];
      json['userAccessFunctionList'].forEach((v) {
        userAccessFunctionList!.add(new UserAccessFunctionList.fromJson(v));
      });
    }
    userPermissionGroup = json['userPermissionGroup'] != null
        ? new UserPermissionGroup.fromJson(json['userPermissionGroup'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['languageCode'] = this.languageCode;
    data['createdBy'] = this.createdBy;
    data['creationDate'] = this.creationDate;
    data['lastUpdatedBy'] = this.lastUpdatedBy;
    data['lastUpdateDate'] = this.lastUpdateDate;
    data['userName'] = this.userName;
    data['emplId'] = this.emplId;
    data['blocked'] = this.blocked;
    data['authenticate'] = this.authenticate;
    data['changePasswordFirstAccess'] = this.changePasswordFirstAccess;
    data['expirationDate'] = this.expirationDate;
    data['lastAccessDate'] = this.lastAccessDate;
    data['encryptedUserPassword'] = this.encryptedUserPassword;
    data['sysAdmin'] = this.sysAdmin;
    if (this.userAccessFunctionList != null) {
      data['userAccessFunctionList'] =
          this.userAccessFunctionList!.map((v) => v.toJson()).toList();
    }
    if (this.userPermissionGroup != null) {
      data['userPermissionGroup'] = this.userPermissionGroup!.toJson();
    }
    return data;
  }
}

class UserAccessFunctionList {
  int? accessGroupId;
  String? name;
  String? status;
  int? createdBy;
  DateTime? creationDate;
  int? lastUpdatedBy;
  DateTime? lastUpdateDate;

  UserAccessFunctionList(
      {this.accessGroupId,
        this.name,
        this.status,
        this.createdBy,
        this.creationDate,
        this.lastUpdatedBy,
        this.lastUpdateDate});

  UserAccessFunctionList.fromJson(Map<String, dynamic> json) {
    accessGroupId = json['accessGroupId'];
    name = json['name'];
    status = json['status'];
    createdBy = json['createdBy'];
    creationDate = json['creationDate'];
    lastUpdatedBy = json['lastUpdatedBy'];
    lastUpdateDate = json['lastUpdateDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accessGroupId'] = this.accessGroupId;
    data['name'] = this.name;
    data['status'] = this.status;
    data['createdBy'] = this.createdBy;
    data['creationDate'] = this.creationDate;
    data['lastUpdatedBy'] = this.lastUpdatedBy;
    data['lastUpdateDate'] = this.lastUpdateDate;
    return data;
  }
}

class UserPermissionGroup {
  int? permissionGroupId;
  String? groupName;
  String? groupStatus;
  int? createdBy;
  DateTime? creationDate;
  int? lastUpdatedBy;
  DateTime? lastUpdateDate;

  UserPermissionGroup(
      {this.permissionGroupId,
        this.groupName,
        this.groupStatus,
        this.createdBy,
        this.creationDate,
        this.lastUpdatedBy,
        this.lastUpdateDate});

  UserPermissionGroup.fromJson(Map<String, dynamic> json) {
    permissionGroupId = json['permissionGroupId'];
    groupName = json['groupName'];
    groupStatus = json['groupStatus'];
    createdBy = json['createdBy'];
    creationDate = json['creationDate'];
    lastUpdatedBy = json['lastUpdatedBy'];
    lastUpdateDate = json['lastUpdateDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['permissionGroupId'] = this.permissionGroupId;
    data['groupName'] = this.groupName;
    data['groupStatus'] = this.groupStatus;
    data['createdBy'] = this.createdBy;
    data['creationDate'] = this.creationDate;
    data['lastUpdatedBy'] = this.lastUpdatedBy;
    data['lastUpdateDate'] = this.lastUpdateDate;
    return data;
  }
}