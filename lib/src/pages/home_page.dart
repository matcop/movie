import 'package:flutter/material.dart';
import 'package:peliculas/src/providers/peliculas_provider.dart';
import 'package:peliculas/src/widgets/card_swiper_widget.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Pelicula en cines'),
          backgroundColor: Colors.indigoAccent,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              _swiperTarjetas(),
            ],
          ),
        ));
  }

  _swiperTarjetas() {
    final peliculasProvider = new PeliculasProvider();
    peliculasProvider.getEnCines();
    return CardSwiper(
      peliculas: [1, 2, 3, 4, 5],
      //return Container();
    );
  }
}
