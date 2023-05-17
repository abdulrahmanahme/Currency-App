
class CurrencyConversionModel {
  final Motd motd;
  final bool success;
  final Query query;
  final Info info;
  final bool historical;
  final String date;
  final double result;

  CurrencyConversionModel({
    required this.motd,
    required this.success,
    required this.query,
    required this.info,
    required this.historical,
    required this.date,
    required this.result,
  });

  factory CurrencyConversionModel.fromJson(Map<String, dynamic> json) {
    return CurrencyConversionModel(
      motd: Motd.fromJson(json['motd']),
      success: json['success'],
      query: Query.fromJson(json['query']),
      info: Info.fromJson(json['info']),
      historical: json['historical'],
      date: json['date'],
      result: double.parse(json['result'].toString()),
    );
  }
}

class Motd {
  final String msg;
  final String url;

  Motd({required this.msg, required this.url});

  factory Motd.fromJson(Map<String, dynamic> json) {
    return Motd(
      msg: json['msg'],
      url: json['url'],
    );
  }
}

class Query {
  final String from;
  final String to;
  final int amount;

  Query({required this.from, required this.to, required this.amount});

  factory Query.fromJson(Map<String, dynamic> json) {
    return Query(
      from: json['from'],
      to: json['to'],
      amount: json['amount'],
    );
  }
}

class Info {
  final double rate;

  Info({required this.rate});

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      rate: double.parse(json['rate'].toString()),
    );
  }
}
