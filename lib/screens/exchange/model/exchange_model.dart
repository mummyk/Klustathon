/*
  ==========
  Step - 1 [Create Model]
  ==========
*/

class ExchangeModel {
  final String base;
  final String image;
  final String country;
  final String currency;
  final double rate;

  const ExchangeModel({
    required this.base,
    required this.image,
    required this.country,
    required this.currency,
    required this.rate,
  });

  Map<String, dynamic> toJson() {
    return {
      "base": base,
      "image": image,
      "country": country,
      "currency": currency,
      "rate": rate,
    };
  }
}
