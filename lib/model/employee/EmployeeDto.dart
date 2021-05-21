class EmployeeDto {
  int totalCount;
  List<Items> items;

  EmployeeDto({this.totalCount, this.items});

  EmployeeDto.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalCount'] = this.totalCount;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  Employee employee;
  Country country;
  Company company;
  Department department;
  JobTitle jobTitle;
  JobPosition jobPosition;
  Project project;
  Employee1 employee1;
  Employee1 approved1ById;
  Employee1 approved2ById;
  Employee1 approved3ById;
  AppUser appUser;

  Items(
      {this.employee,
      this.country,
      this.company,
      this.department,
      this.jobTitle,
      this.jobPosition,
      this.project,
      this.employee1,
      this.approved1ById,
      this.approved2ById,
      this.approved3ById,
      this.appUser});

  Items.fromJson(Map<String, dynamic> json) {
    employee = json['employee'] != null
        ? new Employee.fromJson(json['employee'])
        : null;
    country =
        json['country'] != null ? new Country.fromJson(json['country']) : null;
    company =
        json['company'] != null ? new Company.fromJson(json['company']) : null;
    department = json['department'] != null
        ? new Department.fromJson(json['department'])
        : null;
    jobTitle = json['jobTitle'] != null
        ? new JobTitle.fromJson(json['jobTitle'])
        : null;
    jobPosition = json['jobPosition'] != null
        ? new JobPosition.fromJson(json['jobPosition'])
        : null;
    project =
        json['project'] != null ? new Project.fromJson(json['project']) : null;
    employee1 = json['employee1'] != null
        ? new Employee1.fromJson(json['employee1'])
        : null;
    approved1ById = json['approved1ById'] != null
        ? new Employee1.fromJson(json['approved1ById'])
        : null;
    approved2ById = json['approved2ById'] != null
        ? new Employee1.fromJson(json['approved2ById'])
        : null;
    approved3ById = json['approved3ById'] != null
        ? new Employee1.fromJson(json['approved3ById'])
        : null;
    appUser =
        json['appUser'] != null ? new AppUser.fromJson(json['appUser']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.employee != null) {
      data['employee'] = this.employee.toJson();
    }
    if (this.country != null) {
      data['country'] = this.country.toJson();
    }
    if (this.company != null) {
      data['company'] = this.company.toJson();
    }
    if (this.department != null) {
      data['department'] = this.department.toJson();
    }
    if (this.jobTitle != null) {
      data['jobTitle'] = this.jobTitle.toJson();
    }
    if (this.jobPosition != null) {
      data['jobPosition'] = this.jobPosition.toJson();
    }
    if (this.project != null) {
      data['project'] = this.project.toJson();
    }
    if (this.employee1 != null) {
      data['employee1'] = this.employee1.toJson();
    }
    if (this.approved1ById != null) {
      data['approved1ById'] = this.approved1ById.toJson();
    }
    if (this.approved2ById != null) {
      data['approved2ById'] = this.approved2ById.toJson();
    }
    if (this.approved3ById != null) {
      data['approved3ById'] = this.approved3ById.toJson();
    }
    if (this.appUser != null) {
      data['appUser'] = this.appUser.toJson();
    }
    return data;
  }
}

class Employee {
  String tenantId;
  String firstName;
  String middleName;
  String lastName;
  String fullName;
  String birthPlace;
  String birthDate;
  int gender;
  int religion;
  int marital;
  int nationality;
  int education;
  String street;
  String city;
  String stateProvince;
  String zipPostal;
  String phone;
  String fax;
  String email;
  String bankAccount;
  String nik;
  String npwp;
  String address;
  String userId;
  String employeeNumber;
  int employeeStatus;
  int changeType;
  bool isDisabled;
  String joinedDate;
  String terminationDate;
  String leaveDate;
  int baseSalary;
  int salary;
  int ptkp;
  int umk;
  String countryId;
  String companyId;
  String departmentId;
  String jobTitleId;
  String jobPositionId;
  String parentId;
  String deviceId;
  int bloodType;
  int payGroup;
  String marriageDate;
  String degree;
  String faculty;
  String major;
  String instituteName;
  String graduationYear;
  String gpa;
  int employeeType;
  String startDate;
  String exitDate;
  String exitReason;
  String businessPhone;
  String businessEmail;
  String directorateId;
  String divisionId;
  String pointofHire;
  String locationId;
  String projectId;
  String vesselId;
  String leaveGradeId;
  String payGradeId;
  String bankId;
  String contractStartDate;
  String contractEndDate;
  String familyCardNumber;
  String bpjsKsNumber;
  String bpjsFaskes;
  String bpjsKsStatus;
  String bpjsTkNumber;
  String passportNumber;
  String passportExpiredDate;
  String district;
  String subDistrict;
  String domicileAddress;
  String addressAccordingtoId;
  String savingBookNumber;
  String bankName;
  String userName;
  String password;
  String benefitTemplateId;
  String approved1ById;
  String approved2ById;
  String approved3ById;
  bool isDeleted;
  String deleterId;
  String deletionTime;
  String lastModificationTime;
  String lastModifierId;
  String creationTime;
  String creatorId;
  String id;

  Employee(
      {this.tenantId,
      this.firstName,
      this.middleName,
      this.lastName,
      this.fullName,
      this.birthPlace,
      this.birthDate,
      this.gender,
      this.religion,
      this.marital,
      this.nationality,
      this.education,
      this.street,
      this.city,
      this.stateProvince,
      this.zipPostal,
      this.phone,
      this.fax,
      this.email,
      this.bankAccount,
      this.nik,
      this.npwp,
      this.address,
      this.userId,
      this.employeeNumber,
      this.employeeStatus,
      this.changeType,
      this.isDisabled,
      this.joinedDate,
      this.terminationDate,
      this.leaveDate,
      this.baseSalary,
      this.salary,
      this.ptkp,
      this.umk,
      this.countryId,
      this.companyId,
      this.departmentId,
      this.jobTitleId,
      this.jobPositionId,
      this.parentId,
      this.deviceId,
      this.bloodType,
      this.payGroup,
      this.marriageDate,
      this.degree,
      this.faculty,
      this.major,
      this.instituteName,
      this.graduationYear,
      this.gpa,
      this.employeeType,
      this.startDate,
      this.exitDate,
      this.exitReason,
      this.businessPhone,
      this.businessEmail,
      this.directorateId,
      this.divisionId,
      this.pointofHire,
      this.locationId,
      this.projectId,
      this.vesselId,
      this.leaveGradeId,
      this.payGradeId,
      this.bankId,
      this.contractStartDate,
      this.contractEndDate,
      this.familyCardNumber,
      this.bpjsKsNumber,
      this.bpjsFaskes,
      this.bpjsKsStatus,
      this.bpjsTkNumber,
      this.passportNumber,
      this.passportExpiredDate,
      this.district,
      this.subDistrict,
      this.domicileAddress,
      this.addressAccordingtoId,
      this.savingBookNumber,
      this.bankName,
      this.userName,
      this.password,
      this.benefitTemplateId,
      this.approved1ById,
      this.approved2ById,
      this.approved3ById,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.lastModificationTime,
      this.lastModifierId,
      this.creationTime,
      this.creatorId,
      this.id});

  Employee.fromJson(Map<String, dynamic> json) {
    tenantId = json['tenantId'];
    firstName = json['firstName'];
    middleName = json['middleName'];
    lastName = json['lastName'];
    fullName = json['fullName'];
    birthPlace = json['birthPlace'];
    birthDate = json['birthDate'];
    gender = json['gender'];
    religion = json['religion'];
    marital = json['marital'];
    nationality = json['nationality'];
    education = json['education'];
    street = json['street'];
    city = json['city'];
    stateProvince = json['stateProvince'];
    zipPostal = json['zipPostal'];
    phone = json['phone'];
    fax = json['fax'];
    email = json['email'];
    bankAccount = json['bankAccount'];
    nik = json['nik'];
    npwp = json['npwp'];
    address = json['address'];
    userId = json['userId'];
    employeeNumber = json['employeeNumber'];
    employeeStatus = json['employeeStatus'];
    changeType = json['changeType'];
    isDisabled = json['isDisabled'];
    joinedDate = json['joinedDate'];
    terminationDate = json['terminationDate'];
    leaveDate = json['leaveDate'];
    baseSalary = json['baseSalary'];
    salary = json['salary'];
    ptkp = json['ptkp'];
    umk = json['umk'];
    countryId = json['countryId'];
    companyId = json['companyId'];
    departmentId = json['departmentId'];
    jobTitleId = json['jobTitleId'];
    jobPositionId = json['jobPositionId'];
    parentId = json['parentId'];
    deviceId = json['deviceId'];
    bloodType = json['bloodType'];
    payGroup = json['payGroup'];
    marriageDate = json['marriageDate'];
    degree = json['degree'];
    faculty = json['faculty'];
    major = json['major'];
    instituteName = json['instituteName'];
    graduationYear = json['graduationYear'];
    gpa = json['gpa'];
    employeeType = json['employeeType'];
    startDate = json['startDate'];
    exitDate = json['exitDate'];
    exitReason = json['exitReason'];
    businessPhone = json['businessPhone'];
    businessEmail = json['businessEmail'];
    directorateId = json['directorateId'];
    divisionId = json['divisionId'];
    pointofHire = json['pointofHire'];
    locationId = json['locationId'];
    projectId = json['projectId'];
    vesselId = json['vesselId'];
    leaveGradeId = json['leaveGradeId'];
    payGradeId = json['payGradeId'];
    bankId = json['bankId'];
    contractStartDate = json['contractStartDate'];
    contractEndDate = json['contractEndDate'];
    familyCardNumber = json['familyCardNumber'];
    bpjsKsNumber = json['bpjsKsNumber'];
    bpjsFaskes = json['bpjsFaskes'];
    bpjsKsStatus = json['bpjsKsStatus'];
    bpjsTkNumber = json['bpjsTkNumber'];
    passportNumber = json['passportNumber'];
    passportExpiredDate = json['passportExpiredDate'];
    district = json['district'];
    subDistrict = json['subDistrict'];
    domicileAddress = json['domicileAddress'];
    addressAccordingtoId = json['addressAccordingtoId'];
    savingBookNumber = json['savingBookNumber'];
    bankName = json['bankName'];
    userName = json['userName'];
    password = json['password'];
    benefitTemplateId = json['benefitTemplateId'];
    approved1ById = json['approved1ById'];
    approved2ById = json['approved2ById'];
    approved3ById = json['approved3ById'];
    isDeleted = json['isDeleted'];
    deleterId = json['deleterId'];
    deletionTime = json['deletionTime'];
    lastModificationTime = json['lastModificationTime'];
    lastModifierId = json['lastModifierId'];
    creationTime = json['creationTime'];
    creatorId = json['creatorId'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tenantId'] = this.tenantId;
    data['firstName'] = this.firstName;
    data['middleName'] = this.middleName;
    data['lastName'] = this.lastName;
    data['fullName'] = this.fullName;
    data['birthPlace'] = this.birthPlace;
    data['birthDate'] = this.birthDate;
    data['gender'] = this.gender;
    data['religion'] = this.religion;
    data['marital'] = this.marital;
    data['nationality'] = this.nationality;
    data['education'] = this.education;
    data['street'] = this.street;
    data['city'] = this.city;
    data['stateProvince'] = this.stateProvince;
    data['zipPostal'] = this.zipPostal;
    data['phone'] = this.phone;
    data['fax'] = this.fax;
    data['email'] = this.email;
    data['bankAccount'] = this.bankAccount;
    data['nik'] = this.nik;
    data['npwp'] = this.npwp;
    data['address'] = this.address;
    data['userId'] = this.userId;
    data['employeeNumber'] = this.employeeNumber;
    data['employeeStatus'] = this.employeeStatus;
    data['changeType'] = this.changeType;
    data['isDisabled'] = this.isDisabled;
    data['joinedDate'] = this.joinedDate;
    data['terminationDate'] = this.terminationDate;
    data['leaveDate'] = this.leaveDate;
    data['baseSalary'] = this.baseSalary;
    data['salary'] = this.salary;
    data['ptkp'] = this.ptkp;
    data['umk'] = this.umk;
    data['countryId'] = this.countryId;
    data['companyId'] = this.companyId;
    data['departmentId'] = this.departmentId;
    data['jobTitleId'] = this.jobTitleId;
    data['jobPositionId'] = this.jobPositionId;
    data['parentId'] = this.parentId;
    data['deviceId'] = this.deviceId;
    data['bloodType'] = this.bloodType;
    data['payGroup'] = this.payGroup;
    data['marriageDate'] = this.marriageDate;
    data['degree'] = this.degree;
    data['faculty'] = this.faculty;
    data['major'] = this.major;
    data['instituteName'] = this.instituteName;
    data['graduationYear'] = this.graduationYear;
    data['gpa'] = this.gpa;
    data['employeeType'] = this.employeeType;
    data['startDate'] = this.startDate;
    data['exitDate'] = this.exitDate;
    data['exitReason'] = this.exitReason;
    data['businessPhone'] = this.businessPhone;
    data['businessEmail'] = this.businessEmail;
    data['directorateId'] = this.directorateId;
    data['divisionId'] = this.divisionId;
    data['pointofHire'] = this.pointofHire;
    data['locationId'] = this.locationId;
    data['projectId'] = this.projectId;
    data['vesselId'] = this.vesselId;
    data['leaveGradeId'] = this.leaveGradeId;
    data['payGradeId'] = this.payGradeId;
    data['bankId'] = this.bankId;
    data['contractStartDate'] = this.contractStartDate;
    data['contractEndDate'] = this.contractEndDate;
    data['familyCardNumber'] = this.familyCardNumber;
    data['bpjsKsNumber'] = this.bpjsKsNumber;
    data['bpjsFaskes'] = this.bpjsFaskes;
    data['bpjsKsStatus'] = this.bpjsKsStatus;
    data['bpjsTkNumber'] = this.bpjsTkNumber;
    data['passportNumber'] = this.passportNumber;
    data['passportExpiredDate'] = this.passportExpiredDate;
    data['district'] = this.district;
    data['subDistrict'] = this.subDistrict;
    data['domicileAddress'] = this.domicileAddress;
    data['addressAccordingtoId'] = this.addressAccordingtoId;
    data['savingBookNumber'] = this.savingBookNumber;
    data['bankName'] = this.bankName;
    data['userName'] = this.userName;
    data['password'] = this.password;
    data['benefitTemplateId'] = this.benefitTemplateId;
    data['approved1ById'] = this.approved1ById;
    data['approved2ById'] = this.approved2ById;
    data['approved3ById'] = this.approved3ById;
    data['isDeleted'] = this.isDeleted;
    data['deleterId'] = this.deleterId;
    data['deletionTime'] = this.deletionTime;
    data['lastModificationTime'] = this.lastModificationTime;
    data['lastModifierId'] = this.lastModifierId;
    data['creationTime'] = this.creationTime;
    data['creatorId'] = this.creatorId;
    data['id'] = this.id;
    return data;
  }
}

class Country {
  String code;
  String name;
  String codeName;
  String iso3;
  String codeNumber;
  bool isDeleted;
  String deleterId;
  String deletionTime;
  String lastModificationTime;
  String lastModifierId;
  String creationTime;
  String creatorId;
  String id;

  Country(
      {this.code,
      this.name,
      this.codeName,
      this.iso3,
      this.codeNumber,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.lastModificationTime,
      this.lastModifierId,
      this.creationTime,
      this.creatorId,
      this.id});

  Country.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    codeName = json['codeName'];
    iso3 = json['iso3'];
    codeNumber = json['codeNumber'];
    isDeleted = json['isDeleted'];
    deleterId = json['deleterId'];
    deletionTime = json['deletionTime'];
    lastModificationTime = json['lastModificationTime'];
    lastModifierId = json['lastModifierId'];
    creationTime = json['creationTime'];
    creatorId = json['creatorId'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['name'] = this.name;
    data['codeName'] = this.codeName;
    data['iso3'] = this.iso3;
    data['codeNumber'] = this.codeNumber;
    data['isDeleted'] = this.isDeleted;
    data['deleterId'] = this.deleterId;
    data['deletionTime'] = this.deletionTime;
    data['lastModificationTime'] = this.lastModificationTime;
    data['lastModifierId'] = this.lastModifierId;
    data['creationTime'] = this.creationTime;
    data['creatorId'] = this.creatorId;
    data['id'] = this.id;
    return data;
  }
}

class Company {
  String tenantId;
  String code;
  int companyType;
  String name;
  String fullName;
  String photo;
  String profile;
  String description;
  String webSite;
  String street;
  String city;
  String province;
  String zipPostal;
  String phone;
  String fax;
  String email;
  String npwp;
  String address;
  int officeType;
  String establishDate;
  String countryId;
  int minimumRegionalWage;
  bool isDeleted;
  String deleterId;
  String deletionTime;
  String lastModificationTime;
  String lastModifierId;
  String creationTime;
  String creatorId;
  String id;

  Company(
      {this.tenantId,
      this.code,
      this.companyType,
      this.name,
      this.fullName,
      this.photo,
      this.profile,
      this.description,
      this.webSite,
      this.street,
      this.city,
      this.province,
      this.zipPostal,
      this.phone,
      this.fax,
      this.email,
      this.npwp,
      this.address,
      this.officeType,
      this.establishDate,
      this.countryId,
      this.minimumRegionalWage,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.lastModificationTime,
      this.lastModifierId,
      this.creationTime,
      this.creatorId,
      this.id});

  Company.fromJson(Map<String, dynamic> json) {
    tenantId = json['tenantId'];
    code = json['code'];
    companyType = json['companyType'];
    name = json['name'];
    fullName = json['fullName'];
    photo = json['photo'];
    profile = json['profile'];
    description = json['description'];
    webSite = json['webSite'];
    street = json['street'];
    city = json['city'];
    province = json['province'];
    zipPostal = json['zipPostal'];
    phone = json['phone'];
    fax = json['fax'];
    email = json['email'];
    npwp = json['npwp'];
    address = json['address'];
    officeType = json['officeType'];
    establishDate = json['establishDate'];
    countryId = json['countryId'];
    minimumRegionalWage = json['minimumRegionalWage'];
    isDeleted = json['isDeleted'];
    deleterId = json['deleterId'];
    deletionTime = json['deletionTime'];
    lastModificationTime = json['lastModificationTime'];
    lastModifierId = json['lastModifierId'];
    creationTime = json['creationTime'];
    creatorId = json['creatorId'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tenantId'] = this.tenantId;
    data['code'] = this.code;
    data['companyType'] = this.companyType;
    data['name'] = this.name;
    data['fullName'] = this.fullName;
    data['photo'] = this.photo;
    data['profile'] = this.profile;
    data['description'] = this.description;
    data['webSite'] = this.webSite;
    data['street'] = this.street;
    data['city'] = this.city;
    data['province'] = this.province;
    data['zipPostal'] = this.zipPostal;
    data['phone'] = this.phone;
    data['fax'] = this.fax;
    data['email'] = this.email;
    data['npwp'] = this.npwp;
    data['address'] = this.address;
    data['officeType'] = this.officeType;
    data['establishDate'] = this.establishDate;
    data['countryId'] = this.countryId;
    data['minimumRegionalWage'] = this.minimumRegionalWage;
    data['isDeleted'] = this.isDeleted;
    data['deleterId'] = this.deleterId;
    data['deletionTime'] = this.deletionTime;
    data['lastModificationTime'] = this.lastModificationTime;
    data['lastModifierId'] = this.lastModifierId;
    data['creationTime'] = this.creationTime;
    data['creatorId'] = this.creatorId;
    data['id'] = this.id;
    return data;
  }
}

class Department {
  String tenantId;
  String code;
  String name;
  String description;
  bool isDeleted;
  String deleterId;
  String deletionTime;
  String lastModificationTime;
  String lastModifierId;
  String creationTime;
  String creatorId;
  String id;

  Department(
      {this.tenantId,
      this.code,
      this.name,
      this.description,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.lastModificationTime,
      this.lastModifierId,
      this.creationTime,
      this.creatorId,
      this.id});

  Department.fromJson(Map<String, dynamic> json) {
    tenantId = json['tenantId'];
    code = json['code'];
    name = json['name'];
    description = json['description'];
    isDeleted = json['isDeleted'];
    deleterId = json['deleterId'];
    deletionTime = json['deletionTime'];
    lastModificationTime = json['lastModificationTime'];
    lastModifierId = json['lastModifierId'];
    creationTime = json['creationTime'];
    creatorId = json['creatorId'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tenantId'] = this.tenantId;
    data['code'] = this.code;
    data['name'] = this.name;
    data['description'] = this.description;
    data['isDeleted'] = this.isDeleted;
    data['deleterId'] = this.deleterId;
    data['deletionTime'] = this.deletionTime;
    data['lastModificationTime'] = this.lastModificationTime;
    data['lastModifierId'] = this.lastModifierId;
    data['creationTime'] = this.creationTime;
    data['creatorId'] = this.creatorId;
    data['id'] = this.id;
    return data;
  }
}

class JobTitle {
  String tenantId;
  String code;
  String name;
  String description;
  bool isOvertime;
  bool isDeleted;
  String deleterId;
  String deletionTime;
  String lastModificationTime;
  String lastModifierId;
  String creationTime;
  String creatorId;
  String id;

  JobTitle(
      {this.tenantId,
      this.code,
      this.name,
      this.description,
      this.isOvertime,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.lastModificationTime,
      this.lastModifierId,
      this.creationTime,
      this.creatorId,
      this.id});

  JobTitle.fromJson(Map<String, dynamic> json) {
    tenantId = json['tenantId'];
    code = json['code'];
    name = json['name'];
    description = json['description'];
    isOvertime = json['isOvertime'];
    isDeleted = json['isDeleted'];
    deleterId = json['deleterId'];
    deletionTime = json['deletionTime'];
    lastModificationTime = json['lastModificationTime'];
    lastModifierId = json['lastModifierId'];
    creationTime = json['creationTime'];
    creatorId = json['creatorId'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tenantId'] = this.tenantId;
    data['code'] = this.code;
    data['name'] = this.name;
    data['description'] = this.description;
    data['isOvertime'] = this.isOvertime;
    data['isDeleted'] = this.isDeleted;
    data['deleterId'] = this.deleterId;
    data['deletionTime'] = this.deletionTime;
    data['lastModificationTime'] = this.lastModificationTime;
    data['lastModifierId'] = this.lastModifierId;
    data['creationTime'] = this.creationTime;
    data['creatorId'] = this.creatorId;
    data['id'] = this.id;
    return data;
  }
}

class JobPosition {
  String tenantId;
  String code;
  String name;
  String description;
  String group;
  String subGroup;
  bool isDeleted;
  String deleterId;
  String deletionTime;
  String lastModificationTime;
  String lastModifierId;
  String creationTime;
  String creatorId;
  String id;

  JobPosition(
      {this.tenantId,
      this.code,
      this.name,
      this.description,
      this.group,
      this.subGroup,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.lastModificationTime,
      this.lastModifierId,
      this.creationTime,
      this.creatorId,
      this.id});

  JobPosition.fromJson(Map<String, dynamic> json) {
    tenantId = json['tenantId'];
    code = json['code'];
    name = json['name'];
    description = json['description'];
    group = json['group'];
    subGroup = json['subGroup'];
    isDeleted = json['isDeleted'];
    deleterId = json['deleterId'];
    deletionTime = json['deletionTime'];
    lastModificationTime = json['lastModificationTime'];
    lastModifierId = json['lastModifierId'];
    creationTime = json['creationTime'];
    creatorId = json['creatorId'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tenantId'] = this.tenantId;
    data['code'] = this.code;
    data['name'] = this.name;
    data['description'] = this.description;
    data['group'] = this.group;
    data['subGroup'] = this.subGroup;
    data['isDeleted'] = this.isDeleted;
    data['deleterId'] = this.deleterId;
    data['deletionTime'] = this.deletionTime;
    data['lastModificationTime'] = this.lastModificationTime;
    data['lastModifierId'] = this.lastModifierId;
    data['creationTime'] = this.creationTime;
    data['creatorId'] = this.creatorId;
    data['id'] = this.id;
    return data;
  }
}

class Project {
  String code;
  String name;
  String start;
  String end;
  String location;
  String lat;
  String lng;
  String companyId;
  String customerId;
  bool isDeleted;
  String deleterId;
  String deletionTime;
  String lastModificationTime;
  String lastModifierId;
  String creationTime;
  String creatorId;
  String id;

  Project(
      {this.code,
      this.name,
      this.start,
      this.end,
      this.location,
      this.lat,
      this.lng,
      this.companyId,
      this.customerId,
      this.isDeleted,
      this.deleterId,
      this.deletionTime,
      this.lastModificationTime,
      this.lastModifierId,
      this.creationTime,
      this.creatorId,
      this.id});

  Project.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    start = json['start'];
    end = json['end'];
    location = json['location'];
    lat = json['lat'];
    lng = json['lng'];
    companyId = json['companyId'];
    customerId = json['customerId'];
    isDeleted = json['isDeleted'];
    deleterId = json['deleterId'];
    deletionTime = json['deletionTime'];
    lastModificationTime = json['lastModificationTime'];
    lastModifierId = json['lastModifierId'];
    creationTime = json['creationTime'];
    creatorId = json['creatorId'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['name'] = this.name;
    data['start'] = this.start;
    data['end'] = this.end;
    data['location'] = this.location;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['companyId'] = this.companyId;
    data['customerId'] = this.customerId;
    data['isDeleted'] = this.isDeleted;
    data['deleterId'] = this.deleterId;
    data['deletionTime'] = this.deletionTime;
    data['lastModificationTime'] = this.lastModificationTime;
    data['lastModifierId'] = this.lastModifierId;
    data['creationTime'] = this.creationTime;
    data['creatorId'] = this.creatorId;
    data['id'] = this.id;
    return data;
  }
}

class Employee1 {
  String fullName;
  String id;

  Employee1({this.fullName, this.id});

  Employee1.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['id'] = this.id;
    return data;
  }
}

class AppUser {
  String userName;
  String name;
  String surname;
  String email;
  String phoneNumber;

  AppUser(
      {this.userName, this.name, this.surname, this.email, this.phoneNumber});

  AppUser.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    name = json['name'];
    surname = json['surname'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    return data;
  }
}
