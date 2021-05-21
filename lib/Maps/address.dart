class Address {
  final String address;
  final double latitude;
  final double longitude;
  final String addressType;
  final String location;

  Address(this.address, this.latitude, this.longitude, this.addressType,
      this.location);

  Address.fromJson(Map<String, dynamic> json)
      : address = json['address'],
        latitude = json['latitude'],
        longitude = json['longitude'],
        addressType = json['addressType'],
        location = json['location'];

  Map<String, dynamic> toJson() => {
        'address': address,
        'latitude': latitude,
        'longitude': longitude,
        'addressType': addressType,
        'location': location,
      };
}
