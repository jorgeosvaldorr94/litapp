// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rol;
    if (value != null) {
      result
        ..add('rol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.active;
    if (value != null) {
      result
        ..add('active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastname;
    if (value != null) {
      result
        ..add('lastname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.narea;
    if (value != null) {
      result
        ..add('narea')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tel;
    if (value != null) {
      result
        ..add('tel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genero;
    if (value != null) {
      result
        ..add('genero')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pais;
    if (value != null) {
      result
        ..add('pais')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profesion;
    if (value != null) {
      result
        ..add('profesion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.porcentaje;
    if (value != null) {
      result
        ..add('porcentaje')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombrerepresentante;
    if (value != null) {
      result
        ..add('nombrerepresentante')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nacimiento;
    if (value != null) {
      result
        ..add('nacimiento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ubicacion;
    if (value != null) {
      result
        ..add('ubicacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.instagram;
    if (value != null) {
      result
        ..add('instagram')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tiktok;
    if (value != null) {
      result
        ..add('tiktok')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.twich;
    if (value != null) {
      result
        ..add('twich')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youtube;
    if (value != null) {
      result
        ..add('youtube')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.portfolio;
    if (value != null) {
      result
        ..add('portfolio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comercio;
    if (value != null) {
      result
        ..add('comercio')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.nombrecomercio;
    if (value != null) {
      result
        ..add('nombrecomercio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombreyapellidodeencargado;
    if (value != null) {
      result
        ..add('nombreyapellidodeencargado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rolcomercio;
    if (value != null) {
      result
        ..add('rolcomercio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoria;
    if (value != null) {
      result
        ..add('categoria')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.codigo;
    if (value != null) {
      result
        ..add('codigo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.membershipActive;
    if (value != null) {
      result
        ..add('membershipActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.lastPaymentId;
    if (value != null) {
      result
        ..add('lastPaymentId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentDate;
    if (value != null) {
      result
        ..add('paymentDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.typePayment;
    if (value != null) {
      result
        ..add('typePayment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.typeMembership;
    if (value != null) {
      result
        ..add('typeMembership')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rol':
          result.rol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'narea':
          result.narea = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tel':
          result.tel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'genero':
          result.genero = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pais':
          result.pais = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profesion':
          result.profesion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'porcentaje':
          result.porcentaje = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nombrerepresentante':
          result.nombrerepresentante = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nacimiento':
          result.nacimiento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ubicacion':
          result.ubicacion = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'instagram':
          result.instagram = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tiktok':
          result.tiktok = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'twich':
          result.twich = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youtube':
          result.youtube = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'portfolio':
          result.portfolio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comercio':
          result.comercio = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'nombrecomercio':
          result.nombrecomercio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nombreyapellidodeencargado':
          result.nombreyapellidodeencargado = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rolcomercio':
          result.rolcomercio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'categoria':
          result.categoria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'codigo':
          result.codigo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'membershipActive':
          result.membershipActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'lastPaymentId':
          result.lastPaymentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'paymentDate':
          result.paymentDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'typePayment':
          result.typePayment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'typeMembership':
          result.typeMembership = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? rol;
  @override
  final bool? active;
  @override
  final String? name;
  @override
  final String? lastname;
  @override
  final String? narea;
  @override
  final String? tel;
  @override
  final String? genero;
  @override
  final String? pais;
  @override
  final String? profesion;
  @override
  final String? porcentaje;
  @override
  final String? nombrerepresentante;
  @override
  final String? nacimiento;
  @override
  final LatLng? ubicacion;
  @override
  final String? instagram;
  @override
  final String? tiktok;
  @override
  final String? twich;
  @override
  final String? youtube;
  @override
  final String? portfolio;
  @override
  final bool? comercio;
  @override
  final String? nombrecomercio;
  @override
  final String? nombreyapellidodeencargado;
  @override
  final String? rolcomercio;
  @override
  final String? categoria;
  @override
  final String? codigo;
  @override
  final String? descripcion;
  @override
  final bool? membershipActive;
  @override
  final String? lastPaymentId;
  @override
  final DateTime? paymentDate;
  @override
  final String? typePayment;
  @override
  final String? typeMembership;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.rol,
      this.active,
      this.name,
      this.lastname,
      this.narea,
      this.tel,
      this.genero,
      this.pais,
      this.profesion,
      this.porcentaje,
      this.nombrerepresentante,
      this.nacimiento,
      this.ubicacion,
      this.instagram,
      this.tiktok,
      this.twich,
      this.youtube,
      this.portfolio,
      this.comercio,
      this.nombrecomercio,
      this.nombreyapellidodeencargado,
      this.rolcomercio,
      this.categoria,
      this.codigo,
      this.descripcion,
      this.membershipActive,
      this.lastPaymentId,
      this.paymentDate,
      this.typePayment,
      this.typeMembership,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        rol == other.rol &&
        active == other.active &&
        name == other.name &&
        lastname == other.lastname &&
        narea == other.narea &&
        tel == other.tel &&
        genero == other.genero &&
        pais == other.pais &&
        profesion == other.profesion &&
        porcentaje == other.porcentaje &&
        nombrerepresentante == other.nombrerepresentante &&
        nacimiento == other.nacimiento &&
        ubicacion == other.ubicacion &&
        instagram == other.instagram &&
        tiktok == other.tiktok &&
        twich == other.twich &&
        youtube == other.youtube &&
        portfolio == other.portfolio &&
        comercio == other.comercio &&
        nombrecomercio == other.nombrecomercio &&
        nombreyapellidodeencargado == other.nombreyapellidodeencargado &&
        rolcomercio == other.rolcomercio &&
        categoria == other.categoria &&
        codigo == other.codigo &&
        descripcion == other.descripcion &&
        membershipActive == other.membershipActive &&
        lastPaymentId == other.lastPaymentId &&
        paymentDate == other.paymentDate &&
        typePayment == other.typePayment &&
        typeMembership == other.typeMembership &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, rol.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, narea.hashCode);
    _$hash = $jc(_$hash, tel.hashCode);
    _$hash = $jc(_$hash, genero.hashCode);
    _$hash = $jc(_$hash, pais.hashCode);
    _$hash = $jc(_$hash, profesion.hashCode);
    _$hash = $jc(_$hash, porcentaje.hashCode);
    _$hash = $jc(_$hash, nombrerepresentante.hashCode);
    _$hash = $jc(_$hash, nacimiento.hashCode);
    _$hash = $jc(_$hash, ubicacion.hashCode);
    _$hash = $jc(_$hash, instagram.hashCode);
    _$hash = $jc(_$hash, tiktok.hashCode);
    _$hash = $jc(_$hash, twich.hashCode);
    _$hash = $jc(_$hash, youtube.hashCode);
    _$hash = $jc(_$hash, portfolio.hashCode);
    _$hash = $jc(_$hash, comercio.hashCode);
    _$hash = $jc(_$hash, nombrecomercio.hashCode);
    _$hash = $jc(_$hash, nombreyapellidodeencargado.hashCode);
    _$hash = $jc(_$hash, rolcomercio.hashCode);
    _$hash = $jc(_$hash, categoria.hashCode);
    _$hash = $jc(_$hash, codigo.hashCode);
    _$hash = $jc(_$hash, descripcion.hashCode);
    _$hash = $jc(_$hash, membershipActive.hashCode);
    _$hash = $jc(_$hash, lastPaymentId.hashCode);
    _$hash = $jc(_$hash, paymentDate.hashCode);
    _$hash = $jc(_$hash, typePayment.hashCode);
    _$hash = $jc(_$hash, typeMembership.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('rol', rol)
          ..add('active', active)
          ..add('name', name)
          ..add('lastname', lastname)
          ..add('narea', narea)
          ..add('tel', tel)
          ..add('genero', genero)
          ..add('pais', pais)
          ..add('profesion', profesion)
          ..add('porcentaje', porcentaje)
          ..add('nombrerepresentante', nombrerepresentante)
          ..add('nacimiento', nacimiento)
          ..add('ubicacion', ubicacion)
          ..add('instagram', instagram)
          ..add('tiktok', tiktok)
          ..add('twich', twich)
          ..add('youtube', youtube)
          ..add('portfolio', portfolio)
          ..add('comercio', comercio)
          ..add('nombrecomercio', nombrecomercio)
          ..add('nombreyapellidodeencargado', nombreyapellidodeencargado)
          ..add('rolcomercio', rolcomercio)
          ..add('categoria', categoria)
          ..add('codigo', codigo)
          ..add('descripcion', descripcion)
          ..add('membershipActive', membershipActive)
          ..add('lastPaymentId', lastPaymentId)
          ..add('paymentDate', paymentDate)
          ..add('typePayment', typePayment)
          ..add('typeMembership', typeMembership)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _rol;
  String? get rol => _$this._rol;
  set rol(String? rol) => _$this._rol = rol;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _narea;
  String? get narea => _$this._narea;
  set narea(String? narea) => _$this._narea = narea;

  String? _tel;
  String? get tel => _$this._tel;
  set tel(String? tel) => _$this._tel = tel;

  String? _genero;
  String? get genero => _$this._genero;
  set genero(String? genero) => _$this._genero = genero;

  String? _pais;
  String? get pais => _$this._pais;
  set pais(String? pais) => _$this._pais = pais;

  String? _profesion;
  String? get profesion => _$this._profesion;
  set profesion(String? profesion) => _$this._profesion = profesion;

  String? _porcentaje;
  String? get porcentaje => _$this._porcentaje;
  set porcentaje(String? porcentaje) => _$this._porcentaje = porcentaje;

  String? _nombrerepresentante;
  String? get nombrerepresentante => _$this._nombrerepresentante;
  set nombrerepresentante(String? nombrerepresentante) =>
      _$this._nombrerepresentante = nombrerepresentante;

  String? _nacimiento;
  String? get nacimiento => _$this._nacimiento;
  set nacimiento(String? nacimiento) => _$this._nacimiento = nacimiento;

  LatLng? _ubicacion;
  LatLng? get ubicacion => _$this._ubicacion;
  set ubicacion(LatLng? ubicacion) => _$this._ubicacion = ubicacion;

  String? _instagram;
  String? get instagram => _$this._instagram;
  set instagram(String? instagram) => _$this._instagram = instagram;

  String? _tiktok;
  String? get tiktok => _$this._tiktok;
  set tiktok(String? tiktok) => _$this._tiktok = tiktok;

  String? _twich;
  String? get twich => _$this._twich;
  set twich(String? twich) => _$this._twich = twich;

  String? _youtube;
  String? get youtube => _$this._youtube;
  set youtube(String? youtube) => _$this._youtube = youtube;

  String? _portfolio;
  String? get portfolio => _$this._portfolio;
  set portfolio(String? portfolio) => _$this._portfolio = portfolio;

  bool? _comercio;
  bool? get comercio => _$this._comercio;
  set comercio(bool? comercio) => _$this._comercio = comercio;

  String? _nombrecomercio;
  String? get nombrecomercio => _$this._nombrecomercio;
  set nombrecomercio(String? nombrecomercio) =>
      _$this._nombrecomercio = nombrecomercio;

  String? _nombreyapellidodeencargado;
  String? get nombreyapellidodeencargado => _$this._nombreyapellidodeencargado;
  set nombreyapellidodeencargado(String? nombreyapellidodeencargado) =>
      _$this._nombreyapellidodeencargado = nombreyapellidodeencargado;

  String? _rolcomercio;
  String? get rolcomercio => _$this._rolcomercio;
  set rolcomercio(String? rolcomercio) => _$this._rolcomercio = rolcomercio;

  String? _categoria;
  String? get categoria => _$this._categoria;
  set categoria(String? categoria) => _$this._categoria = categoria;

  String? _codigo;
  String? get codigo => _$this._codigo;
  set codigo(String? codigo) => _$this._codigo = codigo;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  bool? _membershipActive;
  bool? get membershipActive => _$this._membershipActive;
  set membershipActive(bool? membershipActive) =>
      _$this._membershipActive = membershipActive;

  String? _lastPaymentId;
  String? get lastPaymentId => _$this._lastPaymentId;
  set lastPaymentId(String? lastPaymentId) =>
      _$this._lastPaymentId = lastPaymentId;

  DateTime? _paymentDate;
  DateTime? get paymentDate => _$this._paymentDate;
  set paymentDate(DateTime? paymentDate) => _$this._paymentDate = paymentDate;

  String? _typePayment;
  String? get typePayment => _$this._typePayment;
  set typePayment(String? typePayment) => _$this._typePayment = typePayment;

  String? _typeMembership;
  String? get typeMembership => _$this._typeMembership;
  set typeMembership(String? typeMembership) =>
      _$this._typeMembership = typeMembership;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _rol = $v.rol;
      _active = $v.active;
      _name = $v.name;
      _lastname = $v.lastname;
      _narea = $v.narea;
      _tel = $v.tel;
      _genero = $v.genero;
      _pais = $v.pais;
      _profesion = $v.profesion;
      _porcentaje = $v.porcentaje;
      _nombrerepresentante = $v.nombrerepresentante;
      _nacimiento = $v.nacimiento;
      _ubicacion = $v.ubicacion;
      _instagram = $v.instagram;
      _tiktok = $v.tiktok;
      _twich = $v.twich;
      _youtube = $v.youtube;
      _portfolio = $v.portfolio;
      _comercio = $v.comercio;
      _nombrecomercio = $v.nombrecomercio;
      _nombreyapellidodeencargado = $v.nombreyapellidodeencargado;
      _rolcomercio = $v.rolcomercio;
      _categoria = $v.categoria;
      _codigo = $v.codigo;
      _descripcion = $v.descripcion;
      _membershipActive = $v.membershipActive;
      _lastPaymentId = $v.lastPaymentId;
      _paymentDate = $v.paymentDate;
      _typePayment = $v.typePayment;
      _typeMembership = $v.typeMembership;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            rol: rol,
            active: active,
            name: name,
            lastname: lastname,
            narea: narea,
            tel: tel,
            genero: genero,
            pais: pais,
            profesion: profesion,
            porcentaje: porcentaje,
            nombrerepresentante: nombrerepresentante,
            nacimiento: nacimiento,
            ubicacion: ubicacion,
            instagram: instagram,
            tiktok: tiktok,
            twich: twich,
            youtube: youtube,
            portfolio: portfolio,
            comercio: comercio,
            nombrecomercio: nombrecomercio,
            nombreyapellidodeencargado: nombreyapellidodeencargado,
            rolcomercio: rolcomercio,
            categoria: categoria,
            codigo: codigo,
            descripcion: descripcion,
            membershipActive: membershipActive,
            lastPaymentId: lastPaymentId,
            paymentDate: paymentDate,
            typePayment: typePayment,
            typeMembership: typeMembership,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
