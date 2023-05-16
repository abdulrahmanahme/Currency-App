class ExchangeRate {
   String? base;
   String ?date;
  Map<String, num> rates;

  ExchangeRate({
   this.base,
  this.date,
    required this.rates,
  });

  factory ExchangeRate.fromJson({Map<String, dynamic>? json}) {
  return ExchangeRate(
      base: json!['base'],
      date: json['date'],
      rates: Map<String,num>.from( json['rates']),
    );
    
  }
}
