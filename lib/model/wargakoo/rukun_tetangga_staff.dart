import "rukun_tetangga.dart";
import "job_position.dart";
import "warga.dart";

class RukunTetanggaStaff {
  RukunTetanggaStaff rukunTetanggaStaff;
  RukunTetangga rukunTetangga;
  JobPosition jobPosition;
  Warga warga;

  RukunTetanggaStaff(
      {this.rukunTetanggaStaff,
      this.rukunTetangga,
      this.jobPosition,
      this.warga});

  factory RukunTetanggaStaff.fromJson(Map<String, dynamic> json) {
    return RukunTetanggaStaff(
      rukunTetanggaStaff: json['rukunTetanggaStaff'] != null
          ? new RukunTetanggaStaff.fromJson(json['rukunTetanggaStaff'])
          : null,
      rukunTetangga: json['rukunTetangga'] != null
          ? new RukunTetangga.fromJson(json['rukunTetangga'])
          : null,
      jobPosition: json['jobPosition'] != null
          ? new JobPosition.fromJson(json['jobPosition'])
          : null,
      warga: json['warga'] != null ? new Warga.fromJson(json['warga']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.rukunTetanggaStaff != null) {
      data['rukunTetanggaStaff'] = this.rukunTetanggaStaff.toJson();
    }
    if (this.rukunTetangga != null) {
      data['rukunTetangga'] = this.rukunTetangga.toJson();
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
