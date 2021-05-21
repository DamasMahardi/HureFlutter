import 'rukun_tetangga.dart';
import 'rukun_warga.dart';

class RukunTetanggaItems {
  RukunTetangga rukunTetangga;
  RukunWarga rukunWarga;

  RukunTetanggaItems({this.rukunTetangga, this.rukunWarga});

  factory RukunTetanggaItems.fromJson(Map<String, dynamic> json) {
    return RukunTetanggaItems(
      rukunTetangga: json['rukunTetangga'] != null
          ? new RukunTetangga.fromJson(json['rukunTetangga'])
          : null,
      rukunWarga: json['rukunWarga'] != null
          ? new RukunWarga.fromJson(json['rukunWarga'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.rukunTetangga != null) {
      data['rukunTetangga'] = this.rukunTetangga.toJson();
    }
    if (this.rukunWarga != null) {
      data['rukunWarga'] = this.rukunWarga.toJson();
    }
    return data;
  }
}
