import "rukun_warga.dart";
import "rukun_warga_staff.dart";
import "rukun_tetangga.dart";
import "rukun_tetangga_staff.dart";
import "dashboard.dart";

class RukunWargaCurrent {
  String tenantName;
  RukunWarga rukunWarga;
  List<RukunWargaStaff> rukunWargaStaff;
  List<RukunTetangga> rukunTetangga;
  List<RukunTetanggaStaff> rukunTetanggaStaff;
  Dashboard dashboard;

  RukunWargaCurrent(
      {this.tenantName,
      this.rukunWarga,
      this.rukunWargaStaff,
      this.rukunTetangga,
      this.rukunTetanggaStaff,
      this.dashboard});

  factory RukunWargaCurrent.fromJson(Map<String, dynamic> json) {
    return RukunWargaCurrent(
      tenantName: json['tenantName'],
      rukunWarga: json['rukunWarga'] != null
          ? new RukunWarga.fromJson(json['rukunWarga'])
          : null,
      rukunWargaStaff: json['rukunWargaStaff'] != null
          ? json['rukunWargaStaff']
              .map<RukunWargaStaff>((v) => new RukunWargaStaff.fromJson(v))
              .toList()
          : null,
      rukunTetangga: json['rukunTetangga'] != null
          ? json['rukunTetangga']
              .map<RukunTetangga>((v) => new RukunTetangga.fromJson(v))
              .toList()
          : null,
      rukunTetanggaStaff: json['rukunTetanggaStaff'] != null
          ? json['rukunTetanggaStaff']
              .map<RukunTetanggaStaff>(
                  (v) => new RukunTetanggaStaff.fromJson(v))
              .toList()
          : null,
      dashboard: json['dashboard'] != null
          ? new Dashboard.fromJson(json['dashboard'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tenantName'] = this.tenantName;
    if (this.rukunWarga != null) {
      data['rukunWarga'] = this.rukunWarga.toJson();
    }
    if (this.rukunWargaStaff != null) {
      data['rukunWargaStaff'] =
          this.rukunWargaStaff.map((v) => v.toJson()).toList();
    }
    if (this.rukunTetangga != null) {
      data['rukunTetangga'] =
          this.rukunTetangga.map((v) => v.toJson()).toList();
    }
    if (this.rukunTetanggaStaff != null) {
      data['rukunTetanggaStaff'] =
          this.rukunTetanggaStaff.map((v) => v.toJson()).toList();
    }
    if (this.dashboard != null) {
      data['dashboard'] = this.dashboard.toJson();
    }
    return data;
  }
}
