import 'package:flutter/material.dart';

final pages = [
  new PageViewModel(
      const Color(0xFFB71c1c),
      'assets/icon.png',
      'Formación Docente',
      'Busca llevar una constante mejora de cada uno de nuestros formadores.'),
  new PageViewModel(
    const Color(0xFF311B92),
    'assets/icon.png',
    'Innovación Docente',
    'Conoce las nuevas tendencias de nuestros Ascenderes.',
  ),
  new PageViewModel(
    const Color(0xFF1A237E),
    'assets/icon.png',
    'EduTendencias',
    'Conoce las noticias y tendencias de enseñanza.',
  ),
  new PageViewModel(
    const Color(0xFF1A237E),
    'assets/icon.png',
    'Acopañanos en esta nueva experencia Ascendere',
    '',
  ),
];

class Page extends StatelessWidget {
  final PageViewModel viewModel;
  final double percentVisible;

  Page({
    this.viewModel,
    this.percentVisible = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return new Container(
        width: double.infinity,
        color: viewModel.color,
        child: new Opacity(
          opacity: percentVisible,
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Transform(
                  transform: new Matrix4.translationValues(
                      0.0, 50.0 * (1.0 - percentVisible), 0.0),
                  child: new Padding(
                    padding: new EdgeInsets.only(bottom: 25.0),
                    child: new Image.asset(
                      viewModel.heroAssetPath,
                      width: 125.0,
                      height: 125.0,
                      colorBlendMode: BlendMode.srcIn,
                      color: Colors.white,
                    ),
                  ),
                ),
                new Transform(
                  transform: new Matrix4.translationValues(
                      0.0, 50.0 * (1.0 - percentVisible), 0.0),
                  child: new Padding(
                    padding: new EdgeInsets.only(bottom: 20.0),
                    child: new Text(
                      viewModel.title,
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                new Transform(
                  transform: new Matrix4.translationValues(
                      0.0, 30.0 * (1.0 - percentVisible), 0.0),
                  child: new Padding(
                    padding: new EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Column(children: <Widget>[
                      new Text(
                        viewModel.body,
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ]),
                  ),
                ),
              ]),
        ));
  }
}

class PageViewModel {
  final Color color;
  final String heroAssetPath;
  final String title;
  final String body;

  PageViewModel(this.color, this.heroAssetPath, this.title, this.body);
}
