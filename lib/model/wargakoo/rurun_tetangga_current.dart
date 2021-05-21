import "rukun_warga.dart";
import "rukun_tetangga.dart";
import "rukun_tetangga_staff.dart";
import "dashboard.dart";

class RurunTetanggaCurrent {
  RukunWarga rukunWarga;
  RukunTetangga rukunTetangga;
  List<RukunTetanggaStaff> rukunTetanggaStaff;
  Dashboard dashboard;

  RurunTetanggaCurrent(
      {this.rukunWarga,
      this.rukunTetangga,
      this.rukunTetanggaStaff,
      this.dashboard});

  factory RurunTetanggaCurrent.fromJson(Map<String, dynamic> json) {
    return RurunTetanggaCurrent(
      rukunWarga: json['rukunWarga'] != null
          ? new RukunWarga.fromJson(json['rukunWarga'])
          : null,
      rukunTetangga: json['rukunTetangga'] != null
          ? new RukunTetangga.fromJson(json['rukunTetangga'])
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
    if (this.rukunWarga != null) {
      data['rukunWarga'] = this.rukunWarga.toJson();
    }
    if (this.rukunTetangga != null) {
      data['rukunTetangga'] = this.rukunTetangga.toJson();
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
