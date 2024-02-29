import 'package:flutter/material.dart';

void main() => runApp(AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar Isaac Chavez",
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: MiPaginaInicial(),
    );
  }
} //fin AppMiTabBar

//stateful
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar Isaac Chavez"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            const Tab(
              text: "celular",
              icon: Icon(Icons.phone),
            ),
            const Tab(text: "extras", icon: Icon(Icons.headphones)),
            const Tab(text: "paquete", icon: Icon(Icons.five_g)),
            const Tab(text: "recargas", icon: Icon(Icons.sim_card))
          ] //
              ), //fin bottom tabBar
        ),
        body: const TabBarView(children: <Widget>[
          Center(
              child: Text("telefono de regalo",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35))),
          Center(
            child: Text("accesorio de regalo",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
          ),
          Center(
              child: Text("paquete de regalo",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35))),
          Center(
            child: Text("recarga de regalo",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
          )
        ] //fin de wiget
            ), //fin de tabbarview
      ), //finScaffold
    ); //DefaultTabController
  } //finWidget
} //MiPaginaInicialState
