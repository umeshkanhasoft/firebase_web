class MovieItem {
  MovieItem({
    String? id,
    String? ih,
    String? iv,
    String? mn,
    String? hf,
    String? lng,
    String? trailer,
    String? qlty,
    String? gn,
    String? cg,
    String? s1,
    String? s2,
    String? tape,
    String? s4,
    String? p,
    String? s41,
    String? s42,
    String? s43,
    String? s44,
  }) {
    _id = id;
    _ih = ih;
    _iv = iv;
    _mn = mn;
    _hf = hf;
    _lng = lng;
    _trailer = trailer;
    _qlty = qlty;
    _gn = gn;
    _cg = cg;
    _s1 = s1;
    _s2 = s2;
    _tape = tape;
    _s4 = s4;
    _p = p;
    _s41 = s41;
    _s42 = s42;
    _s43 = s43;
    _s44 = s44;
  }

  MovieItem.fromJson(dynamic json) {
    _id = json['id'];
    _ih = json['IH'];
    _iv = json['IV'];
    _mn = json['mn'];
    _hf = json['hf'];
    _lng = json['lng'];
    _trailer = json['trailer'];
    _qlty = json['qlty'];
    _gn = json['gn'];
    _cg = json['cg'];
    _s1 = json['s1'];
    _s2 = json['s2'];
    _tape = json['tape'];
    _s4 = json['s4'];
    _p = json['480p'];
    _s41 = json['4s1'];
    _s42 = json['4s2'];
    _s43 = json['4s3'];
    _s44 = json['4s4'];
  }

  String? _id;
  String? _ih;
  String? _iv;
  String? _mn;
  String? _hf;
  String? _lng;
  String? _trailer;
  String? _qlty;
  String? _gn;
  String? _cg;
  String? _s1;
  String? _s2;
  String? _tape;
  String? _s4;
  String? _p;
  String? _s41;
  String? _s42;
  String? _s43;
  String? _s44;

  MovieItem copyWith({
    String? id,
    String? ih,
    String? iv,
    String? mn,
    String? hf,
    String? lng,
    String? trailer,
    String? qlty,
    String? gn,
    String? cg,
    String? s1,
    String? s2,
    String? tape,
    String? s4,
    String? p,
    String? s41,
    String? s42,
    String? s43,
    String? s44,
  }) =>
      MovieItem(
        id: id ?? _id,
        ih: ih ?? _ih,
        iv: iv ?? _iv,
        mn: mn ?? _mn,
        hf: hf ?? _hf,
        lng: lng ?? _lng,
        trailer: trailer ?? _trailer,
        qlty: qlty ?? _qlty,
        gn: gn ?? _gn,
        cg: cg ?? _cg,
        s1: s1 ?? _s1,
        s2: s2 ?? _s2,
        tape: tape ?? _tape,
        s4: s4 ?? _s4,
        p: p ?? _p,
        s41: s41 ?? _s41,
        s42: s42 ?? _s42,
        s43: s43 ?? _s43,
        s44: s44 ?? _s44,
      );

  String? get id => _id;

  String? get ih => _ih;

  String? get iv => _iv;

  String? get mn => _mn;

  String? get hf => _hf;

  String? get lng => _lng;

  String? get trailer => _trailer;

  String? get qlty => _qlty;

  String? get gn => _gn;

  String? get cg => _cg;

  String? get s1 => _s1;

  String? get s2 => _s2;

  String? get tape => _tape;

  String? get s4 => _s4;

  String? get p => _p;

  String? get s41 => _s41;

  String? get s42 => _s42;

  String? get s43 => _s43;

  String? get s44 => _s44;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['IH'] = _ih;
    map['IV'] = _iv;
    map['mn'] = _mn;
    map['hf'] = _hf;
    map['lng'] = _lng;
    map['trailer'] = _trailer;
    map['qlty'] = _qlty;
    map['gn'] = _gn;
    map['cg'] = _cg;
    map['s1'] = _s1;
    map['s2'] = _s2;
    map['tape'] = _tape;
    map['s4'] = _s4;
    map['480p'] = _p;
    map['4s1'] = _s41;
    map['4s2'] = _s42;
    map['4s3'] = _s43;
    map['4s4'] = _s44;
    return map;
  }
}
