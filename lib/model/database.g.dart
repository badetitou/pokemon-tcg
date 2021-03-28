// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MyCard extends DataClass implements Insertable<MyCard> {
  final int id;
  final String name;
  final String etat;
  final String cardID;
  MyCard(
      {required this.id,
      required this.name,
      required this.etat,
      required this.cardID});
  factory MyCard.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return MyCard(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      etat: stringType.mapFromDatabaseResponse(data['${effectivePrefix}etat'])!,
      cardID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}card_i_d'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['etat'] = Variable<String>(etat);
    map['card_i_d'] = Variable<String>(cardID);
    return map;
  }

  MyCardsCompanion toCompanion(bool nullToAbsent) {
    return MyCardsCompanion(
      id: Value(id),
      name: Value(name),
      etat: Value(etat),
      cardID: Value(cardID),
    );
  }

  factory MyCard.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MyCard(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      etat: serializer.fromJson<String>(json['etat']),
      cardID: serializer.fromJson<String>(json['cardID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'etat': serializer.toJson<String>(etat),
      'cardID': serializer.toJson<String>(cardID),
    };
  }

  MyCard copyWith({int? id, String? name, String? etat, String? cardID}) =>
      MyCard(
        id: id ?? this.id,
        name: name ?? this.name,
        etat: etat ?? this.etat,
        cardID: cardID ?? this.cardID,
      );
  @override
  String toString() {
    return (StringBuffer('MyCard(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('etat: $etat, ')
          ..write('cardID: $cardID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(name.hashCode, $mrjc(etat.hashCode, cardID.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MyCard &&
          other.id == this.id &&
          other.name == this.name &&
          other.etat == this.etat &&
          other.cardID == this.cardID);
}

class MyCardsCompanion extends UpdateCompanion<MyCard> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> etat;
  final Value<String> cardID;
  const MyCardsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.etat = const Value.absent(),
    this.cardID = const Value.absent(),
  });
  MyCardsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String etat,
    required String cardID,
  })   : name = Value(name),
        etat = Value(etat),
        cardID = Value(cardID);
  static Insertable<MyCard> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? etat,
    Expression<String>? cardID,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (etat != null) 'etat': etat,
      if (cardID != null) 'card_i_d': cardID,
    });
  }

  MyCardsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? etat,
      Value<String>? cardID}) {
    return MyCardsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      etat: etat ?? this.etat,
      cardID: cardID ?? this.cardID,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (etat.present) {
      map['etat'] = Variable<String>(etat.value);
    }
    if (cardID.present) {
      map['card_i_d'] = Variable<String>(cardID.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MyCardsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('etat: $etat, ')
          ..write('cardID: $cardID')
          ..write(')'))
        .toString();
  }
}

class $MyCardsTable extends MyCards with TableInfo<$MyCardsTable, MyCard> {
  final GeneratedDatabase _db;
  final String? _alias;
  $MyCardsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedIntColumn id = _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedTextColumn name = _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _etatMeta = const VerificationMeta('etat');
  @override
  late final GeneratedTextColumn etat = _constructEtat();
  GeneratedTextColumn _constructEtat() {
    return GeneratedTextColumn(
      'etat',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cardIDMeta = const VerificationMeta('cardID');
  @override
  late final GeneratedTextColumn cardID = _constructCardID();
  GeneratedTextColumn _constructCardID() {
    return GeneratedTextColumn(
      'card_i_d',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, etat, cardID];
  @override
  $MyCardsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'my_cards';
  @override
  final String actualTableName = 'my_cards';
  @override
  VerificationContext validateIntegrity(Insertable<MyCard> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('etat')) {
      context.handle(
          _etatMeta, etat.isAcceptableOrUnknown(data['etat']!, _etatMeta));
    } else if (isInserting) {
      context.missing(_etatMeta);
    }
    if (data.containsKey('card_i_d')) {
      context.handle(_cardIDMeta,
          cardID.isAcceptableOrUnknown(data['card_i_d']!, _cardIDMeta));
    } else if (isInserting) {
      context.missing(_cardIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MyCard map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MyCard.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MyCardsTable createAlias(String alias) {
    return $MyCardsTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $MyCardsTable myCards = $MyCardsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [myCards];
}
