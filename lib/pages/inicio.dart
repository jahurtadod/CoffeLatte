import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: <Widget>[
            Text(
              'Ascendere',
              style: TextStyle(fontSize: 20.0, color: Colors.grey.shade500),
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Image.asset('assets/icon.png'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.grey.shade500,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.grey.shade500,
            onPressed: () {},
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: <Widget>[
          // Secundary Menu
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _iconMenu('assets/formacion.png', const Color(0xFF1A237E)),
                _iconMenu('assets/inovacion.png', const Color(0xFFF57F17)),
                _iconMenu('assets/observatorio.png', const Color(0xffff0266))
              ],
            ),
          ),
          // Platon
          // Padding(
          //   padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
          //   child: Container(
          //     padding: EdgeInsets.only(left: 10.0),
          //     height: 90.0,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10.0),
          //         color: Colors.grey.shade100),
          //     child: Row(
          //       children: <Widget>[
          //         IconButton(
          //           icon: Icon(Icons.layers, color: Colors.blue),
          //           iconSize: 50.0,
          //           onPressed: () {},
          //         ),
          //         SizedBox(width: 5.0),
          //         Padding(
          //           padding: EdgeInsets.only(top: 27.0),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: <Widget>[
          //               Text(
          //                 'PLATON',
          //                 style: TextStyle(
          //                     color: Colors.grey.shade500, fontSize: 14.0),
          //               ),
          //               SizedBox(height: 4.0),
          //               Text(
          //                 'by Love IndevCompany',
          //                 style: TextStyle(
          //                     fontFamily: 'Montserrat',
          //                     fontWeight: FontWeight.bold,
          //                     fontSize: 13.0),
          //               )
          //             ],
          //           ),
          //         ),
          //         SizedBox(width: 50.0),
          //         IconButton(
          //           icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
          //           iconSize: 30.0,
          //           onPressed: () {},
          //         )
          //       ],
          //     ),
          //   ),
          // ),

          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'ASCENDERE IN',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          fontFamily: 'Montserrat'),
                    ),
                    Text(
                      'Conoce nuestras novedades',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontFamily: 'Montserrat'),
                    ),
                  ],
                ),
                Text(
                  'Todos',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      fontFamily: 'Montserrat'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          _scrollerContainer2(),
          _scrollerContainer(),
        ],
      ),
    );
  }

  Widget _typeCard(String name, String origin, String cardImage, int likes,
      int commentCount, int cardIndex) {
    return Padding(
      padding: cardIndex.isEven
          ? EdgeInsets.only(right: 15.0)
          : EdgeInsets.only(left: 15.0),
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                color: Colors.grey.withOpacity(0.2),
                style: BorderStyle.solid,
                width: 1.0)),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage(cardImage), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 10.0),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 110.0,
              top: 102.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blueGrey),
                child: Center(
                  child: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _iconMenu(String imagen, Color color) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      height: 65.0,
      width: 65.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.5), color: color),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image(
            image: AssetImage(imagen),
            colorBlendMode: BlendMode.srcIn,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _scrollerContainer() {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(8.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      //topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/KDA3.png'),
                        fit: BoxFit.cover)),
                height: 150.0,
              ),
            ),
            Container(
              height: 150.0,
              width: 5.0,
              color: Color(0xffff0266),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 15.0, 3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    //bottomRight: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  color: Colors.yellow.shade600,
                ),
                height: 150.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'CADA DIA ES UN DIA MAS PUTO QUE OTRO PERO BIEN PUTO',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Expanded(
                      child: Text(
                        'The most commonly used grid layouts are GridView, which creates a layout with a fixed number of tiles in the cross axis, and GridView.extent',
                        style: TextStyle(
                            color: Colors.blue.shade800, fontSize: 12.0),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Chip(
                      label: Text('Noticias'),
                      labelStyle: TextStyle(
                        color: Color(0xffff0266),
                        fontSize: 12.0,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _scrollerContainer2() {
    return Material(
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Row(children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    //topLeft: Radius.circular(15.0),
                    Radius.circular(7.0)),
                image: DecorationImage(
                  image: AssetImage('assets/KDA2.jpg'),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black38, BlendMode.darken),
                ),
              ),
              height: 150.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'CADA DIA ES UN DIA MAS PUTO QUE OTRO PERO BIEN PUTO',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    //topLeft: Radius.circular(15.0),
                    Radius.circular(7.0)),
                color: Colors.blue.shade100,
              ),
              height: 150.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'CAFE CIENTIFICO',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: 'Montserrat'),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  _iconMenu('assets/encuentro.png', const Color(0xFF212F3D)),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
