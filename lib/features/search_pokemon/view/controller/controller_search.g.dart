// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_search.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControllerSearch on _ControllerSearchBase, Store {
  late final _$queryAtom =
      Atom(name: '_ControllerSearchBase.query', context: context);

  @override
  String get query {
    _$queryAtom.reportRead();
    return super.query;
  }

  @override
  set query(String value) {
    _$queryAtom.reportWrite(value, super.query, () {
      super.query = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_ControllerSearchBase.loading', context: context);

  @override
  Resource<List<SearchEntity>, SearchErrorApi> get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(Resource<List<SearchEntity>, SearchErrorApi> value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$searchPokemonAsyncAction =
      AsyncAction('_ControllerSearchBase.searchPokemon', context: context);

  @override
  Future<Resource<List<SearchEntity>, SearchErrorApi>> searchPokemon(
      {String? query}) {
    return _$searchPokemonAsyncAction
        .run(() => super.searchPokemon(query: query));
  }

  late final _$_ControllerSearchBaseActionController =
      ActionController(name: '_ControllerSearchBase', context: context);

  @override
  void search(String newValue) {
    final _$actionInfo = _$_ControllerSearchBaseActionController.startAction(
        name: '_ControllerSearchBase.search');
    try {
      return super.search(newValue);
    } finally {
      _$_ControllerSearchBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
query: ${query},
loading: ${loading}
    ''';
  }
}
