import 'rukun_warga.dart';
import 'wilayah.dart';

class RukunWargaItems {
  RukunWarga rukunWarga;
  Wilayah wilayah;

  RukunWargaItems({this.rukunWarga, this.wilayah});

  factory RukunWargaItems.fromJson(Map<String, dynamic> json) {
    return RukunWargaItems(
      rukunWarga: json['rukunWarga'] != null
          ? new RukunWarga.fromJson(json['rukunWarga'])
          : null,
      wilayah: json['wilayah'] != null
          ? new Wilayah.fromJson(json['wilayah'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.rukunWarga != null) {
      data['rukunWarga'] = this.rukunWarga.toJson();
    }
    if (this.wilayah != null) {
      data['wilayah'] = this.wilayah.toJson();
    }
    return data;
  }
}
