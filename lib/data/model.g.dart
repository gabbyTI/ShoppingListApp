// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ItemList extends DataClass implements Insertable<ItemList> {
  final int id;
  final String itemName;
  final String noOfItems;
  final String unitPrice;
  final int checkListId;
  ItemList(
      {@required this.id,
      @required this.itemName,
      @required this.noOfItems,
      @required this.unitPrice,
      @required this.checkListId});
  factory ItemList.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return ItemList(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      itemName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_name']),
      noOfItems: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}no_of_items']),
      unitPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}unit_price']),
      checkListId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}check_list_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || itemName != null) {
      map['item_name'] = Variable<String>(itemName);
    }
    if (!nullToAbsent || noOfItems != null) {
      map['no_of_items'] = Variable<String>(noOfItems);
    }
    if (!nullToAbsent || unitPrice != null) {
      map['unit_price'] = Variable<String>(unitPrice);
    }
    if (!nullToAbsent || checkListId != null) {
      map['check_list_id'] = Variable<int>(checkListId);
    }
    return map;
  }

  ItemListsCompanion toCompanion(bool nullToAbsent) {
    return ItemListsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      itemName: itemName == null && nullToAbsent
          ? const Value.absent()
          : Value(itemName),
      noOfItems: noOfItems == null && nullToAbsent
          ? const Value.absent()
          : Value(noOfItems),
      unitPrice: unitPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(unitPrice),
      checkListId: checkListId == null && nullToAbsent
          ? const Value.absent()
          : Value(checkListId),
    );
  }

  factory ItemList.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ItemList(
      id: serializer.fromJson<int>(json['id']),
      itemName: serializer.fromJson<String>(json['itemName']),
      noOfItems: serializer.fromJson<String>(json['noOfItems']),
      unitPrice: serializer.fromJson<String>(json['unitPrice']),
      checkListId: serializer.fromJson<int>(json['checkListId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'itemName': serializer.toJson<String>(itemName),
      'noOfItems': serializer.toJson<String>(noOfItems),
      'unitPrice': serializer.toJson<String>(unitPrice),
      'checkListId': serializer.toJson<int>(checkListId),
    };
  }

  ItemList copyWith(
          {int id,
          String itemName,
          String noOfItems,
          String unitPrice,
          int checkListId}) =>
      ItemList(
        id: id ?? this.id,
        itemName: itemName ?? this.itemName,
        noOfItems: noOfItems ?? this.noOfItems,
        unitPrice: unitPrice ?? this.unitPrice,
        checkListId: checkListId ?? this.checkListId,
      );
  @override
  String toString() {
    return (StringBuffer('ItemList(')
          ..write('id: $id, ')
          ..write('itemName: $itemName, ')
          ..write('noOfItems: $noOfItems, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('checkListId: $checkListId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          itemName.hashCode,
          $mrjc(noOfItems.hashCode,
              $mrjc(unitPrice.hashCode, checkListId.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ItemList &&
          other.id == this.id &&
          other.itemName == this.itemName &&
          other.noOfItems == this.noOfItems &&
          other.unitPrice == this.unitPrice &&
          other.checkListId == this.checkListId);
}

class ItemListsCompanion extends UpdateCompanion<ItemList> {
  final Value<int> id;
  final Value<String> itemName;
  final Value<String> noOfItems;
  final Value<String> unitPrice;
  final Value<int> checkListId;
  const ItemListsCompanion({
    this.id = const Value.absent(),
    this.itemName = const Value.absent(),
    this.noOfItems = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.checkListId = const Value.absent(),
  });
  ItemListsCompanion.insert({
    this.id = const Value.absent(),
    @required String itemName,
    @required String noOfItems,
    @required String unitPrice,
    @required int checkListId,
  })  : itemName = Value(itemName),
        noOfItems = Value(noOfItems),
        unitPrice = Value(unitPrice),
        checkListId = Value(checkListId);
  static Insertable<ItemList> custom({
    Expression<int> id,
    Expression<String> itemName,
    Expression<String> noOfItems,
    Expression<String> unitPrice,
    Expression<int> checkListId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemName != null) 'item_name': itemName,
      if (noOfItems != null) 'no_of_items': noOfItems,
      if (unitPrice != null) 'unit_price': unitPrice,
      if (checkListId != null) 'check_list_id': checkListId,
    });
  }

  ItemListsCompanion copyWith(
      {Value<int> id,
      Value<String> itemName,
      Value<String> noOfItems,
      Value<String> unitPrice,
      Value<int> checkListId}) {
    return ItemListsCompanion(
      id: id ?? this.id,
      itemName: itemName ?? this.itemName,
      noOfItems: noOfItems ?? this.noOfItems,
      unitPrice: unitPrice ?? this.unitPrice,
      checkListId: checkListId ?? this.checkListId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemName.present) {
      map['item_name'] = Variable<String>(itemName.value);
    }
    if (noOfItems.present) {
      map['no_of_items'] = Variable<String>(noOfItems.value);
    }
    if (unitPrice.present) {
      map['unit_price'] = Variable<String>(unitPrice.value);
    }
    if (checkListId.present) {
      map['check_list_id'] = Variable<int>(checkListId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemListsCompanion(')
          ..write('id: $id, ')
          ..write('itemName: $itemName, ')
          ..write('noOfItems: $noOfItems, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('checkListId: $checkListId')
          ..write(')'))
        .toString();
  }
}

class $ItemListsTable extends ItemLists
    with TableInfo<$ItemListsTable, ItemList> {
  final GeneratedDatabase _db;
  final String _alias;
  $ItemListsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _itemNameMeta = const VerificationMeta('itemName');
  GeneratedTextColumn _itemName;
  @override
  GeneratedTextColumn get itemName => _itemName ??= _constructItemName();
  GeneratedTextColumn _constructItemName() {
    return GeneratedTextColumn('item_name', $tableName, false,
        minTextLength: 1);
  }

  final VerificationMeta _noOfItemsMeta = const VerificationMeta('noOfItems');
  GeneratedTextColumn _noOfItems;
  @override
  GeneratedTextColumn get noOfItems => _noOfItems ??= _constructNoOfItems();
  GeneratedTextColumn _constructNoOfItems() {
    return GeneratedTextColumn(
      'no_of_items',
      $tableName,
      false,
    );
  }

  final VerificationMeta _unitPriceMeta = const VerificationMeta('unitPrice');
  GeneratedTextColumn _unitPrice;
  @override
  GeneratedTextColumn get unitPrice => _unitPrice ??= _constructUnitPrice();
  GeneratedTextColumn _constructUnitPrice() {
    return GeneratedTextColumn(
      'unit_price',
      $tableName,
      false,
    );
  }

  final VerificationMeta _checkListIdMeta =
      const VerificationMeta('checkListId');
  GeneratedIntColumn _checkListId;
  @override
  GeneratedIntColumn get checkListId =>
      _checkListId ??= _constructCheckListId();
  GeneratedIntColumn _constructCheckListId() {
    return GeneratedIntColumn(
      'check_list_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, itemName, noOfItems, unitPrice, checkListId];
  @override
  $ItemListsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'item_lists';
  @override
  final String actualTableName = 'item_lists';
  @override
  VerificationContext validateIntegrity(Insertable<ItemList> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('item_name')) {
      context.handle(_itemNameMeta,
          itemName.isAcceptableOrUnknown(data['item_name'], _itemNameMeta));
    } else if (isInserting) {
      context.missing(_itemNameMeta);
    }
    if (data.containsKey('no_of_items')) {
      context.handle(_noOfItemsMeta,
          noOfItems.isAcceptableOrUnknown(data['no_of_items'], _noOfItemsMeta));
    } else if (isInserting) {
      context.missing(_noOfItemsMeta);
    }
    if (data.containsKey('unit_price')) {
      context.handle(_unitPriceMeta,
          unitPrice.isAcceptableOrUnknown(data['unit_price'], _unitPriceMeta));
    } else if (isInserting) {
      context.missing(_unitPriceMeta);
    }
    if (data.containsKey('check_list_id')) {
      context.handle(
          _checkListIdMeta,
          checkListId.isAcceptableOrUnknown(
              data['check_list_id'], _checkListIdMeta));
    } else if (isInserting) {
      context.missing(_checkListIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemList map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ItemList.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ItemListsTable createAlias(String alias) {
    return $ItemListsTable(_db, alias);
  }
}

class CheckList extends DataClass implements Insertable<CheckList> {
  final int id;
  final String checkListName;
  final int total;
  CheckList(
      {@required this.id, @required this.checkListName, @required this.total});
  factory CheckList.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return CheckList(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      checkListName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}check_list_name']),
      total: intType.mapFromDatabaseResponse(data['${effectivePrefix}total']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || checkListName != null) {
      map['check_list_name'] = Variable<String>(checkListName);
    }
    if (!nullToAbsent || total != null) {
      map['total'] = Variable<int>(total);
    }
    return map;
  }

  CheckListsCompanion toCompanion(bool nullToAbsent) {
    return CheckListsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      checkListName: checkListName == null && nullToAbsent
          ? const Value.absent()
          : Value(checkListName),
      total:
          total == null && nullToAbsent ? const Value.absent() : Value(total),
    );
  }

  factory CheckList.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CheckList(
      id: serializer.fromJson<int>(json['id']),
      checkListName: serializer.fromJson<String>(json['checkListName']),
      total: serializer.fromJson<int>(json['total']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'checkListName': serializer.toJson<String>(checkListName),
      'total': serializer.toJson<int>(total),
    };
  }

  CheckList copyWith({int id, String checkListName, int total}) => CheckList(
        id: id ?? this.id,
        checkListName: checkListName ?? this.checkListName,
        total: total ?? this.total,
      );
  @override
  String toString() {
    return (StringBuffer('CheckList(')
          ..write('id: $id, ')
          ..write('checkListName: $checkListName, ')
          ..write('total: $total')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(checkListName.hashCode, total.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CheckList &&
          other.id == this.id &&
          other.checkListName == this.checkListName &&
          other.total == this.total);
}

class CheckListsCompanion extends UpdateCompanion<CheckList> {
  final Value<int> id;
  final Value<String> checkListName;
  final Value<int> total;
  const CheckListsCompanion({
    this.id = const Value.absent(),
    this.checkListName = const Value.absent(),
    this.total = const Value.absent(),
  });
  CheckListsCompanion.insert({
    this.id = const Value.absent(),
    @required String checkListName,
    this.total = const Value.absent(),
  }) : checkListName = Value(checkListName);
  static Insertable<CheckList> custom({
    Expression<int> id,
    Expression<String> checkListName,
    Expression<int> total,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (checkListName != null) 'check_list_name': checkListName,
      if (total != null) 'total': total,
    });
  }

  CheckListsCompanion copyWith(
      {Value<int> id, Value<String> checkListName, Value<int> total}) {
    return CheckListsCompanion(
      id: id ?? this.id,
      checkListName: checkListName ?? this.checkListName,
      total: total ?? this.total,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (checkListName.present) {
      map['check_list_name'] = Variable<String>(checkListName.value);
    }
    if (total.present) {
      map['total'] = Variable<int>(total.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CheckListsCompanion(')
          ..write('id: $id, ')
          ..write('checkListName: $checkListName, ')
          ..write('total: $total')
          ..write(')'))
        .toString();
  }
}

class $CheckListsTable extends CheckLists
    with TableInfo<$CheckListsTable, CheckList> {
  final GeneratedDatabase _db;
  final String _alias;
  $CheckListsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _checkListNameMeta =
      const VerificationMeta('checkListName');
  GeneratedTextColumn _checkListName;
  @override
  GeneratedTextColumn get checkListName =>
      _checkListName ??= _constructCheckListName();
  GeneratedTextColumn _constructCheckListName() {
    return GeneratedTextColumn('check_list_name', $tableName, false,
        minTextLength: 1);
  }

  final VerificationMeta _totalMeta = const VerificationMeta('total');
  GeneratedIntColumn _total;
  @override
  GeneratedIntColumn get total => _total ??= _constructTotal();
  GeneratedIntColumn _constructTotal() {
    return GeneratedIntColumn('total', $tableName, false,
        defaultValue: Constant(0));
  }

  @override
  List<GeneratedColumn> get $columns => [id, checkListName, total];
  @override
  $CheckListsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'check_lists';
  @override
  final String actualTableName = 'check_lists';
  @override
  VerificationContext validateIntegrity(Insertable<CheckList> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('check_list_name')) {
      context.handle(
          _checkListNameMeta,
          checkListName.isAcceptableOrUnknown(
              data['check_list_name'], _checkListNameMeta));
    } else if (isInserting) {
      context.missing(_checkListNameMeta);
    }
    if (data.containsKey('total')) {
      context.handle(
          _totalMeta, total.isAcceptableOrUnknown(data['total'], _totalMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CheckList map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CheckList.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CheckListsTable createAlias(String alias) {
    return $CheckListsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ItemListsTable _itemLists;
  $ItemListsTable get itemLists => _itemLists ??= $ItemListsTable(this);
  $CheckListsTable _checkLists;
  $CheckListsTable get checkLists => _checkLists ??= $CheckListsTable(this);
  CheckListDao _checkListDao;
  CheckListDao get checkListDao =>
      _checkListDao ??= CheckListDao(this as AppDatabase);
  ItemListDao _itemListDao;
  ItemListDao get itemListDao =>
      _itemListDao ??= ItemListDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [itemLists, checkLists];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$CheckListDaoMixin on DatabaseAccessor<AppDatabase> {
  $CheckListsTable get checkLists => attachedDatabase.checkLists;
}
mixin _$ItemListDaoMixin on DatabaseAccessor<AppDatabase> {
  $ItemListsTable get itemLists => attachedDatabase.itemLists;
}
