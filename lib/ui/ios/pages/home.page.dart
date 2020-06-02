import 'package:flutter/cupertino.dart';
import 'package:flutterimc/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ImcBloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cálculo de IMC"),
      ),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              controller: bloc.heighCtrl,
              placeholder: "Altura (cm)",
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              controller: bloc.weightCtrl,
              placeholder: "Peso (kg)",
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              bloc.result,
              style: TextStyle(color: CupertinoTheme.of(context).primaryColor,),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoButton.filled(
              child: Text(
                "Calcular",
              ),
              onPressed: () {
                setState(() {
                  bloc.calculate();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}