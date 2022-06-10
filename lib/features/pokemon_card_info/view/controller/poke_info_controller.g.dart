// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_info_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokeInfoController on _PokeInfoControllerBase, Store {
  late final _$loadingAtom =
      Atom(name: '_PokeInfoControllerBase.loading', context: context);

  @override
  Resource<InfoPokemonEntity, ErrorApi> get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(Resource<InfoPokemonEntity, ErrorApi> value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$pokeInfoAsyncAction =
      AsyncAction('_PokeInfoControllerBase.pokeInfo', context: context);

  @override
  Future<Resource<void, ErrorApi>> pokeInfo(String id) {
    return _$pokeInfoAsyncAction.run(() => super.pokeInfo(id));
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
