
class CurrencyDateModel {
   String? base;
   String ?date;
   String ?startDate;
   String ?endDate;

  Map<String, Map<String, dynamic>> rates;

  CurrencyDateModel({
   this.base,
  this.date,
  this.startDate,
  this.endDate,
    required this.rates,
  });

  factory CurrencyDateModel.fromJson({Map<String, dynamic>? json}) {
  return CurrencyDateModel(
      base: json!['base'],
      date: json['date'],
      startDate: json['start_date'],
      endDate:json['start_date'] ,
      
      
      rates: Map<String, Map<String, dynamic>>.from( json['rates']),
    );
    
  }
}