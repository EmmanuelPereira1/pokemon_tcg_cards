// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_home_page.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControllerHomePage on _ControllerHomePageBase, Store {
  late final _$loadingAtom =
      Atom(name: '_ControllerHomePageBase.loading', context: context);

  @override
  Resource<HomeEntity, ErrorApi> get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(Resource<HomeEntity, ErrorApi> value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$idAtom =
      Atom(name: '_ControllerHomePageBase.id', context: context);

  @override
  String? get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String? value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$nameAtom =
      Atom(name: '_ControllerHomePageBase.name', context: context);

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$typesAtom =
      Atom(name: '_ControllerHomePageBase.types', context: context);

  @override
  List<String> get types {
    _$typesAtom.reportRead();
    return super.types;
  }

  @override
  set types(List<String> value) {
    _$typesAtom.reportWrite(value, super.types, () {
      super.types = value;
    });
  }

  late final _$smallAtom =
      Atom(name: '_ControllerHomePageBase.small', context: context);

  @override
  String? get small {
    _$smallAtom.reportRead();
    return super.small;
  }

  @override
  set small(String? value) {
    _$smallAtom.reportWrite(value, super.small, () {
      super.small = value;
    });
  }

  late final _$listCardsAsyncAction =
      AsyncAction('_ControllerHomePageBase.listCards', context: context);

  @override
  Future<Resource<void, ErrorApi>> listCards() {
    return _$listCardsAsyncAction.run(() => super.listCards());
  }

  @override
  String toString() {
    return '''
loading: ${loading},
id: ${id},
name: ${name},
types: ${types},
small: ${small}
    ''';
  }
}
