// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryNameMeta = const VerificationMeta(
    'categoryName',
  );
  @override
  late final GeneratedColumn<String> categoryName = GeneratedColumn<String>(
    'category_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _slugMeta = const VerificationMeta('slug');
  @override
  late final GeneratedColumn<String> slug = GeneratedColumn<String>(
    'slug',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modifiedAtMeta = const VerificationMeta(
    'modifiedAt',
  );
  @override
  late final GeneratedColumn<DateTime> modifiedAt = GeneratedColumn<DateTime>(
    'modified_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _syncStatusMeta = const VerificationMeta(
    'syncStatus',
  );
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant("synced"),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    categoryName,
    imageUrl,
    slug,
    sortOrder,
    isActive,
    createdAt,
    modifiedAt,
    syncStatus,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(
    Insertable<Category> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('category_name')) {
      context.handle(
        _categoryNameMeta,
        categoryName.isAcceptableOrUnknown(
          data['category_name']!,
          _categoryNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_categoryNameMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('slug')) {
      context.handle(
        _slugMeta,
        slug.isAcceptableOrUnknown(data['slug']!, _slugMeta),
      );
    } else if (isInserting) {
      context.missing(_slugMeta);
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    } else if (isInserting) {
      context.missing(_sortOrderMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('modified_at')) {
      context.handle(
        _modifiedAtMeta,
        modifiedAt.isAcceptableOrUnknown(data['modified_at']!, _modifiedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_modifiedAtMeta);
    }
    if (data.containsKey('sync_status')) {
      context.handle(
        _syncStatusMeta,
        syncStatus.isAcceptableOrUnknown(data['sync_status']!, _syncStatusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      categoryName:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}category_name'],
          )!,
      imageUrl:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}image_url'],
          )!,
      slug:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}slug'],
          )!,
      sortOrder:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}sort_order'],
          )!,
      isActive:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_active'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      modifiedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}modified_at'],
          )!,
      syncStatus:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}sync_status'],
          )!,
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final String id;
  final String categoryName;
  final String imageUrl;
  final String slug;
  final int sortOrder;
  final bool isActive;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final String syncStatus;
  const Category({
    required this.id,
    required this.categoryName,
    required this.imageUrl,
    required this.slug,
    required this.sortOrder,
    required this.isActive,
    required this.createdAt,
    required this.modifiedAt,
    required this.syncStatus,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['category_name'] = Variable<String>(categoryName);
    map['image_url'] = Variable<String>(imageUrl);
    map['slug'] = Variable<String>(slug);
    map['sort_order'] = Variable<int>(sortOrder);
    map['is_active'] = Variable<bool>(isActive);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['modified_at'] = Variable<DateTime>(modifiedAt);
    map['sync_status'] = Variable<String>(syncStatus);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      categoryName: Value(categoryName),
      imageUrl: Value(imageUrl),
      slug: Value(slug),
      sortOrder: Value(sortOrder),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
      modifiedAt: Value(modifiedAt),
      syncStatus: Value(syncStatus),
    );
  }

  factory Category.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<String>(json['id']),
      categoryName: serializer.fromJson<String>(json['categoryName']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      slug: serializer.fromJson<String>(json['slug']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      modifiedAt: serializer.fromJson<DateTime>(json['modifiedAt']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'categoryName': serializer.toJson<String>(categoryName),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'slug': serializer.toJson<String>(slug),
      'sortOrder': serializer.toJson<int>(sortOrder),
      'isActive': serializer.toJson<bool>(isActive),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'modifiedAt': serializer.toJson<DateTime>(modifiedAt),
      'syncStatus': serializer.toJson<String>(syncStatus),
    };
  }

  Category copyWith({
    String? id,
    String? categoryName,
    String? imageUrl,
    String? slug,
    int? sortOrder,
    bool? isActive,
    DateTime? createdAt,
    DateTime? modifiedAt,
    String? syncStatus,
  }) => Category(
    id: id ?? this.id,
    categoryName: categoryName ?? this.categoryName,
    imageUrl: imageUrl ?? this.imageUrl,
    slug: slug ?? this.slug,
    sortOrder: sortOrder ?? this.sortOrder,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt ?? this.createdAt,
    modifiedAt: modifiedAt ?? this.modifiedAt,
    syncStatus: syncStatus ?? this.syncStatus,
  );
  Category copyWithCompanion(CategoriesCompanion data) {
    return Category(
      id: data.id.present ? data.id.value : this.id,
      categoryName:
          data.categoryName.present
              ? data.categoryName.value
              : this.categoryName,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      slug: data.slug.present ? data.slug.value : this.slug,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      modifiedAt:
          data.modifiedAt.present ? data.modifiedAt.value : this.modifiedAt,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('categoryName: $categoryName, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('slug: $slug, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('syncStatus: $syncStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    categoryName,
    imageUrl,
    slug,
    sortOrder,
    isActive,
    createdAt,
    modifiedAt,
    syncStatus,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.categoryName == this.categoryName &&
          other.imageUrl == this.imageUrl &&
          other.slug == this.slug &&
          other.sortOrder == this.sortOrder &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.modifiedAt == this.modifiedAt &&
          other.syncStatus == this.syncStatus);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<String> id;
  final Value<String> categoryName;
  final Value<String> imageUrl;
  final Value<String> slug;
  final Value<int> sortOrder;
  final Value<bool> isActive;
  final Value<DateTime> createdAt;
  final Value<DateTime> modifiedAt;
  final Value<String> syncStatus;
  final Value<int> rowid;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.categoryName = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.slug = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.modifiedAt = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CategoriesCompanion.insert({
    required String id,
    required String categoryName,
    required String imageUrl,
    required String slug,
    required int sortOrder,
    required bool isActive,
    required DateTime createdAt,
    required DateTime modifiedAt,
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       categoryName = Value(categoryName),
       imageUrl = Value(imageUrl),
       slug = Value(slug),
       sortOrder = Value(sortOrder),
       isActive = Value(isActive),
       createdAt = Value(createdAt),
       modifiedAt = Value(modifiedAt);
  static Insertable<Category> custom({
    Expression<String>? id,
    Expression<String>? categoryName,
    Expression<String>? imageUrl,
    Expression<String>? slug,
    Expression<int>? sortOrder,
    Expression<bool>? isActive,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? modifiedAt,
    Expression<String>? syncStatus,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (categoryName != null) 'category_name': categoryName,
      if (imageUrl != null) 'image_url': imageUrl,
      if (slug != null) 'slug': slug,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (modifiedAt != null) 'modified_at': modifiedAt,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CategoriesCompanion copyWith({
    Value<String>? id,
    Value<String>? categoryName,
    Value<String>? imageUrl,
    Value<String>? slug,
    Value<int>? sortOrder,
    Value<bool>? isActive,
    Value<DateTime>? createdAt,
    Value<DateTime>? modifiedAt,
    Value<String>? syncStatus,
    Value<int>? rowid,
  }) {
    return CategoriesCompanion(
      id: id ?? this.id,
      categoryName: categoryName ?? this.categoryName,
      imageUrl: imageUrl ?? this.imageUrl,
      slug: slug ?? this.slug,
      sortOrder: sortOrder ?? this.sortOrder,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: modifiedAt ?? this.modifiedAt,
      syncStatus: syncStatus ?? this.syncStatus,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (categoryName.present) {
      map['category_name'] = Variable<String>(categoryName.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (slug.present) {
      map['slug'] = Variable<String>(slug.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (modifiedAt.present) {
      map['modified_at'] = Variable<DateTime>(modifiedAt.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('categoryName: $categoryName, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('slug: $slug, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $QuestionPacksTable extends QuestionPacks
    with TableInfo<$QuestionPacksTable, QuestionPack> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestionPacksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
    'category_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _packTitleMeta = const VerificationMeta(
    'packTitle',
  );
  @override
  late final GeneratedColumn<String> packTitle = GeneratedColumn<String>(
    'pack_title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _packDescriptionMeta = const VerificationMeta(
    'packDescription',
  );
  @override
  late final GeneratedColumn<String> packDescription = GeneratedColumn<String>(
    'pack_description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _languageCodeMeta = const VerificationMeta(
    'languageCode',
  );
  @override
  late final GeneratedColumn<String> languageCode = GeneratedColumn<String>(
    'language_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String> tags =
      GeneratedColumn<String>(
        'tags',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<List<String>?>($QuestionPacksTable.$convertertagsn);
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdByIdMeta = const VerificationMeta(
    'createdById',
  );
  @override
  late final GeneratedColumn<String> createdById = GeneratedColumn<String>(
    'created_by_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _slugMeta = const VerificationMeta('slug');
  @override
  late final GeneratedColumn<String> slug = GeneratedColumn<String>(
    'slug',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _packVersionMeta = const VerificationMeta(
    'packVersion',
  );
  @override
  late final GeneratedColumn<int> packVersion = GeneratedColumn<int>(
    'pack_version',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _visibilityMeta = const VerificationMeta(
    'visibility',
  );
  @override
  late final GeneratedColumn<String> visibility = GeneratedColumn<String>(
    'visibility',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ratingCountMeta = const VerificationMeta(
    'ratingCount',
  );
  @override
  late final GeneratedColumn<int> ratingCount = GeneratedColumn<int>(
    'rating_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ratingAverageMeta = const VerificationMeta(
    'ratingAverage',
  );
  @override
  late final GeneratedColumn<double> ratingAverage = GeneratedColumn<double>(
    'rating_average',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modifiedAtMeta = const VerificationMeta(
    'modifiedAt',
  );
  @override
  late final GeneratedColumn<DateTime> modifiedAt = GeneratedColumn<DateTime>(
    'modified_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _syncStatusMeta = const VerificationMeta(
    'syncStatus',
  );
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant("synced"),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    categoryId,
    packTitle,
    packDescription,
    imageUrl,
    languageCode,
    tags,
    isActive,
    createdById,
    slug,
    packVersion,
    visibility,
    ratingCount,
    ratingAverage,
    createdAt,
    modifiedAt,
    syncStatus,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'question_packs';
  @override
  VerificationContext validateIntegrity(
    Insertable<QuestionPack> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('pack_title')) {
      context.handle(
        _packTitleMeta,
        packTitle.isAcceptableOrUnknown(data['pack_title']!, _packTitleMeta),
      );
    } else if (isInserting) {
      context.missing(_packTitleMeta);
    }
    if (data.containsKey('pack_description')) {
      context.handle(
        _packDescriptionMeta,
        packDescription.isAcceptableOrUnknown(
          data['pack_description']!,
          _packDescriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_packDescriptionMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('language_code')) {
      context.handle(
        _languageCodeMeta,
        languageCode.isAcceptableOrUnknown(
          data['language_code']!,
          _languageCodeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_languageCodeMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_by_id')) {
      context.handle(
        _createdByIdMeta,
        createdById.isAcceptableOrUnknown(
          data['created_by_id']!,
          _createdByIdMeta,
        ),
      );
    }
    if (data.containsKey('slug')) {
      context.handle(
        _slugMeta,
        slug.isAcceptableOrUnknown(data['slug']!, _slugMeta),
      );
    } else if (isInserting) {
      context.missing(_slugMeta);
    }
    if (data.containsKey('pack_version')) {
      context.handle(
        _packVersionMeta,
        packVersion.isAcceptableOrUnknown(
          data['pack_version']!,
          _packVersionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_packVersionMeta);
    }
    if (data.containsKey('visibility')) {
      context.handle(
        _visibilityMeta,
        visibility.isAcceptableOrUnknown(data['visibility']!, _visibilityMeta),
      );
    } else if (isInserting) {
      context.missing(_visibilityMeta);
    }
    if (data.containsKey('rating_count')) {
      context.handle(
        _ratingCountMeta,
        ratingCount.isAcceptableOrUnknown(
          data['rating_count']!,
          _ratingCountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ratingCountMeta);
    }
    if (data.containsKey('rating_average')) {
      context.handle(
        _ratingAverageMeta,
        ratingAverage.isAcceptableOrUnknown(
          data['rating_average']!,
          _ratingAverageMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ratingAverageMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('modified_at')) {
      context.handle(
        _modifiedAtMeta,
        modifiedAt.isAcceptableOrUnknown(data['modified_at']!, _modifiedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_modifiedAtMeta);
    }
    if (data.containsKey('sync_status')) {
      context.handle(
        _syncStatusMeta,
        syncStatus.isAcceptableOrUnknown(data['sync_status']!, _syncStatusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuestionPack map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuestionPack(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      categoryId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}category_id'],
          )!,
      packTitle:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}pack_title'],
          )!,
      packDescription:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}pack_description'],
          )!,
      imageUrl:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}image_url'],
          )!,
      languageCode:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}language_code'],
          )!,
      tags: $QuestionPacksTable.$convertertagsn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}tags'],
        ),
      ),
      isActive:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_active'],
          )!,
      createdById: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_by_id'],
      ),
      slug:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}slug'],
          )!,
      packVersion:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}pack_version'],
          )!,
      visibility:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}visibility'],
          )!,
      ratingCount:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}rating_count'],
          )!,
      ratingAverage:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}rating_average'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      modifiedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}modified_at'],
          )!,
      syncStatus:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}sync_status'],
          )!,
    );
  }

  @override
  $QuestionPacksTable createAlias(String alias) {
    return $QuestionPacksTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $convertertags =
      const StringListConverter();
  static TypeConverter<List<String>?, String?> $convertertagsn =
      NullAwareTypeConverter.wrap($convertertags);
}

class QuestionPack extends DataClass implements Insertable<QuestionPack> {
  final String id;
  final String categoryId;
  final String packTitle;
  final String packDescription;
  final String imageUrl;
  final String languageCode;
  final List<String>? tags;
  final bool isActive;
  final String? createdById;
  final String slug;
  final int packVersion;
  final String visibility;
  final int ratingCount;
  final double ratingAverage;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final String syncStatus;
  const QuestionPack({
    required this.id,
    required this.categoryId,
    required this.packTitle,
    required this.packDescription,
    required this.imageUrl,
    required this.languageCode,
    this.tags,
    required this.isActive,
    this.createdById,
    required this.slug,
    required this.packVersion,
    required this.visibility,
    required this.ratingCount,
    required this.ratingAverage,
    required this.createdAt,
    required this.modifiedAt,
    required this.syncStatus,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['category_id'] = Variable<String>(categoryId);
    map['pack_title'] = Variable<String>(packTitle);
    map['pack_description'] = Variable<String>(packDescription);
    map['image_url'] = Variable<String>(imageUrl);
    map['language_code'] = Variable<String>(languageCode);
    if (!nullToAbsent || tags != null) {
      map['tags'] = Variable<String>(
        $QuestionPacksTable.$convertertagsn.toSql(tags),
      );
    }
    map['is_active'] = Variable<bool>(isActive);
    if (!nullToAbsent || createdById != null) {
      map['created_by_id'] = Variable<String>(createdById);
    }
    map['slug'] = Variable<String>(slug);
    map['pack_version'] = Variable<int>(packVersion);
    map['visibility'] = Variable<String>(visibility);
    map['rating_count'] = Variable<int>(ratingCount);
    map['rating_average'] = Variable<double>(ratingAverage);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['modified_at'] = Variable<DateTime>(modifiedAt);
    map['sync_status'] = Variable<String>(syncStatus);
    return map;
  }

  QuestionPacksCompanion toCompanion(bool nullToAbsent) {
    return QuestionPacksCompanion(
      id: Value(id),
      categoryId: Value(categoryId),
      packTitle: Value(packTitle),
      packDescription: Value(packDescription),
      imageUrl: Value(imageUrl),
      languageCode: Value(languageCode),
      tags: tags == null && nullToAbsent ? const Value.absent() : Value(tags),
      isActive: Value(isActive),
      createdById:
          createdById == null && nullToAbsent
              ? const Value.absent()
              : Value(createdById),
      slug: Value(slug),
      packVersion: Value(packVersion),
      visibility: Value(visibility),
      ratingCount: Value(ratingCount),
      ratingAverage: Value(ratingAverage),
      createdAt: Value(createdAt),
      modifiedAt: Value(modifiedAt),
      syncStatus: Value(syncStatus),
    );
  }

  factory QuestionPack.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuestionPack(
      id: serializer.fromJson<String>(json['id']),
      categoryId: serializer.fromJson<String>(json['categoryId']),
      packTitle: serializer.fromJson<String>(json['packTitle']),
      packDescription: serializer.fromJson<String>(json['packDescription']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      languageCode: serializer.fromJson<String>(json['languageCode']),
      tags: serializer.fromJson<List<String>?>(json['tags']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdById: serializer.fromJson<String?>(json['createdById']),
      slug: serializer.fromJson<String>(json['slug']),
      packVersion: serializer.fromJson<int>(json['packVersion']),
      visibility: serializer.fromJson<String>(json['visibility']),
      ratingCount: serializer.fromJson<int>(json['ratingCount']),
      ratingAverage: serializer.fromJson<double>(json['ratingAverage']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      modifiedAt: serializer.fromJson<DateTime>(json['modifiedAt']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'categoryId': serializer.toJson<String>(categoryId),
      'packTitle': serializer.toJson<String>(packTitle),
      'packDescription': serializer.toJson<String>(packDescription),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'languageCode': serializer.toJson<String>(languageCode),
      'tags': serializer.toJson<List<String>?>(tags),
      'isActive': serializer.toJson<bool>(isActive),
      'createdById': serializer.toJson<String?>(createdById),
      'slug': serializer.toJson<String>(slug),
      'packVersion': serializer.toJson<int>(packVersion),
      'visibility': serializer.toJson<String>(visibility),
      'ratingCount': serializer.toJson<int>(ratingCount),
      'ratingAverage': serializer.toJson<double>(ratingAverage),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'modifiedAt': serializer.toJson<DateTime>(modifiedAt),
      'syncStatus': serializer.toJson<String>(syncStatus),
    };
  }

  QuestionPack copyWith({
    String? id,
    String? categoryId,
    String? packTitle,
    String? packDescription,
    String? imageUrl,
    String? languageCode,
    Value<List<String>?> tags = const Value.absent(),
    bool? isActive,
    Value<String?> createdById = const Value.absent(),
    String? slug,
    int? packVersion,
    String? visibility,
    int? ratingCount,
    double? ratingAverage,
    DateTime? createdAt,
    DateTime? modifiedAt,
    String? syncStatus,
  }) => QuestionPack(
    id: id ?? this.id,
    categoryId: categoryId ?? this.categoryId,
    packTitle: packTitle ?? this.packTitle,
    packDescription: packDescription ?? this.packDescription,
    imageUrl: imageUrl ?? this.imageUrl,
    languageCode: languageCode ?? this.languageCode,
    tags: tags.present ? tags.value : this.tags,
    isActive: isActive ?? this.isActive,
    createdById: createdById.present ? createdById.value : this.createdById,
    slug: slug ?? this.slug,
    packVersion: packVersion ?? this.packVersion,
    visibility: visibility ?? this.visibility,
    ratingCount: ratingCount ?? this.ratingCount,
    ratingAverage: ratingAverage ?? this.ratingAverage,
    createdAt: createdAt ?? this.createdAt,
    modifiedAt: modifiedAt ?? this.modifiedAt,
    syncStatus: syncStatus ?? this.syncStatus,
  );
  QuestionPack copyWithCompanion(QuestionPacksCompanion data) {
    return QuestionPack(
      id: data.id.present ? data.id.value : this.id,
      categoryId:
          data.categoryId.present ? data.categoryId.value : this.categoryId,
      packTitle: data.packTitle.present ? data.packTitle.value : this.packTitle,
      packDescription:
          data.packDescription.present
              ? data.packDescription.value
              : this.packDescription,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      languageCode:
          data.languageCode.present
              ? data.languageCode.value
              : this.languageCode,
      tags: data.tags.present ? data.tags.value : this.tags,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdById:
          data.createdById.present ? data.createdById.value : this.createdById,
      slug: data.slug.present ? data.slug.value : this.slug,
      packVersion:
          data.packVersion.present ? data.packVersion.value : this.packVersion,
      visibility:
          data.visibility.present ? data.visibility.value : this.visibility,
      ratingCount:
          data.ratingCount.present ? data.ratingCount.value : this.ratingCount,
      ratingAverage:
          data.ratingAverage.present
              ? data.ratingAverage.value
              : this.ratingAverage,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      modifiedAt:
          data.modifiedAt.present ? data.modifiedAt.value : this.modifiedAt,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QuestionPack(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('packTitle: $packTitle, ')
          ..write('packDescription: $packDescription, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('languageCode: $languageCode, ')
          ..write('tags: $tags, ')
          ..write('isActive: $isActive, ')
          ..write('createdById: $createdById, ')
          ..write('slug: $slug, ')
          ..write('packVersion: $packVersion, ')
          ..write('visibility: $visibility, ')
          ..write('ratingCount: $ratingCount, ')
          ..write('ratingAverage: $ratingAverage, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('syncStatus: $syncStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    categoryId,
    packTitle,
    packDescription,
    imageUrl,
    languageCode,
    tags,
    isActive,
    createdById,
    slug,
    packVersion,
    visibility,
    ratingCount,
    ratingAverage,
    createdAt,
    modifiedAt,
    syncStatus,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuestionPack &&
          other.id == this.id &&
          other.categoryId == this.categoryId &&
          other.packTitle == this.packTitle &&
          other.packDescription == this.packDescription &&
          other.imageUrl == this.imageUrl &&
          other.languageCode == this.languageCode &&
          other.tags == this.tags &&
          other.isActive == this.isActive &&
          other.createdById == this.createdById &&
          other.slug == this.slug &&
          other.packVersion == this.packVersion &&
          other.visibility == this.visibility &&
          other.ratingCount == this.ratingCount &&
          other.ratingAverage == this.ratingAverage &&
          other.createdAt == this.createdAt &&
          other.modifiedAt == this.modifiedAt &&
          other.syncStatus == this.syncStatus);
}

class QuestionPacksCompanion extends UpdateCompanion<QuestionPack> {
  final Value<String> id;
  final Value<String> categoryId;
  final Value<String> packTitle;
  final Value<String> packDescription;
  final Value<String> imageUrl;
  final Value<String> languageCode;
  final Value<List<String>?> tags;
  final Value<bool> isActive;
  final Value<String?> createdById;
  final Value<String> slug;
  final Value<int> packVersion;
  final Value<String> visibility;
  final Value<int> ratingCount;
  final Value<double> ratingAverage;
  final Value<DateTime> createdAt;
  final Value<DateTime> modifiedAt;
  final Value<String> syncStatus;
  final Value<int> rowid;
  const QuestionPacksCompanion({
    this.id = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.packTitle = const Value.absent(),
    this.packDescription = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.tags = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdById = const Value.absent(),
    this.slug = const Value.absent(),
    this.packVersion = const Value.absent(),
    this.visibility = const Value.absent(),
    this.ratingCount = const Value.absent(),
    this.ratingAverage = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.modifiedAt = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuestionPacksCompanion.insert({
    required String id,
    required String categoryId,
    required String packTitle,
    required String packDescription,
    required String imageUrl,
    required String languageCode,
    this.tags = const Value.absent(),
    required bool isActive,
    this.createdById = const Value.absent(),
    required String slug,
    required int packVersion,
    required String visibility,
    required int ratingCount,
    required double ratingAverage,
    required DateTime createdAt,
    required DateTime modifiedAt,
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       categoryId = Value(categoryId),
       packTitle = Value(packTitle),
       packDescription = Value(packDescription),
       imageUrl = Value(imageUrl),
       languageCode = Value(languageCode),
       isActive = Value(isActive),
       slug = Value(slug),
       packVersion = Value(packVersion),
       visibility = Value(visibility),
       ratingCount = Value(ratingCount),
       ratingAverage = Value(ratingAverage),
       createdAt = Value(createdAt),
       modifiedAt = Value(modifiedAt);
  static Insertable<QuestionPack> custom({
    Expression<String>? id,
    Expression<String>? categoryId,
    Expression<String>? packTitle,
    Expression<String>? packDescription,
    Expression<String>? imageUrl,
    Expression<String>? languageCode,
    Expression<String>? tags,
    Expression<bool>? isActive,
    Expression<String>? createdById,
    Expression<String>? slug,
    Expression<int>? packVersion,
    Expression<String>? visibility,
    Expression<int>? ratingCount,
    Expression<double>? ratingAverage,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? modifiedAt,
    Expression<String>? syncStatus,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (categoryId != null) 'category_id': categoryId,
      if (packTitle != null) 'pack_title': packTitle,
      if (packDescription != null) 'pack_description': packDescription,
      if (imageUrl != null) 'image_url': imageUrl,
      if (languageCode != null) 'language_code': languageCode,
      if (tags != null) 'tags': tags,
      if (isActive != null) 'is_active': isActive,
      if (createdById != null) 'created_by_id': createdById,
      if (slug != null) 'slug': slug,
      if (packVersion != null) 'pack_version': packVersion,
      if (visibility != null) 'visibility': visibility,
      if (ratingCount != null) 'rating_count': ratingCount,
      if (ratingAverage != null) 'rating_average': ratingAverage,
      if (createdAt != null) 'created_at': createdAt,
      if (modifiedAt != null) 'modified_at': modifiedAt,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuestionPacksCompanion copyWith({
    Value<String>? id,
    Value<String>? categoryId,
    Value<String>? packTitle,
    Value<String>? packDescription,
    Value<String>? imageUrl,
    Value<String>? languageCode,
    Value<List<String>?>? tags,
    Value<bool>? isActive,
    Value<String?>? createdById,
    Value<String>? slug,
    Value<int>? packVersion,
    Value<String>? visibility,
    Value<int>? ratingCount,
    Value<double>? ratingAverage,
    Value<DateTime>? createdAt,
    Value<DateTime>? modifiedAt,
    Value<String>? syncStatus,
    Value<int>? rowid,
  }) {
    return QuestionPacksCompanion(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      packTitle: packTitle ?? this.packTitle,
      packDescription: packDescription ?? this.packDescription,
      imageUrl: imageUrl ?? this.imageUrl,
      languageCode: languageCode ?? this.languageCode,
      tags: tags ?? this.tags,
      isActive: isActive ?? this.isActive,
      createdById: createdById ?? this.createdById,
      slug: slug ?? this.slug,
      packVersion: packVersion ?? this.packVersion,
      visibility: visibility ?? this.visibility,
      ratingCount: ratingCount ?? this.ratingCount,
      ratingAverage: ratingAverage ?? this.ratingAverage,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: modifiedAt ?? this.modifiedAt,
      syncStatus: syncStatus ?? this.syncStatus,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (packTitle.present) {
      map['pack_title'] = Variable<String>(packTitle.value);
    }
    if (packDescription.present) {
      map['pack_description'] = Variable<String>(packDescription.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (languageCode.present) {
      map['language_code'] = Variable<String>(languageCode.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(
        $QuestionPacksTable.$convertertagsn.toSql(tags.value),
      );
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdById.present) {
      map['created_by_id'] = Variable<String>(createdById.value);
    }
    if (slug.present) {
      map['slug'] = Variable<String>(slug.value);
    }
    if (packVersion.present) {
      map['pack_version'] = Variable<int>(packVersion.value);
    }
    if (visibility.present) {
      map['visibility'] = Variable<String>(visibility.value);
    }
    if (ratingCount.present) {
      map['rating_count'] = Variable<int>(ratingCount.value);
    }
    if (ratingAverage.present) {
      map['rating_average'] = Variable<double>(ratingAverage.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (modifiedAt.present) {
      map['modified_at'] = Variable<DateTime>(modifiedAt.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionPacksCompanion(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('packTitle: $packTitle, ')
          ..write('packDescription: $packDescription, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('languageCode: $languageCode, ')
          ..write('tags: $tags, ')
          ..write('isActive: $isActive, ')
          ..write('createdById: $createdById, ')
          ..write('slug: $slug, ')
          ..write('packVersion: $packVersion, ')
          ..write('visibility: $visibility, ')
          ..write('ratingCount: $ratingCount, ')
          ..write('ratingAverage: $ratingAverage, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $QuestionsTable extends Questions
    with TableInfo<$QuestionsTable, Question> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _packIdMeta = const VerificationMeta('packId');
  @override
  late final GeneratedColumn<String> packId = GeneratedColumn<String>(
    'pack_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _questionTextMeta = const VerificationMeta(
    'questionText',
  );
  @override
  late final GeneratedColumn<String> questionText = GeneratedColumn<String>(
    'question_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _questionTypeMeta = const VerificationMeta(
    'questionType',
  );
  @override
  late final GeneratedColumn<String> questionType = GeneratedColumn<String>(
    'question_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _orderIndexMeta = const VerificationMeta(
    'orderIndex',
  );
  @override
  late final GeneratedColumn<int> orderIndex = GeneratedColumn<int>(
    'order_index',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String> tags =
      GeneratedColumn<String>(
        'tags',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<List<String>?>($QuestionsTable.$convertertagsn);
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modifiedAtMeta = const VerificationMeta(
    'modifiedAt',
  );
  @override
  late final GeneratedColumn<DateTime> modifiedAt = GeneratedColumn<DateTime>(
    'modified_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _syncStatusMeta = const VerificationMeta(
    'syncStatus',
  );
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant("synced"),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    packId,
    questionText,
    questionType,
    orderIndex,
    tags,
    isActive,
    createdAt,
    modifiedAt,
    syncStatus,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'questions';
  @override
  VerificationContext validateIntegrity(
    Insertable<Question> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('pack_id')) {
      context.handle(
        _packIdMeta,
        packId.isAcceptableOrUnknown(data['pack_id']!, _packIdMeta),
      );
    } else if (isInserting) {
      context.missing(_packIdMeta);
    }
    if (data.containsKey('question_text')) {
      context.handle(
        _questionTextMeta,
        questionText.isAcceptableOrUnknown(
          data['question_text']!,
          _questionTextMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_questionTextMeta);
    }
    if (data.containsKey('question_type')) {
      context.handle(
        _questionTypeMeta,
        questionType.isAcceptableOrUnknown(
          data['question_type']!,
          _questionTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_questionTypeMeta);
    }
    if (data.containsKey('order_index')) {
      context.handle(
        _orderIndexMeta,
        orderIndex.isAcceptableOrUnknown(data['order_index']!, _orderIndexMeta),
      );
    } else if (isInserting) {
      context.missing(_orderIndexMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('modified_at')) {
      context.handle(
        _modifiedAtMeta,
        modifiedAt.isAcceptableOrUnknown(data['modified_at']!, _modifiedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_modifiedAtMeta);
    }
    if (data.containsKey('sync_status')) {
      context.handle(
        _syncStatusMeta,
        syncStatus.isAcceptableOrUnknown(data['sync_status']!, _syncStatusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Question map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Question(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      packId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}pack_id'],
          )!,
      questionText:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}question_text'],
          )!,
      questionType:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}question_type'],
          )!,
      orderIndex:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}order_index'],
          )!,
      tags: $QuestionsTable.$convertertagsn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}tags'],
        ),
      ),
      isActive:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_active'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      modifiedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}modified_at'],
          )!,
      syncStatus:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}sync_status'],
          )!,
    );
  }

  @override
  $QuestionsTable createAlias(String alias) {
    return $QuestionsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $convertertags =
      const StringListConverter();
  static TypeConverter<List<String>?, String?> $convertertagsn =
      NullAwareTypeConverter.wrap($convertertags);
}

class Question extends DataClass implements Insertable<Question> {
  final String id;
  final String packId;
  final String questionText;
  final String questionType;
  final int orderIndex;
  final List<String>? tags;
  final bool isActive;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final String syncStatus;
  const Question({
    required this.id,
    required this.packId,
    required this.questionText,
    required this.questionType,
    required this.orderIndex,
    this.tags,
    required this.isActive,
    required this.createdAt,
    required this.modifiedAt,
    required this.syncStatus,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['pack_id'] = Variable<String>(packId);
    map['question_text'] = Variable<String>(questionText);
    map['question_type'] = Variable<String>(questionType);
    map['order_index'] = Variable<int>(orderIndex);
    if (!nullToAbsent || tags != null) {
      map['tags'] = Variable<String>(
        $QuestionsTable.$convertertagsn.toSql(tags),
      );
    }
    map['is_active'] = Variable<bool>(isActive);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['modified_at'] = Variable<DateTime>(modifiedAt);
    map['sync_status'] = Variable<String>(syncStatus);
    return map;
  }

  QuestionsCompanion toCompanion(bool nullToAbsent) {
    return QuestionsCompanion(
      id: Value(id),
      packId: Value(packId),
      questionText: Value(questionText),
      questionType: Value(questionType),
      orderIndex: Value(orderIndex),
      tags: tags == null && nullToAbsent ? const Value.absent() : Value(tags),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
      modifiedAt: Value(modifiedAt),
      syncStatus: Value(syncStatus),
    );
  }

  factory Question.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Question(
      id: serializer.fromJson<String>(json['id']),
      packId: serializer.fromJson<String>(json['packId']),
      questionText: serializer.fromJson<String>(json['questionText']),
      questionType: serializer.fromJson<String>(json['questionType']),
      orderIndex: serializer.fromJson<int>(json['orderIndex']),
      tags: serializer.fromJson<List<String>?>(json['tags']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      modifiedAt: serializer.fromJson<DateTime>(json['modifiedAt']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'packId': serializer.toJson<String>(packId),
      'questionText': serializer.toJson<String>(questionText),
      'questionType': serializer.toJson<String>(questionType),
      'orderIndex': serializer.toJson<int>(orderIndex),
      'tags': serializer.toJson<List<String>?>(tags),
      'isActive': serializer.toJson<bool>(isActive),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'modifiedAt': serializer.toJson<DateTime>(modifiedAt),
      'syncStatus': serializer.toJson<String>(syncStatus),
    };
  }

  Question copyWith({
    String? id,
    String? packId,
    String? questionText,
    String? questionType,
    int? orderIndex,
    Value<List<String>?> tags = const Value.absent(),
    bool? isActive,
    DateTime? createdAt,
    DateTime? modifiedAt,
    String? syncStatus,
  }) => Question(
    id: id ?? this.id,
    packId: packId ?? this.packId,
    questionText: questionText ?? this.questionText,
    questionType: questionType ?? this.questionType,
    orderIndex: orderIndex ?? this.orderIndex,
    tags: tags.present ? tags.value : this.tags,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt ?? this.createdAt,
    modifiedAt: modifiedAt ?? this.modifiedAt,
    syncStatus: syncStatus ?? this.syncStatus,
  );
  Question copyWithCompanion(QuestionsCompanion data) {
    return Question(
      id: data.id.present ? data.id.value : this.id,
      packId: data.packId.present ? data.packId.value : this.packId,
      questionText:
          data.questionText.present
              ? data.questionText.value
              : this.questionText,
      questionType:
          data.questionType.present
              ? data.questionType.value
              : this.questionType,
      orderIndex:
          data.orderIndex.present ? data.orderIndex.value : this.orderIndex,
      tags: data.tags.present ? data.tags.value : this.tags,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      modifiedAt:
          data.modifiedAt.present ? data.modifiedAt.value : this.modifiedAt,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Question(')
          ..write('id: $id, ')
          ..write('packId: $packId, ')
          ..write('questionText: $questionText, ')
          ..write('questionType: $questionType, ')
          ..write('orderIndex: $orderIndex, ')
          ..write('tags: $tags, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('syncStatus: $syncStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    packId,
    questionText,
    questionType,
    orderIndex,
    tags,
    isActive,
    createdAt,
    modifiedAt,
    syncStatus,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Question &&
          other.id == this.id &&
          other.packId == this.packId &&
          other.questionText == this.questionText &&
          other.questionType == this.questionType &&
          other.orderIndex == this.orderIndex &&
          other.tags == this.tags &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.modifiedAt == this.modifiedAt &&
          other.syncStatus == this.syncStatus);
}

class QuestionsCompanion extends UpdateCompanion<Question> {
  final Value<String> id;
  final Value<String> packId;
  final Value<String> questionText;
  final Value<String> questionType;
  final Value<int> orderIndex;
  final Value<List<String>?> tags;
  final Value<bool> isActive;
  final Value<DateTime> createdAt;
  final Value<DateTime> modifiedAt;
  final Value<String> syncStatus;
  final Value<int> rowid;
  const QuestionsCompanion({
    this.id = const Value.absent(),
    this.packId = const Value.absent(),
    this.questionText = const Value.absent(),
    this.questionType = const Value.absent(),
    this.orderIndex = const Value.absent(),
    this.tags = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.modifiedAt = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QuestionsCompanion.insert({
    required String id,
    required String packId,
    required String questionText,
    required String questionType,
    required int orderIndex,
    this.tags = const Value.absent(),
    required bool isActive,
    required DateTime createdAt,
    required DateTime modifiedAt,
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       packId = Value(packId),
       questionText = Value(questionText),
       questionType = Value(questionType),
       orderIndex = Value(orderIndex),
       isActive = Value(isActive),
       createdAt = Value(createdAt),
       modifiedAt = Value(modifiedAt);
  static Insertable<Question> custom({
    Expression<String>? id,
    Expression<String>? packId,
    Expression<String>? questionText,
    Expression<String>? questionType,
    Expression<int>? orderIndex,
    Expression<String>? tags,
    Expression<bool>? isActive,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? modifiedAt,
    Expression<String>? syncStatus,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (packId != null) 'pack_id': packId,
      if (questionText != null) 'question_text': questionText,
      if (questionType != null) 'question_type': questionType,
      if (orderIndex != null) 'order_index': orderIndex,
      if (tags != null) 'tags': tags,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (modifiedAt != null) 'modified_at': modifiedAt,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QuestionsCompanion copyWith({
    Value<String>? id,
    Value<String>? packId,
    Value<String>? questionText,
    Value<String>? questionType,
    Value<int>? orderIndex,
    Value<List<String>?>? tags,
    Value<bool>? isActive,
    Value<DateTime>? createdAt,
    Value<DateTime>? modifiedAt,
    Value<String>? syncStatus,
    Value<int>? rowid,
  }) {
    return QuestionsCompanion(
      id: id ?? this.id,
      packId: packId ?? this.packId,
      questionText: questionText ?? this.questionText,
      questionType: questionType ?? this.questionType,
      orderIndex: orderIndex ?? this.orderIndex,
      tags: tags ?? this.tags,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: modifiedAt ?? this.modifiedAt,
      syncStatus: syncStatus ?? this.syncStatus,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (packId.present) {
      map['pack_id'] = Variable<String>(packId.value);
    }
    if (questionText.present) {
      map['question_text'] = Variable<String>(questionText.value);
    }
    if (questionType.present) {
      map['question_type'] = Variable<String>(questionType.value);
    }
    if (orderIndex.present) {
      map['order_index'] = Variable<int>(orderIndex.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(
        $QuestionsTable.$convertertagsn.toSql(tags.value),
      );
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (modifiedAt.present) {
      map['modified_at'] = Variable<DateTime>(modifiedAt.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionsCompanion(')
          ..write('id: $id, ')
          ..write('packId: $packId, ')
          ..write('questionText: $questionText, ')
          ..write('questionType: $questionType, ')
          ..write('orderIndex: $orderIndex, ')
          ..write('tags: $tags, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TranslationsTable extends Translations
    with TableInfo<$TranslationsTable, Translation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TranslationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _entityTypeMeta = const VerificationMeta(
    'entityType',
  );
  @override
  late final GeneratedColumn<String> entityType = GeneratedColumn<String>(
    'entity_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _entityIdMeta = const VerificationMeta(
    'entityId',
  );
  @override
  late final GeneratedColumn<String> entityId = GeneratedColumn<String>(
    'entity_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fieldNameMeta = const VerificationMeta(
    'fieldName',
  );
  @override
  late final GeneratedColumn<String> fieldName = GeneratedColumn<String>(
    'field_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _languageCodeMeta = const VerificationMeta(
    'languageCode',
  );
  @override
  late final GeneratedColumn<String> languageCode = GeneratedColumn<String>(
    'language_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _translationTextMeta = const VerificationMeta(
    'translationText',
  );
  @override
  late final GeneratedColumn<String> translationText = GeneratedColumn<String>(
    'translation_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isVerifiedMeta = const VerificationMeta(
    'isVerified',
  );
  @override
  late final GeneratedColumn<bool> isVerified = GeneratedColumn<bool>(
    'is_verified',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_verified" IN (0, 1))',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modifiedAtMeta = const VerificationMeta(
    'modifiedAt',
  );
  @override
  late final GeneratedColumn<DateTime> modifiedAt = GeneratedColumn<DateTime>(
    'modified_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _syncStatusMeta = const VerificationMeta(
    'syncStatus',
  );
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant("synced"),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    entityType,
    entityId,
    fieldName,
    languageCode,
    translationText,
    isVerified,
    createdAt,
    modifiedAt,
    syncStatus,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'translations';
  @override
  VerificationContext validateIntegrity(
    Insertable<Translation> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('entity_type')) {
      context.handle(
        _entityTypeMeta,
        entityType.isAcceptableOrUnknown(data['entity_type']!, _entityTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_entityTypeMeta);
    }
    if (data.containsKey('entity_id')) {
      context.handle(
        _entityIdMeta,
        entityId.isAcceptableOrUnknown(data['entity_id']!, _entityIdMeta),
      );
    } else if (isInserting) {
      context.missing(_entityIdMeta);
    }
    if (data.containsKey('field_name')) {
      context.handle(
        _fieldNameMeta,
        fieldName.isAcceptableOrUnknown(data['field_name']!, _fieldNameMeta),
      );
    } else if (isInserting) {
      context.missing(_fieldNameMeta);
    }
    if (data.containsKey('language_code')) {
      context.handle(
        _languageCodeMeta,
        languageCode.isAcceptableOrUnknown(
          data['language_code']!,
          _languageCodeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_languageCodeMeta);
    }
    if (data.containsKey('translation_text')) {
      context.handle(
        _translationTextMeta,
        translationText.isAcceptableOrUnknown(
          data['translation_text']!,
          _translationTextMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_translationTextMeta);
    }
    if (data.containsKey('is_verified')) {
      context.handle(
        _isVerifiedMeta,
        isVerified.isAcceptableOrUnknown(data['is_verified']!, _isVerifiedMeta),
      );
    } else if (isInserting) {
      context.missing(_isVerifiedMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('modified_at')) {
      context.handle(
        _modifiedAtMeta,
        modifiedAt.isAcceptableOrUnknown(data['modified_at']!, _modifiedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_modifiedAtMeta);
    }
    if (data.containsKey('sync_status')) {
      context.handle(
        _syncStatusMeta,
        syncStatus.isAcceptableOrUnknown(data['sync_status']!, _syncStatusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Translation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Translation(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      entityType:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}entity_type'],
          )!,
      entityId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}entity_id'],
          )!,
      fieldName:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}field_name'],
          )!,
      languageCode:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}language_code'],
          )!,
      translationText:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}translation_text'],
          )!,
      isVerified:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}is_verified'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      modifiedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}modified_at'],
          )!,
      syncStatus:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}sync_status'],
          )!,
    );
  }

  @override
  $TranslationsTable createAlias(String alias) {
    return $TranslationsTable(attachedDatabase, alias);
  }
}

class Translation extends DataClass implements Insertable<Translation> {
  final String id;
  final String entityType;
  final String entityId;
  final String fieldName;
  final String languageCode;
  final String translationText;
  final bool isVerified;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final String syncStatus;
  const Translation({
    required this.id,
    required this.entityType,
    required this.entityId,
    required this.fieldName,
    required this.languageCode,
    required this.translationText,
    required this.isVerified,
    required this.createdAt,
    required this.modifiedAt,
    required this.syncStatus,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['entity_type'] = Variable<String>(entityType);
    map['entity_id'] = Variable<String>(entityId);
    map['field_name'] = Variable<String>(fieldName);
    map['language_code'] = Variable<String>(languageCode);
    map['translation_text'] = Variable<String>(translationText);
    map['is_verified'] = Variable<bool>(isVerified);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['modified_at'] = Variable<DateTime>(modifiedAt);
    map['sync_status'] = Variable<String>(syncStatus);
    return map;
  }

  TranslationsCompanion toCompanion(bool nullToAbsent) {
    return TranslationsCompanion(
      id: Value(id),
      entityType: Value(entityType),
      entityId: Value(entityId),
      fieldName: Value(fieldName),
      languageCode: Value(languageCode),
      translationText: Value(translationText),
      isVerified: Value(isVerified),
      createdAt: Value(createdAt),
      modifiedAt: Value(modifiedAt),
      syncStatus: Value(syncStatus),
    );
  }

  factory Translation.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Translation(
      id: serializer.fromJson<String>(json['id']),
      entityType: serializer.fromJson<String>(json['entityType']),
      entityId: serializer.fromJson<String>(json['entityId']),
      fieldName: serializer.fromJson<String>(json['fieldName']),
      languageCode: serializer.fromJson<String>(json['languageCode']),
      translationText: serializer.fromJson<String>(json['translationText']),
      isVerified: serializer.fromJson<bool>(json['isVerified']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      modifiedAt: serializer.fromJson<DateTime>(json['modifiedAt']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'entityType': serializer.toJson<String>(entityType),
      'entityId': serializer.toJson<String>(entityId),
      'fieldName': serializer.toJson<String>(fieldName),
      'languageCode': serializer.toJson<String>(languageCode),
      'translationText': serializer.toJson<String>(translationText),
      'isVerified': serializer.toJson<bool>(isVerified),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'modifiedAt': serializer.toJson<DateTime>(modifiedAt),
      'syncStatus': serializer.toJson<String>(syncStatus),
    };
  }

  Translation copyWith({
    String? id,
    String? entityType,
    String? entityId,
    String? fieldName,
    String? languageCode,
    String? translationText,
    bool? isVerified,
    DateTime? createdAt,
    DateTime? modifiedAt,
    String? syncStatus,
  }) => Translation(
    id: id ?? this.id,
    entityType: entityType ?? this.entityType,
    entityId: entityId ?? this.entityId,
    fieldName: fieldName ?? this.fieldName,
    languageCode: languageCode ?? this.languageCode,
    translationText: translationText ?? this.translationText,
    isVerified: isVerified ?? this.isVerified,
    createdAt: createdAt ?? this.createdAt,
    modifiedAt: modifiedAt ?? this.modifiedAt,
    syncStatus: syncStatus ?? this.syncStatus,
  );
  Translation copyWithCompanion(TranslationsCompanion data) {
    return Translation(
      id: data.id.present ? data.id.value : this.id,
      entityType:
          data.entityType.present ? data.entityType.value : this.entityType,
      entityId: data.entityId.present ? data.entityId.value : this.entityId,
      fieldName: data.fieldName.present ? data.fieldName.value : this.fieldName,
      languageCode:
          data.languageCode.present
              ? data.languageCode.value
              : this.languageCode,
      translationText:
          data.translationText.present
              ? data.translationText.value
              : this.translationText,
      isVerified:
          data.isVerified.present ? data.isVerified.value : this.isVerified,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      modifiedAt:
          data.modifiedAt.present ? data.modifiedAt.value : this.modifiedAt,
      syncStatus:
          data.syncStatus.present ? data.syncStatus.value : this.syncStatus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Translation(')
          ..write('id: $id, ')
          ..write('entityType: $entityType, ')
          ..write('entityId: $entityId, ')
          ..write('fieldName: $fieldName, ')
          ..write('languageCode: $languageCode, ')
          ..write('translationText: $translationText, ')
          ..write('isVerified: $isVerified, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('syncStatus: $syncStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    entityType,
    entityId,
    fieldName,
    languageCode,
    translationText,
    isVerified,
    createdAt,
    modifiedAt,
    syncStatus,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Translation &&
          other.id == this.id &&
          other.entityType == this.entityType &&
          other.entityId == this.entityId &&
          other.fieldName == this.fieldName &&
          other.languageCode == this.languageCode &&
          other.translationText == this.translationText &&
          other.isVerified == this.isVerified &&
          other.createdAt == this.createdAt &&
          other.modifiedAt == this.modifiedAt &&
          other.syncStatus == this.syncStatus);
}

class TranslationsCompanion extends UpdateCompanion<Translation> {
  final Value<String> id;
  final Value<String> entityType;
  final Value<String> entityId;
  final Value<String> fieldName;
  final Value<String> languageCode;
  final Value<String> translationText;
  final Value<bool> isVerified;
  final Value<DateTime> createdAt;
  final Value<DateTime> modifiedAt;
  final Value<String> syncStatus;
  final Value<int> rowid;
  const TranslationsCompanion({
    this.id = const Value.absent(),
    this.entityType = const Value.absent(),
    this.entityId = const Value.absent(),
    this.fieldName = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.translationText = const Value.absent(),
    this.isVerified = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.modifiedAt = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TranslationsCompanion.insert({
    required String id,
    required String entityType,
    required String entityId,
    required String fieldName,
    required String languageCode,
    required String translationText,
    required bool isVerified,
    required DateTime createdAt,
    required DateTime modifiedAt,
    this.syncStatus = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       entityType = Value(entityType),
       entityId = Value(entityId),
       fieldName = Value(fieldName),
       languageCode = Value(languageCode),
       translationText = Value(translationText),
       isVerified = Value(isVerified),
       createdAt = Value(createdAt),
       modifiedAt = Value(modifiedAt);
  static Insertable<Translation> custom({
    Expression<String>? id,
    Expression<String>? entityType,
    Expression<String>? entityId,
    Expression<String>? fieldName,
    Expression<String>? languageCode,
    Expression<String>? translationText,
    Expression<bool>? isVerified,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? modifiedAt,
    Expression<String>? syncStatus,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (entityType != null) 'entity_type': entityType,
      if (entityId != null) 'entity_id': entityId,
      if (fieldName != null) 'field_name': fieldName,
      if (languageCode != null) 'language_code': languageCode,
      if (translationText != null) 'translation_text': translationText,
      if (isVerified != null) 'is_verified': isVerified,
      if (createdAt != null) 'created_at': createdAt,
      if (modifiedAt != null) 'modified_at': modifiedAt,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TranslationsCompanion copyWith({
    Value<String>? id,
    Value<String>? entityType,
    Value<String>? entityId,
    Value<String>? fieldName,
    Value<String>? languageCode,
    Value<String>? translationText,
    Value<bool>? isVerified,
    Value<DateTime>? createdAt,
    Value<DateTime>? modifiedAt,
    Value<String>? syncStatus,
    Value<int>? rowid,
  }) {
    return TranslationsCompanion(
      id: id ?? this.id,
      entityType: entityType ?? this.entityType,
      entityId: entityId ?? this.entityId,
      fieldName: fieldName ?? this.fieldName,
      languageCode: languageCode ?? this.languageCode,
      translationText: translationText ?? this.translationText,
      isVerified: isVerified ?? this.isVerified,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: modifiedAt ?? this.modifiedAt,
      syncStatus: syncStatus ?? this.syncStatus,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (entityType.present) {
      map['entity_type'] = Variable<String>(entityType.value);
    }
    if (entityId.present) {
      map['entity_id'] = Variable<String>(entityId.value);
    }
    if (fieldName.present) {
      map['field_name'] = Variable<String>(fieldName.value);
    }
    if (languageCode.present) {
      map['language_code'] = Variable<String>(languageCode.value);
    }
    if (translationText.present) {
      map['translation_text'] = Variable<String>(translationText.value);
    }
    if (isVerified.present) {
      map['is_verified'] = Variable<bool>(isVerified.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (modifiedAt.present) {
      map['modified_at'] = Variable<DateTime>(modifiedAt.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TranslationsCompanion(')
          ..write('id: $id, ')
          ..write('entityType: $entityType, ')
          ..write('entityId: $entityId, ')
          ..write('fieldName: $fieldName, ')
          ..write('languageCode: $languageCode, ')
          ..write('translationText: $translationText, ')
          ..write('isVerified: $isVerified, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $QuestionPacksTable questionPacks = $QuestionPacksTable(this);
  late final $QuestionsTable questions = $QuestionsTable(this);
  late final $TranslationsTable translations = $TranslationsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    categories,
    questionPacks,
    questions,
    translations,
  ];
}

typedef $$CategoriesTableCreateCompanionBuilder =
    CategoriesCompanion Function({
      required String id,
      required String categoryName,
      required String imageUrl,
      required String slug,
      required int sortOrder,
      required bool isActive,
      required DateTime createdAt,
      required DateTime modifiedAt,
      Value<String> syncStatus,
      Value<int> rowid,
    });
typedef $$CategoriesTableUpdateCompanionBuilder =
    CategoriesCompanion Function({
      Value<String> id,
      Value<String> categoryName,
      Value<String> imageUrl,
      Value<String> slug,
      Value<int> sortOrder,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime> modifiedAt,
      Value<String> syncStatus,
      Value<int> rowid,
    });

class $$CategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get categoryName => $composableBuilder(
    column: $table.categoryName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get modifiedAt => $composableBuilder(
    column: $table.modifiedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get categoryName => $composableBuilder(
    column: $table.categoryName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get modifiedAt => $composableBuilder(
    column: $table.modifiedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get categoryName => $composableBuilder(
    column: $table.categoryName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get slug =>
      $composableBuilder(column: $table.slug, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get modifiedAt => $composableBuilder(
    column: $table.modifiedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => column,
  );
}

class $$CategoriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CategoriesTable,
          Category,
          $$CategoriesTableFilterComposer,
          $$CategoriesTableOrderingComposer,
          $$CategoriesTableAnnotationComposer,
          $$CategoriesTableCreateCompanionBuilder,
          $$CategoriesTableUpdateCompanionBuilder,
          (Category, BaseReferences<_$AppDatabase, $CategoriesTable, Category>),
          Category,
          PrefetchHooks Function()
        > {
  $$CategoriesTableTableManager(_$AppDatabase db, $CategoriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$CategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$CategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$CategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> categoryName = const Value.absent(),
                Value<String> imageUrl = const Value.absent(),
                Value<String> slug = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> modifiedAt = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CategoriesCompanion(
                id: id,
                categoryName: categoryName,
                imageUrl: imageUrl,
                slug: slug,
                sortOrder: sortOrder,
                isActive: isActive,
                createdAt: createdAt,
                modifiedAt: modifiedAt,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String categoryName,
                required String imageUrl,
                required String slug,
                required int sortOrder,
                required bool isActive,
                required DateTime createdAt,
                required DateTime modifiedAt,
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CategoriesCompanion.insert(
                id: id,
                categoryName: categoryName,
                imageUrl: imageUrl,
                slug: slug,
                sortOrder: sortOrder,
                isActive: isActive,
                createdAt: createdAt,
                modifiedAt: modifiedAt,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CategoriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CategoriesTable,
      Category,
      $$CategoriesTableFilterComposer,
      $$CategoriesTableOrderingComposer,
      $$CategoriesTableAnnotationComposer,
      $$CategoriesTableCreateCompanionBuilder,
      $$CategoriesTableUpdateCompanionBuilder,
      (Category, BaseReferences<_$AppDatabase, $CategoriesTable, Category>),
      Category,
      PrefetchHooks Function()
    >;
typedef $$QuestionPacksTableCreateCompanionBuilder =
    QuestionPacksCompanion Function({
      required String id,
      required String categoryId,
      required String packTitle,
      required String packDescription,
      required String imageUrl,
      required String languageCode,
      Value<List<String>?> tags,
      required bool isActive,
      Value<String?> createdById,
      required String slug,
      required int packVersion,
      required String visibility,
      required int ratingCount,
      required double ratingAverage,
      required DateTime createdAt,
      required DateTime modifiedAt,
      Value<String> syncStatus,
      Value<int> rowid,
    });
typedef $$QuestionPacksTableUpdateCompanionBuilder =
    QuestionPacksCompanion Function({
      Value<String> id,
      Value<String> categoryId,
      Value<String> packTitle,
      Value<String> packDescription,
      Value<String> imageUrl,
      Value<String> languageCode,
      Value<List<String>?> tags,
      Value<bool> isActive,
      Value<String?> createdById,
      Value<String> slug,
      Value<int> packVersion,
      Value<String> visibility,
      Value<int> ratingCount,
      Value<double> ratingAverage,
      Value<DateTime> createdAt,
      Value<DateTime> modifiedAt,
      Value<String> syncStatus,
      Value<int> rowid,
    });

class $$QuestionPacksTableFilterComposer
    extends Composer<_$AppDatabase, $QuestionPacksTable> {
  $$QuestionPacksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get packTitle => $composableBuilder(
    column: $table.packTitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get packDescription => $composableBuilder(
    column: $table.packDescription,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
  get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdById => $composableBuilder(
    column: $table.createdById,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get packVersion => $composableBuilder(
    column: $table.packVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get visibility => $composableBuilder(
    column: $table.visibility,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ratingCount => $composableBuilder(
    column: $table.ratingCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get ratingAverage => $composableBuilder(
    column: $table.ratingAverage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get modifiedAt => $composableBuilder(
    column: $table.modifiedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnFilters(column),
  );
}

class $$QuestionPacksTableOrderingComposer
    extends Composer<_$AppDatabase, $QuestionPacksTable> {
  $$QuestionPacksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get packTitle => $composableBuilder(
    column: $table.packTitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get packDescription => $composableBuilder(
    column: $table.packDescription,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdById => $composableBuilder(
    column: $table.createdById,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get packVersion => $composableBuilder(
    column: $table.packVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get visibility => $composableBuilder(
    column: $table.visibility,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ratingCount => $composableBuilder(
    column: $table.ratingCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get ratingAverage => $composableBuilder(
    column: $table.ratingAverage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get modifiedAt => $composableBuilder(
    column: $table.modifiedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$QuestionPacksTableAnnotationComposer
    extends Composer<_$AppDatabase, $QuestionPacksTable> {
  $$QuestionPacksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get packTitle =>
      $composableBuilder(column: $table.packTitle, builder: (column) => column);

  GeneratedColumn<String> get packDescription => $composableBuilder(
    column: $table.packDescription,
    builder: (column) => column,
  );

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<String>?, String> get tags =>
      $composableBuilder(column: $table.tags, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get createdById => $composableBuilder(
    column: $table.createdById,
    builder: (column) => column,
  );

  GeneratedColumn<String> get slug =>
      $composableBuilder(column: $table.slug, builder: (column) => column);

  GeneratedColumn<int> get packVersion => $composableBuilder(
    column: $table.packVersion,
    builder: (column) => column,
  );

  GeneratedColumn<String> get visibility => $composableBuilder(
    column: $table.visibility,
    builder: (column) => column,
  );

  GeneratedColumn<int> get ratingCount => $composableBuilder(
    column: $table.ratingCount,
    builder: (column) => column,
  );

  GeneratedColumn<double> get ratingAverage => $composableBuilder(
    column: $table.ratingAverage,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get modifiedAt => $composableBuilder(
    column: $table.modifiedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => column,
  );
}

class $$QuestionPacksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $QuestionPacksTable,
          QuestionPack,
          $$QuestionPacksTableFilterComposer,
          $$QuestionPacksTableOrderingComposer,
          $$QuestionPacksTableAnnotationComposer,
          $$QuestionPacksTableCreateCompanionBuilder,
          $$QuestionPacksTableUpdateCompanionBuilder,
          (
            QuestionPack,
            BaseReferences<_$AppDatabase, $QuestionPacksTable, QuestionPack>,
          ),
          QuestionPack,
          PrefetchHooks Function()
        > {
  $$QuestionPacksTableTableManager(_$AppDatabase db, $QuestionPacksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$QuestionPacksTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () =>
                  $$QuestionPacksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$QuestionPacksTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> categoryId = const Value.absent(),
                Value<String> packTitle = const Value.absent(),
                Value<String> packDescription = const Value.absent(),
                Value<String> imageUrl = const Value.absent(),
                Value<String> languageCode = const Value.absent(),
                Value<List<String>?> tags = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<String?> createdById = const Value.absent(),
                Value<String> slug = const Value.absent(),
                Value<int> packVersion = const Value.absent(),
                Value<String> visibility = const Value.absent(),
                Value<int> ratingCount = const Value.absent(),
                Value<double> ratingAverage = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> modifiedAt = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => QuestionPacksCompanion(
                id: id,
                categoryId: categoryId,
                packTitle: packTitle,
                packDescription: packDescription,
                imageUrl: imageUrl,
                languageCode: languageCode,
                tags: tags,
                isActive: isActive,
                createdById: createdById,
                slug: slug,
                packVersion: packVersion,
                visibility: visibility,
                ratingCount: ratingCount,
                ratingAverage: ratingAverage,
                createdAt: createdAt,
                modifiedAt: modifiedAt,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String categoryId,
                required String packTitle,
                required String packDescription,
                required String imageUrl,
                required String languageCode,
                Value<List<String>?> tags = const Value.absent(),
                required bool isActive,
                Value<String?> createdById = const Value.absent(),
                required String slug,
                required int packVersion,
                required String visibility,
                required int ratingCount,
                required double ratingAverage,
                required DateTime createdAt,
                required DateTime modifiedAt,
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => QuestionPacksCompanion.insert(
                id: id,
                categoryId: categoryId,
                packTitle: packTitle,
                packDescription: packDescription,
                imageUrl: imageUrl,
                languageCode: languageCode,
                tags: tags,
                isActive: isActive,
                createdById: createdById,
                slug: slug,
                packVersion: packVersion,
                visibility: visibility,
                ratingCount: ratingCount,
                ratingAverage: ratingAverage,
                createdAt: createdAt,
                modifiedAt: modifiedAt,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$QuestionPacksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $QuestionPacksTable,
      QuestionPack,
      $$QuestionPacksTableFilterComposer,
      $$QuestionPacksTableOrderingComposer,
      $$QuestionPacksTableAnnotationComposer,
      $$QuestionPacksTableCreateCompanionBuilder,
      $$QuestionPacksTableUpdateCompanionBuilder,
      (
        QuestionPack,
        BaseReferences<_$AppDatabase, $QuestionPacksTable, QuestionPack>,
      ),
      QuestionPack,
      PrefetchHooks Function()
    >;
typedef $$QuestionsTableCreateCompanionBuilder =
    QuestionsCompanion Function({
      required String id,
      required String packId,
      required String questionText,
      required String questionType,
      required int orderIndex,
      Value<List<String>?> tags,
      required bool isActive,
      required DateTime createdAt,
      required DateTime modifiedAt,
      Value<String> syncStatus,
      Value<int> rowid,
    });
typedef $$QuestionsTableUpdateCompanionBuilder =
    QuestionsCompanion Function({
      Value<String> id,
      Value<String> packId,
      Value<String> questionText,
      Value<String> questionType,
      Value<int> orderIndex,
      Value<List<String>?> tags,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime> modifiedAt,
      Value<String> syncStatus,
      Value<int> rowid,
    });

class $$QuestionsTableFilterComposer
    extends Composer<_$AppDatabase, $QuestionsTable> {
  $$QuestionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get packId => $composableBuilder(
    column: $table.packId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get questionText => $composableBuilder(
    column: $table.questionText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get questionType => $composableBuilder(
    column: $table.questionType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get orderIndex => $composableBuilder(
    column: $table.orderIndex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
  get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get modifiedAt => $composableBuilder(
    column: $table.modifiedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnFilters(column),
  );
}

class $$QuestionsTableOrderingComposer
    extends Composer<_$AppDatabase, $QuestionsTable> {
  $$QuestionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get packId => $composableBuilder(
    column: $table.packId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get questionText => $composableBuilder(
    column: $table.questionText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get questionType => $composableBuilder(
    column: $table.questionType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get orderIndex => $composableBuilder(
    column: $table.orderIndex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get modifiedAt => $composableBuilder(
    column: $table.modifiedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$QuestionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $QuestionsTable> {
  $$QuestionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get packId =>
      $composableBuilder(column: $table.packId, builder: (column) => column);

  GeneratedColumn<String> get questionText => $composableBuilder(
    column: $table.questionText,
    builder: (column) => column,
  );

  GeneratedColumn<String> get questionType => $composableBuilder(
    column: $table.questionType,
    builder: (column) => column,
  );

  GeneratedColumn<int> get orderIndex => $composableBuilder(
    column: $table.orderIndex,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<String>?, String> get tags =>
      $composableBuilder(column: $table.tags, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get modifiedAt => $composableBuilder(
    column: $table.modifiedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => column,
  );
}

class $$QuestionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $QuestionsTable,
          Question,
          $$QuestionsTableFilterComposer,
          $$QuestionsTableOrderingComposer,
          $$QuestionsTableAnnotationComposer,
          $$QuestionsTableCreateCompanionBuilder,
          $$QuestionsTableUpdateCompanionBuilder,
          (Question, BaseReferences<_$AppDatabase, $QuestionsTable, Question>),
          Question,
          PrefetchHooks Function()
        > {
  $$QuestionsTableTableManager(_$AppDatabase db, $QuestionsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$QuestionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$QuestionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$QuestionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> packId = const Value.absent(),
                Value<String> questionText = const Value.absent(),
                Value<String> questionType = const Value.absent(),
                Value<int> orderIndex = const Value.absent(),
                Value<List<String>?> tags = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> modifiedAt = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => QuestionsCompanion(
                id: id,
                packId: packId,
                questionText: questionText,
                questionType: questionType,
                orderIndex: orderIndex,
                tags: tags,
                isActive: isActive,
                createdAt: createdAt,
                modifiedAt: modifiedAt,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String packId,
                required String questionText,
                required String questionType,
                required int orderIndex,
                Value<List<String>?> tags = const Value.absent(),
                required bool isActive,
                required DateTime createdAt,
                required DateTime modifiedAt,
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => QuestionsCompanion.insert(
                id: id,
                packId: packId,
                questionText: questionText,
                questionType: questionType,
                orderIndex: orderIndex,
                tags: tags,
                isActive: isActive,
                createdAt: createdAt,
                modifiedAt: modifiedAt,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$QuestionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $QuestionsTable,
      Question,
      $$QuestionsTableFilterComposer,
      $$QuestionsTableOrderingComposer,
      $$QuestionsTableAnnotationComposer,
      $$QuestionsTableCreateCompanionBuilder,
      $$QuestionsTableUpdateCompanionBuilder,
      (Question, BaseReferences<_$AppDatabase, $QuestionsTable, Question>),
      Question,
      PrefetchHooks Function()
    >;
typedef $$TranslationsTableCreateCompanionBuilder =
    TranslationsCompanion Function({
      required String id,
      required String entityType,
      required String entityId,
      required String fieldName,
      required String languageCode,
      required String translationText,
      required bool isVerified,
      required DateTime createdAt,
      required DateTime modifiedAt,
      Value<String> syncStatus,
      Value<int> rowid,
    });
typedef $$TranslationsTableUpdateCompanionBuilder =
    TranslationsCompanion Function({
      Value<String> id,
      Value<String> entityType,
      Value<String> entityId,
      Value<String> fieldName,
      Value<String> languageCode,
      Value<String> translationText,
      Value<bool> isVerified,
      Value<DateTime> createdAt,
      Value<DateTime> modifiedAt,
      Value<String> syncStatus,
      Value<int> rowid,
    });

class $$TranslationsTableFilterComposer
    extends Composer<_$AppDatabase, $TranslationsTable> {
  $$TranslationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get entityType => $composableBuilder(
    column: $table.entityType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get entityId => $composableBuilder(
    column: $table.entityId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fieldName => $composableBuilder(
    column: $table.fieldName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get translationText => $composableBuilder(
    column: $table.translationText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isVerified => $composableBuilder(
    column: $table.isVerified,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get modifiedAt => $composableBuilder(
    column: $table.modifiedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TranslationsTableOrderingComposer
    extends Composer<_$AppDatabase, $TranslationsTable> {
  $$TranslationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get entityType => $composableBuilder(
    column: $table.entityType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get entityId => $composableBuilder(
    column: $table.entityId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fieldName => $composableBuilder(
    column: $table.fieldName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get translationText => $composableBuilder(
    column: $table.translationText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isVerified => $composableBuilder(
    column: $table.isVerified,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get modifiedAt => $composableBuilder(
    column: $table.modifiedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TranslationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TranslationsTable> {
  $$TranslationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get entityType => $composableBuilder(
    column: $table.entityType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get entityId =>
      $composableBuilder(column: $table.entityId, builder: (column) => column);

  GeneratedColumn<String> get fieldName =>
      $composableBuilder(column: $table.fieldName, builder: (column) => column);

  GeneratedColumn<String> get languageCode => $composableBuilder(
    column: $table.languageCode,
    builder: (column) => column,
  );

  GeneratedColumn<String> get translationText => $composableBuilder(
    column: $table.translationText,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isVerified => $composableBuilder(
    column: $table.isVerified,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get modifiedAt => $composableBuilder(
    column: $table.modifiedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => column,
  );
}

class $$TranslationsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TranslationsTable,
          Translation,
          $$TranslationsTableFilterComposer,
          $$TranslationsTableOrderingComposer,
          $$TranslationsTableAnnotationComposer,
          $$TranslationsTableCreateCompanionBuilder,
          $$TranslationsTableUpdateCompanionBuilder,
          (
            Translation,
            BaseReferences<_$AppDatabase, $TranslationsTable, Translation>,
          ),
          Translation,
          PrefetchHooks Function()
        > {
  $$TranslationsTableTableManager(_$AppDatabase db, $TranslationsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$TranslationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$TranslationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () =>
                  $$TranslationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> entityType = const Value.absent(),
                Value<String> entityId = const Value.absent(),
                Value<String> fieldName = const Value.absent(),
                Value<String> languageCode = const Value.absent(),
                Value<String> translationText = const Value.absent(),
                Value<bool> isVerified = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> modifiedAt = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TranslationsCompanion(
                id: id,
                entityType: entityType,
                entityId: entityId,
                fieldName: fieldName,
                languageCode: languageCode,
                translationText: translationText,
                isVerified: isVerified,
                createdAt: createdAt,
                modifiedAt: modifiedAt,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String entityType,
                required String entityId,
                required String fieldName,
                required String languageCode,
                required String translationText,
                required bool isVerified,
                required DateTime createdAt,
                required DateTime modifiedAt,
                Value<String> syncStatus = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TranslationsCompanion.insert(
                id: id,
                entityType: entityType,
                entityId: entityId,
                fieldName: fieldName,
                languageCode: languageCode,
                translationText: translationText,
                isVerified: isVerified,
                createdAt: createdAt,
                modifiedAt: modifiedAt,
                syncStatus: syncStatus,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TranslationsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TranslationsTable,
      Translation,
      $$TranslationsTableFilterComposer,
      $$TranslationsTableOrderingComposer,
      $$TranslationsTableAnnotationComposer,
      $$TranslationsTableCreateCompanionBuilder,
      $$TranslationsTableUpdateCompanionBuilder,
      (
        Translation,
        BaseReferences<_$AppDatabase, $TranslationsTable, Translation>,
      ),
      Translation,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CategoriesTableTableManager get categories =>
      $$CategoriesTableTableManager(_db, _db.categories);
  $$QuestionPacksTableTableManager get questionPacks =>
      $$QuestionPacksTableTableManager(_db, _db.questionPacks);
  $$QuestionsTableTableManager get questions =>
      $$QuestionsTableTableManager(_db, _db.questions);
  $$TranslationsTableTableManager get translations =>
      $$TranslationsTableTableManager(_db, _db.translations);
}
