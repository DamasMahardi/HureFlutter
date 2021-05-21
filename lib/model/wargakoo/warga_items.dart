import 'warga.dart';
import 'rukun_tetangga.dart';

class WargaItems {
  Warga warga;
  RukunTetangga rukunTetangga;

  WargaItems({this.warga, this.rukunTetangga});

  factory WargaItems.fromJson(Map<String, dynamic> json) {
    return WargaItems(
      warga: json['warga'] != null ? new Warga.fromJson(json['warga']) : null,
      rukunTetangga: json['rukunTetangga'] != null
          ? new RukunTetangga.fromJson(json['rukunTetangga'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.warga != null) {
      data['warga'] = this.warga.toJson();
    }
    if (this.rukunTetangga != null) {
      data['rukunTetangga'] = this.rukunTetangga.toJson();
    }
    return data;
  }
}
