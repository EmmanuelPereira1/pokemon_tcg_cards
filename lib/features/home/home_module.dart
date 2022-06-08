import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/features/home/data/data_sources/home_data_source.dart';
import 'package:pokemon_tcg_cards/features/home/data/repositories/repository.dart';
import 'package:pokemon_tcg_cards/features/home/domain/use_cases/home_user_case.dart';
import 'package:pokemon_tcg_cards/features/home/view/controller/controller_home_page.dart';
import 'package:pokemon_tcg_cards/features/home/view/page/home_view.dart';

class HomeModule extends Module {
@override
List<Bind> get binds => [
    Bind<AbstractHomeDataSource>((i) => HomeDataSource()),
    Bind<AbstractRepositoryApi>((i) => RepositoryApi()),
    Bind<AbstractUserCaseHome>((i) => UserCaseHome()),
    Bind<ControllerHomePage>((i) => ControllerHomePage()),

];

@override 
List<ModularRoute> get routes => [
  ChildRoute(Modular.initialRoute, child: (context, args) => ViewHomePage())
];
}