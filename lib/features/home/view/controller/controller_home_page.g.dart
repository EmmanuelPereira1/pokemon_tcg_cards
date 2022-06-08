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
  Resource<List<HomeEntity>, ErrorApi> get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(Resource<List<HomeEntity>, ErrorApi> value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$listCardsAsyncAction =
      AsyncAction('_ControllerHomePageBase.listCards', context: context);

  @override
  Future<Resource<void, ErrorApi>> listCards() {
    return _$listCardsAsyncAction.run(() => super.listCards());
  }

  late final _$_ControllerHomePageBaseActionController =
      ActionController(name: '_ControllerHomePageBase', context: context);

  @override
  void pokemonSmall(String newValue) {
    final _$actionInfo = _$_ControllerHomePageBaseActionController.startAction(
        name: '_ControllerHomePageBase.pokemonSmall');
    try {
      return super.pokemonSmall(newValue);
    } finally {
      _$_ControllerHomePageBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
