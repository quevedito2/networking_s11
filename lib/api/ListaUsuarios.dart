import 'package:networking_s11/api/User.dart';

class ListaUsers {
  static List<User> listado(List<dynamic> listaJson) {
    List<User> listadoUser = [];

    if (listaJson != null) {
      for (var item in listaJson) {
        final usu = User.ObjJson(item);
        listadoUser.add(usu);

        /*Tambien podria ser:
        listadoUser.add(User.ObjJson(item));*/
      }
    }
    return listadoUser;
  }
}
