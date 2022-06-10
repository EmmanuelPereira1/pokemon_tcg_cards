import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/adapters/remote_client/remote_client.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/graphic_module.dart';
import 'package:pokemon_tcg_cards/features/home/home_module.dart';
import 'package:pokemon_tcg_cards/features/pokemon_card_info/poke_info_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<RemoteClient>(
          (i) => ApiRemoteClient(),
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: HomeModule()),
        ModuleRoute('/graphic/', module: GraphicModule()),
        ModuleRoute('/pokeinfoview/', module: PokeInfoModule()),
      ];
}
