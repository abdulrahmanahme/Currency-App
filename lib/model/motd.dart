import 'dart:convert';

class Motd {
  final String msg;
  final String url;
  Motd({
    required this.msg,
    required this.url,
  });

  Motd copyWith({
    String? msg,
    String? url,
  }) {
    return Motd(
      msg: msg ?? this.msg,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'msg': msg,
      'url': url,
    };
  }

  factory Motd.fromMap(Map<String, dynamic> map) {
    return Motd(
      msg: map['msg'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Motd.fromJson(String source) => Motd.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Motd(msg: $msg, url: $url)';

  @override
  bool operator ==(covariant Motd other) {
    if (identical(this, other)) return true;
  
    return 
      other.msg == msg &&
      other.url == url;
  }

  @override
  int get hashCode => msg.hashCode ^ url.hashCode;
}