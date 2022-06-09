import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/features/pokemon_card_info/data/data_sources/pokeinfo_data_source.dart';
import 'package:pokemon_tcg_cards/features/pokemon_card_info/data/repositories/poke_info_repository.dart';
import 'package:pokemon_tcg_cards/features/pokemon_card_info/domain/use_cases_infocard/poke_info_use_case.dart';
import 'package:pokemon_tcg_cards/features/pokemon_card_info/view/controller/poke_info_controller.dart';

import '../home/view/page/home_view.dart';

class PokeInfoModule extends Module {
  @override
  List<Bind> get binds => [
  Bind<AbstractPokeInfoDataSource>((i) => PokeInfoDataSource()),
  Bind<AbstractPokeInfoRepositoryApi>((i) =>PokeInfoRepositoryApi()),
  Bind<AbstractUseCasePokeInfo>((i) => UseCasePokeInfo()),
  Bind<PokeInfoController>((i) => PokeInfoController()),


  ];


@override 
List<ModularRoute> get routes => [
  ChildRoute(Modular.initialRoute, child: (context, args) => ViewHomePage())
];

}
