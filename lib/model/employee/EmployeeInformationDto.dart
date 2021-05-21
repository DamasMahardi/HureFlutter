class EmployeeInformationDto {
  String id;
  String tenantId;
  String firstName;
  String middleName;
  String lastName;
  String fullName;
  String photo;
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
  int ptkp;
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
  String companyName;
  String companyEmail;
  String companyPhone;
  String companyAddress;
  String companyWebsite;
  String departmentName;
  String jobTitleName;
  String jobPositionName;
  String parentName;
  String userName;
  bool isOvertime;
  String approved1ById;
  String approved2ById;
  String approved3ById;

  EmployeeInformationDto(
      {this.id,
      this.tenantId,
      this.firstName,
      this.middleName,
      this.lastName,
      this.fullName,
      this.photo,
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
      this.ptkp,
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
      this.companyName,
      this.companyEmail,
      this.companyPhone,
      this.companyAddress,
      this.companyWebsite,
      this.departmentName,
      this.jobTitleName,
      this.jobPositionName,
      this.parentName,
      this.userName,
      this.isOvertime,
      this.approved1ById,
      this.approved2ById,
      this.approved3ById});

  EmployeeInformationDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tenantId = json['tenantId'];
    firstName = json['firstName'];
    middleName = json['middleName'];
    lastName = json['lastName'];
    fullName = json['fullName'];
    photo = json['photo'];
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
    ptkp = json['ptkp'];
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
    companyName = json['companyName'];
    companyEmail = json['companyEmail'];
    companyPhone = json['companyPhone'];
    companyAddress = json['companyAddress'];
    companyWebsite = json['companyWebsite'];
    departmentName = json['departmentName'];
    jobTitleName = json['jobTitleName'];
    jobPositionName = json['jobPositionName'];
    parentName = json['parentName'];
    userName = json['userName'];
    isOvertime = json['isOvertime'];
    approved1ById = json['approved1ById'];
    approved2ById = json['approved2ById'];
    approved3ById = json['approved3ById'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tenantId'] = this.tenantId;
    data['firstName'] = this.firstName;
    data['middleName'] = this.middleName;
    data['lastName'] = this.lastName;
    data['fullName'] = this.fullName;
    data['photo'] = this.photo;
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
    data['ptkp'] = this.ptkp;
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
    data['companyName'] = this.companyName;
    data['companyEmail'] = this.companyEmail;
    data['companyPhone'] = this.companyPhone;
    data['companyAddress'] = this.companyAddress;
    data['companyWebsite'] = this.companyWebsite;
    data['departmentName'] = this.departmentName;
    data['jobTitleName'] = this.jobTitleName;
    data['jobPositionName'] = this.jobPositionName;
    data['parentName'] = this.parentName;
    data['userName'] = this.userName;
    data['isOvertime'] = this.isOvertime;
    data['approved1ById'] = this.approved1ById;
    data['approved2ById'] = this.approved2ById;
    data['approved3ById'] = this.approved3ById;
    return data;
  }
}
