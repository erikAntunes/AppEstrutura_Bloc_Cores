import 'package:aula_blocpattern/app/app_module.dart';
import 'package:aula_blocpattern/app/shared/models/cores_model.dart';
import 'package:flutter/material.dart';

import '../../app_bloc.dart';
import 'components/custom_drawer.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {


  List<Cores> listPokemons = [
    Cores(name: "Vermelho"),
    Cores(name: "Amarelo"),
    Cores(name: "Laranja"),
    Cores(name: "Verde"),
    Cores(name: "Roxo"),
  ];

  Widget _buildList() {
    return ListView.separated(
      itemCount: listPokemons.length,
      itemBuilder: (context, index) {
        return _buildItem(listPokemons[index]);
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }

  Widget _buildItem(Cores model) {
    return ListTile(
      title: Text(model.name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: Text("Troque o Tema"),
          actions: <Widget>[
            IconButton(
              onPressed: (){
                 AppModule.to.bloc<AppBloc>().changeTheme();   
              },
              icon: Icon(Icons.control_point_duplicate),

            )
          ],
        ),
        body: _buildList());
  }
}
