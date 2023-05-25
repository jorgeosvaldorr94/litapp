// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OffersRecord> _$offersRecordSerializer =
    new _$OffersRecordSerializer();

class _$OffersRecordSerializer implements StructuredSerializer<OffersRecord> {
  @override
  final Iterable<Type> types = const [OffersRecord, _$OffersRecord];
  @override
  final String wireName = 'OffersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OffersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
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
    value = object.schedule;
    if (value != null) {
      result
        ..add('schedule')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.placeName;
    if (value != null) {
      result
        ..add('place_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
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
    value = object.linked;
    if (value != null) {
      result
        ..add('linked')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.position;
    if (value != null) {
      result
        ..add('position')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.level;
    if (value != null) {
      result
        ..add('level')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.campaing;
    if (value != null) {
      result
        ..add('campaing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.platform;
    if (value != null) {
      result
        ..add('platform')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.publications;
    if (value != null) {
      result
        ..add('publications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creationDate;
    if (value != null) {
      result
        ..add('creationDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.emailcreator;
    if (value != null) {
      result
        ..add('emailcreator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventDate;
    if (value != null) {
      result
        ..add('eventDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.influencers;
    if (value != null) {
      result
        ..add('influencers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.horario;
    if (value != null) {
      result
        ..add('horario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.beneficio;
    if (value != null) {
      result
        ..add('beneficio')
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
  OffersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OffersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
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
        case 'schedule':
          result.schedule = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'place_name':
          result.placeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'linked':
          result.linked = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'campaing':
          result.campaing = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'platform':
          result.platform = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'format':
          result.format = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'publications':
          result.publications = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'creationDate':
          result.creationDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'emailcreator':
          result.emailcreator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eventDate':
          result.eventDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'influencers':
          result.influencers = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'horario':
          result.horario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'beneficio':
          result.beneficio = serializers.deserialize(value,
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

class _$OffersRecord extends OffersRecord {
  @override
  final String? id;
  @override
  final String? category;
  @override
  final bool? active;
  @override
  final String? name;
  @override
  final String? schedule;
  @override
  final String? placeName;
  @override
  final String? image;
  @override
  final DateTime? createdTime;
  @override
  final String? linked;
  @override
  final String? description;
  @override
  final LatLng? position;
  @override
  final String? city;
  @override
  final String? level;
  @override
  final String? campaing;
  @override
  final String? platform;
  @override
  final String? format;
  @override
  final String? publications;
  @override
  final DateTime? creationDate;
  @override
  final String? emailcreator;
  @override
  final DateTime? eventDate;
  @override
  final String? influencers;
  @override
  final String? horario;
  @override
  final String? beneficio;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OffersRecord([void Function(OffersRecordBuilder)? updates]) =>
      (new OffersRecordBuilder()..update(updates))._build();

  _$OffersRecord._(
      {this.id,
      this.category,
      this.active,
      this.name,
      this.schedule,
      this.placeName,
      this.image,
      this.createdTime,
      this.linked,
      this.description,
      this.position,
      this.city,
      this.level,
      this.campaing,
      this.platform,
      this.format,
      this.publications,
      this.creationDate,
      this.emailcreator,
      this.eventDate,
      this.influencers,
      this.horario,
      this.beneficio,
      this.ffRef})
      : super._();

  @override
  OffersRecord rebuild(void Function(OffersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OffersRecordBuilder toBuilder() => new OffersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OffersRecord &&
        id == other.id &&
        category == other.category &&
        active == other.active &&
        name == other.name &&
        schedule == other.schedule &&
        placeName == other.placeName &&
        image == other.image &&
        createdTime == other.createdTime &&
        linked == other.linked &&
        description == other.description &&
        position == other.position &&
        city == other.city &&
        level == other.level &&
        campaing == other.campaing &&
        platform == other.platform &&
        format == other.format &&
        publications == other.publications &&
        creationDate == other.creationDate &&
        emailcreator == other.emailcreator &&
        eventDate == other.eventDate &&
        influencers == other.influencers &&
        horario == other.horario &&
        beneficio == other.beneficio &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, placeName.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, linked.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, campaing.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, publications.hashCode);
    _$hash = $jc(_$hash, creationDate.hashCode);
    _$hash = $jc(_$hash, emailcreator.hashCode);
    _$hash = $jc(_$hash, eventDate.hashCode);
    _$hash = $jc(_$hash, influencers.hashCode);
    _$hash = $jc(_$hash, horario.hashCode);
    _$hash = $jc(_$hash, beneficio.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OffersRecord')
          ..add('id', id)
          ..add('category', category)
          ..add('active', active)
          ..add('name', name)
          ..add('schedule', schedule)
          ..add('placeName', placeName)
          ..add('image', image)
          ..add('createdTime', createdTime)
          ..add('linked', linked)
          ..add('description', description)
          ..add('position', position)
          ..add('city', city)
          ..add('level', level)
          ..add('campaing', campaing)
          ..add('platform', platform)
          ..add('format', format)
          ..add('publications', publications)
          ..add('creationDate', creationDate)
          ..add('emailcreator', emailcreator)
          ..add('eventDate', eventDate)
          ..add('influencers', influencers)
          ..add('horario', horario)
          ..add('beneficio', beneficio)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OffersRecordBuilder
    implements Builder<OffersRecord, OffersRecordBuilder> {
  _$OffersRecord? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _schedule;
  String? get schedule => _$this._schedule;
  set schedule(String? schedule) => _$this._schedule = schedule;

  String? _placeName;
  String? get placeName => _$this._placeName;
  set placeName(String? placeName) => _$this._placeName = placeName;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _linked;
  String? get linked => _$this._linked;
  set linked(String? linked) => _$this._linked = linked;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  LatLng? _position;
  LatLng? get position => _$this._position;
  set position(LatLng? position) => _$this._position = position;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _level;
  String? get level => _$this._level;
  set level(String? level) => _$this._level = level;

  String? _campaing;
  String? get campaing => _$this._campaing;
  set campaing(String? campaing) => _$this._campaing = campaing;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  String? _publications;
  String? get publications => _$this._publications;
  set publications(String? publications) => _$this._publications = publications;

  DateTime? _creationDate;
  DateTime? get creationDate => _$this._creationDate;
  set creationDate(DateTime? creationDate) =>
      _$this._creationDate = creationDate;

  String? _emailcreator;
  String? get emailcreator => _$this._emailcreator;
  set emailcreator(String? emailcreator) => _$this._emailcreator = emailcreator;

  DateTime? _eventDate;
  DateTime? get eventDate => _$this._eventDate;
  set eventDate(DateTime? eventDate) => _$this._eventDate = eventDate;

  String? _influencers;
  String? get influencers => _$this._influencers;
  set influencers(String? influencers) => _$this._influencers = influencers;

  String? _horario;
  String? get horario => _$this._horario;
  set horario(String? horario) => _$this._horario = horario;

  String? _beneficio;
  String? get beneficio => _$this._beneficio;
  set beneficio(String? beneficio) => _$this._beneficio = beneficio;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OffersRecordBuilder() {
    OffersRecord._initializeBuilder(this);
  }

  OffersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _category = $v.category;
      _active = $v.active;
      _name = $v.name;
      _schedule = $v.schedule;
      _placeName = $v.placeName;
      _image = $v.image;
      _createdTime = $v.createdTime;
      _linked = $v.linked;
      _description = $v.description;
      _position = $v.position;
      _city = $v.city;
      _level = $v.level;
      _campaing = $v.campaing;
      _platform = $v.platform;
      _format = $v.format;
      _publications = $v.publications;
      _creationDate = $v.creationDate;
      _emailcreator = $v.emailcreator;
      _eventDate = $v.eventDate;
      _influencers = $v.influencers;
      _horario = $v.horario;
      _beneficio = $v.beneficio;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OffersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OffersRecord;
  }

  @override
  void update(void Function(OffersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OffersRecord build() => _build();

  _$OffersRecord _build() {
    final _$result = _$v ??
        new _$OffersRecord._(
            id: id,
            category: category,
            active: active,
            name: name,
            schedule: schedule,
            placeName: placeName,
            image: image,
            createdTime: createdTime,
            linked: linked,
            description: description,
            position: position,
            city: city,
            level: level,
            campaing: campaing,
            platform: platform,
            format: format,
            publications: publications,
            creationDate: creationDate,
            emailcreator: emailcreator,
            eventDate: eventDate,
            influencers: influencers,
            horario: horario,
            beneficio: beneficio,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
