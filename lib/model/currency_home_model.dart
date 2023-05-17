class CurrencyHomeModel {
   String? base;
   String ?date;
  Map<String, num> rates;

  CurrencyHomeModel ({
   this.base,
  this.date,
    required this.rates,
  });

  factory CurrencyHomeModel.fromJson({Map<String, dynamic>? json}) {
  return CurrencyHomeModel(
      base: json!['base'],
      date: json['date'],
      rates: Map<String,num>.from( json['rates']),
    );
    
  }
}

