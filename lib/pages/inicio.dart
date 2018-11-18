import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Container(
                    height: 30.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                            image: AssetImage('assets/icon2.png'))),
                  ),
                ),
                // SizedBox(width: 10.0),
                Text(
                  'Ascendere',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey.shade500),
                ),
                Expanded(child: SizedBox(width: 10.0)),
                IconButton(
                  icon: Icon(Icons.notifications),
                  color: Colors.grey.shade500,
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.grey.shade500,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 90.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey.shade100),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.layers, color: Colors.blue),
                    iconSize: 50.0,
                    onPressed: () {},
                  ),
                  SizedBox(width: 5.0),
                  Padding(
                    padding: EdgeInsets.only(top: 27.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'PLATON',
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 14.0),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          'by Love IndevCompany',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 50.0),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    iconSize: 30.0,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'ASCENDERE IN',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontFamily: 'Montserrat'),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      fontFamily: 'Montserrat'),
                )
              ],
            ),
          ),
          _buildImageGrid(),
        ],
      ),
    );

    // return Container(
    //   width: double.infinity,
    //   color: Colors.amber,
    //   child: new Column(
    //     children: <Widget>[
    //       new Expanded(
    //         flex: 1,
    //         child: new Material(
    //           child: Center(
    //             child: Container(
    //               child: new Image.asset(
    //                 'assets/KDA.png',
    //                 width: double.infinity,
    //                 height: double.infinity,
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //       new Expanded(
    //         flex: 2,
    //         child: new Material(
    //           child: Center(
    //             child: Column(
    //               children: <Widget>[
    //                 Padding(
    //                   padding: const EdgeInsets.all(20.0),
    //                   child: new Text(
    //                     'ASCENDERE',
    //                     textAlign: TextAlign.center,
    //                     style: new TextStyle(
    //                       color: Colors.blue,
    //                       fontSize: 20.0,
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
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

   Widget _buildImageGrid() {
    return Padding(
        padding: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
        child: Container(
          height: 225.0,
          child: Row(
            children: <Widget>[
              Container(
                height: 225.0,
                width: MediaQuery.of(context).size.width / 2 + 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0)),
                    image: DecorationImage(
                        image: AssetImage('assets/KDA.png'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(width: 2.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 111.5,
                    width: MediaQuery.of(context).size.width / 2 - 72.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/KDA2.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(height: 2.0),
                  Container(
                    height: 111.5,
                    width: MediaQuery.of(context).size.width / 2 - 72.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.0)),
                        image: DecorationImage(
                            image: AssetImage('assets/KDA3.png'),
                            fit: BoxFit.cover)),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
