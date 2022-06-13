import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_app_bar.dart';
import 'package:pokemon_tcg_cards/features/search_pokemon/data/data_source/search_pokemon_data_source.dart';
import 'package:pokemon_tcg_cards/features/search_pokemon/data/repository/search_pokemon_repository.dart';
import 'package:pokemon_tcg_cards/features/search_pokemon/domain/use_cases/search_use_case.dart';
import 'package:pokemon_tcg_cards/features/search_pokemon/view/controller/controller_search.dart';
import 'package:pokemon_tcg_cards/features/search_pokemon/view/pages/view_search.dart';

class SearchModule extends Module {
  @override
  List<Bind> get binds => [

    Bind<AbstractSearchPokemonDataSource>((i) => SearchPokemonDataSource()),
    Bind<AbstractSearchPokemonRepository>((i) => SearchPokemonRepository()),
    Bind<AbstractSearchUseCase>((i) => SearchUseCase()),
    Bind<ControllerSearch>((i) => ControllerSearch()),
    Bind<SearchPokemon>((i) => SearchPokemon())
  ];

   @override 
 List<ModularRoute> get routes => [
   ChildRoute(Modular.initialRoute, child:(context, args) =>  CustomAppBar())
 ];
}