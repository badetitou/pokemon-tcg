import 'package:flutter/material.dart';
import 'package:pokemon_tcg/collection/pokemon_grid_card.dart';
import 'package:pokemon_tcg/model/database.dart';
import 'package:pokemon_tcg/model/database/shared.dart';
import 'package:pokemon_tcg/tcg_api/model/card.dart';
import 'package:pokemon_tcg/tcg_api/tcg.dart';

class MyCollectionPage extends StatefulWidget {
  @override
  _MyCollectionState createState() => _MyCollectionState();
}

class _MyCollectionState extends State<MyCollectionPage> {
  final myDatabase = constructDb();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: new FutureBuilder(
        future: _myCards(),
        builder: (BuildContext context, AsyncSnapshot<List<MyCard>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          List<Widget> widgets =
              snapshot.data!.map((item) => item.cardID).toSet().map((cardId) {
            return new FutureBuilder(
              future: TCG.fetchCard(cardId),
              builder:
                  (BuildContext context, AsyncSnapshot<PokemonCard> snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return new PokemondGridCard(snapshot.data!);
              },
            );
          }).toList();
          double width = MediaQuery.of(context).size.width;

          if (widgets.isNotEmpty) {
            return Column(children: <Widget>[
              Expanded(
                flex: 1,
                child: GridView.count(
                  crossAxisCount: (width / 200) < 2 ? 2 : (width / 200).floor(),
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: widgets,
                ),
              )
            ]);
          }
          return Center(child: Text('My Collection'));
        },
      ),
    );
  }

  Future<List<MyCard>> _myCards() async {
    return myDatabase.allCardEntries;
  }
}
