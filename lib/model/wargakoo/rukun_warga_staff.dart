import "rukun_warga.dart";
import "job_position.dart";
import "warga.dart";

class RukunWargaStaff {
  RukunWargaStaff rukunWargaStaff;
  RukunWarga rukunWarga;
  JobPosition jobPosition;
  Warga warga;

  RukunWargaStaff(
      {this.rukunWargaStaff, this.rukunWarga, this.jobPosition, this.warga});

  factory RukunWargaStaff.fromJson(Map<String, dynamic> json) {
    return RukunWargaStaff(
      rukunWargaStaff: json['rukunWargaStaff'] != null
          ? new RukunWargaStaff.fromJson(json['rukunWargaStaff'])
          : null,
      rukunWarga: json['rukunWarga'] != null
          ? new RukunWarga.fromJson(json['rukunWarga'])
          : null,
      jobPosition: json['jobPosition'] != null
          ? new JobPosition.fromJson(json['jobPosition'])
          : null,
      warga: json['warga'] != null ? new Warga.fromJson(json['warga']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.rukunWargaStaff != null) {
      data['rukunWargaStaff'] = this.rukunWargaStaff.toJson();
    }
    if (this.rukunWarga != null) {
      data['rukunWarga'] = this.rukunWarga.toJson();
    }
    if (this.jobPosition != null) {
      data['jobPosition'] = this.jobPosition.toJson();
    }
    if (this.warga != null) {
      data['warga'] = this.warga.toJson();
    }
    return data;
  }
}
