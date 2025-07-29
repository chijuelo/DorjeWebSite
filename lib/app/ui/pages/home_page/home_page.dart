import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (_) => Scaffold(
              key: _.scaffoldKey,
              drawer: _drawer(),
              backgroundColor: Colors.black,
              body: SingleChildScrollView(
                child: Stack(
                  children: [
                    video(
                      control: _,
                      padding: EdgeInsets.only(left: Get.width * 0.5),
                      name: 'v1',
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          texto1(),
                          texto2(),
                        ],
                      ),
                    ),
                    video(
                      control: _,
                      padding: EdgeInsets.only(top: Get.height * 1.5),
                      name: 'v2',
                    ),
                    video(
                      control: _,
                      padding: EdgeInsets.only(top: Get.height * 2.2),
                      name: 'v3',
                    ),
                    video(
                      control: _,
                      padding: EdgeInsets.only(top: Get.height * 4.7),
                      name: 'v4',
                    ),
                    video(
                      control: _,
                      padding: EdgeInsets.only(
                          top: Get.height * 5.8, right: Get.width * 0.04),
                      name: 'v5',
                    ),
                    video(
                      control: _,
                      padding: EdgeInsets.only(top: Get.height * 6.9),
                      name: 'v6',
                    ),
                    texto3(),
                    mission(),
                    productText(),
                    imgConLineaText(
                        img: 'images/linieros.png',
                        top: 2.4,
                        title:
                            'PLATAFORMA PARA INTERACCIÓN “INTELIGENTE” CON LA INFORMACIÓN',
                        texts: [
                          'Inventario de elementos en el terreno',
                          'Análisis topológico de objetos de interés',
                          'Planificación de expansión de presencia en el terreno',
                          'Gestión dinámica de relaciones con el entorno',
                        ]),
                    imgConLineaText(
                        img: 'images/cartaMap.png',
                        top: 3.3,
                        title:
                            'APLICACIÓN PARA ADQUISICIÓN DE DATOS EN EL TERRENO',
                        texts: [
                          'Validación de datos capturados en tiempo real',
                          'Basado en la nube',
                          'Basado en captura en cuadrillas',
                          'Ambiente usable y amigable pensado en disminuir el esfuerzo y la posibilidad de errores',
                        ]),
                    imgConLineaText(
                        img: 'images/chapas.png',
                        top: 4.2,
                        title:
                            'ETIQUETAS PARA IDENTIFICAR ELEMENTOS EN EL TERRENO',
                        texts: [
                          'Resistentes al intemperismo',
                          'Con códigos de lectura automática: códigos de barras, QR, RFID',
                          'Personalizables',
                        ]),
                    servicesText(),
                    servicesList(),
                    exitosText(),
                    exitosList(_),
                    texto5(),
                    texto5_1(),
                    contactText(),
                    contactInfo(),
                    // Positioned(
                    //   top: 16,
                    //   left: 16,
                    //   child: logo(_),
                    // ),
                  ],
                ),
              ),
              floatingActionButton: logo(_),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.startTop,
            ));
  }

  Widget logo(HomeController _) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 0.03, left: Get.height * 0.04),
      child: SizedBox(
        width: Get.width * 0.25,
        child: InkWell(
          onTap: _.openDrawer,
          child: Row(
            children: [
              const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              SizedBox(
                width: Get.width * 0.02,
              ),
              Image.asset(
                'images/logo_header.png',
                height: Get.height * 0.12,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget texto1() {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.055, top: Get.height * 0.18),
      child: SizedBox(
        width: Get.width * 0.36,
        child: GradientText(
          'GENERAMOS SOLUCIONES TECNOLÓGICAS PARA MEJORAR LA TOMA DE DECISIONES',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: Get.height * 0.04,
            letterSpacing: Get.width * 0.005,
            fontFamily: 'TitilliumText22L',
          ),
          colors: const [
            Color.fromRGBO(5, 163, 226, 1),
            Color.fromRGBO(130, 63, 196, 1),
            Color.fromRGBO(204, 2, 177, 1),
          ],
        ),
      ),
    );
  }

  Widget texto2() {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.056, top: Get.height * 0.03),
      child: SizedBox(
        width: Get.width * 0.33,
        child: Text(
          'La información generada por el funcionamiento de una compañía es posible analizarla desde nuevas y distintas perspectivas una vez que es contextualizada en un entorno geográfico',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: Get.height * 0.02,
            letterSpacing: Get.width * 0.002,
            color: Colors.white70,
            fontFamily: 'TitilliumText22L',
          ),
        ),
      ),
    );
  }

  Widget video(
      {HomeController? control,
      Size? size,
      EdgeInsetsGeometry? padding,
      String? name}) {
    return Padding(
      padding: padding!,
      child: SizedBox(
        width: Get.width,
        height: Get.height,
        child: WebVideoPlayer(
          url: 'assets/$name.mp4',
        ),
      ),
    );
  }

  Widget texto3() {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.056, top: Get.height * 1.27),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: Get.width * 0.35,
          child: Text(
            'SOLUCIONES BASADAS EN INFORMACIÓN GEOGRÁFICAS',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Get.height * 0.04,
              letterSpacing: Get.width * 0.002,
              color: Colors.white,
              fontFamily: 'TitilliumText22L',
            ),
          ),
        ),
      ),
    );
  }

  Widget mission() {
    return Padding(
      padding: EdgeInsets.only(
          top: Get.height * 1.5, left: Get.width * 0.1, right: Get.width * 0.1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          missionItem('images/eqz.png',
              'Interacción de los elementos de interés de la empresa con sus públicos objetivos'),
          missionItem('images/map.png',
              'Interacción de los elementos de interés de la empresa con los componentes del entorno'),
          missionItem('images/config.png',
              'Interconexión de los elementos de la compañía (evolución de los elementos y del entorno en el tiempo)'),
        ],
      ),
    );
  }

  Widget missionItem(String img, String info) {
    return SizedBox(
      width: Get.width * 0.26,
      child: Column(
        children: [
          Image.asset(img, height: Get.height * 0.06),
          Padding(
            padding: EdgeInsets.only(top: Get.height * 0.05),
            child: Text(
              info,
              style: TextStyle(
                  fontSize: Get.height * 0.02,
                  letterSpacing: Get.width * 0.002,
                  color: Colors.white,
                  fontFamily: 'TitilliumText22L'),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  Widget productText() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 2.3),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'PRODUCTOS',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: Get.height * 0.18,
            letterSpacing: Get.width * 0.03,
            color: Colors.white,
            fontFamily: 'TitilliumText22L',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget imgConLineaText({
    required String img,
    required double top,
    required String title,
    required List<String> texts,
  }) {
    var textos = <Widget>[];

    texts.map((t) {
      textos.add(texto4Aux(t));
    }).toList();

    return Padding(
      padding: EdgeInsets.only(top: Get.height * top, left: Get.width * 0.155),
      child: SizedBox(
        height: Get.height * 0.5,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.asset(
                img,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Get.height * 0.07, left: Get.width * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    texto4(title),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.02),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width * 0.002,
                            height: Get.height * 0.23,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(5, 163, 226, 1),
                                Color.fromRGBO(130, 63, 196, 1),
                                Color.fromRGBO(204, 2, 177, 1),
                              ],
                            )),
                          ),
                          SizedBox(
                            width: Get.width * 0.01,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: textos,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget texto4(String text) {
    return SizedBox(
      width: Get.width * 0.31,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: Get.height * 0.04,
          letterSpacing: Get.width * 0.002,
          color: Colors.white,
          fontFamily: 'TitilliumText22L',
        ),
      ),
    );
  }

  Widget texto4Aux(text) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 0.03),
      child: SizedBox(
        width: Get.width * 0.35,
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: Get.height * 0.02,
            letterSpacing: Get.width * 0.002,
            color: Colors.white,
            fontFamily: 'TitilliumText22L',
          ),
        ),
      ),
    );
  }

  Widget servicesText() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 5),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'SERVICIOS',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: Get.height * 0.18,
            letterSpacing: Get.width * 0.03,
            color: Colors.white,
            fontFamily: 'TitilliumText22L',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget servicesList() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 5.08, left: Get.width * 0.37),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            serviceItem(
                'Adquisición de datos en el terreno', 'images/serv1.png'),
            serviceItem(
                'Interrelación de datos geográficos con datos de la organización y del entorno',
                'images/serv2.png'),
            serviceItem('Modelación de bases de datos', 'images/serv3.png'),
            serviceItem('Adecuación de cartografía base', 'images/serv4.png'),
            serviceItem('Administración y soporte de sistemas en la nube',
                'images/serv5.png'),
          ],
        ),
      ),
    );
  }

  Widget serviceItem(String text, img) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.005),
      child: Container(
        height: Get.height * 0.25,
        width: Get.width * 0.12,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color.fromRGBO(50, 131, 164, 0.9)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: Get.height * 0.02,
                  color: Colors.white,
                  fontFamily: 'TitilliumText22L',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  img,
                  fit: BoxFit.contain,
                  height: Get.height * 0.06,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget exitosText() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 6),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'ÉXITOS',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: Get.height * 0.18,
            letterSpacing: Get.width * 0.03,
            color: Colors.white,
            fontFamily: 'TitilliumText22L',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget exitosList(HomeController _) {
    // return CarouselSlider(
    //   items: [
    //     Image.asset('images/exito1.png', fit: BoxFit.contain),
    //     Image.asset('images/exito2.png', fit: BoxFit.contain),
    //     Image.asset('images/exito3.png', fit: BoxFit.contain),
    //   ],
    //   options: CarouselOptions(
    //     height: 400,
    //     enlargeStrategy: CenterPageEnlargeStrategy.height,
    //   ),
    // );

    return Padding(
      padding: EdgeInsets.only(top: Get.height * 6.2),
      child: CarouselSlider(
          items: [
            Image.asset(
              'images/exito1.png',
              fit: BoxFit.contain,
            ),
            Image.asset(
              'images/exito2.png',
              fit: BoxFit.contain,
            ),
            Image.asset(
              'images/exito3.png',
              fit: BoxFit.contain,
            ),
          ],
          options: CarouselOptions(
            height: Get.height * 0.3,
            aspectRatio: 16 / 9,
            viewportFraction: 0.2,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.5,
            onPageChanged: (pos, reason) {},
            scrollDirection: Axis.horizontal,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
          )),
    );

    // return Padding(
    //   padding: EdgeInsets.only(top: Get.height * 6.08),
    //   child: Stack(
    //     children: [
    //       Padding(
    //         padding: EdgeInsets.symmetric(
    //             vertical: Get.height * 0.1, horizontal: Get.width * 0.1),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Expanded(
    //               child: Image.asset(
    //                 'images/exito1.png',
    //                 fit: BoxFit.contain,
    //                 height: Get.height * 0.2,
    //               ),
    //             ),
    //             Expanded(
    //               child: Image.asset(
    //                 'images/exito3.png',
    //                 fit: BoxFit.contain,
    //                 height: Get.height * 0.2,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Align(
    //         alignment: Alignment.center,
    //         child: Image.asset(
    //           'images/exito2.png',
    //           fit: BoxFit.contain,
    //           height: Get.height * 0.38,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }

  Widget texto5() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 6.5),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: Get.width * 0.35,
          child: Text(
            'PLATAFORMA DE GESTIÓN PARA EMPRESA ELÉCTRICA DE GRANMA',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Get.height * 0.04,
              letterSpacing: Get.width * 0.002,
              color: Colors.white,
              fontFamily: 'TitilliumText22L',
            ),
          ),
        ),
      ),
    );
  }

  Widget texto5_1() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 6.65),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: Get.width * 0.37,
          child: Text(
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Get.height * 0.02,
              letterSpacing: Get.width * 0.002,
              color: Colors.white70,
              fontFamily: 'TitilliumText22L',
            ),
          ),
        ),
      ),
    );
  }

  Widget contactText() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 7.2),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'CONTÁCTENOS',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: Get.height * 0.18,
            letterSpacing: Get.width * 0.03,
            color: Colors.white,
            fontFamily: 'TitilliumText22L',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget contactInfo() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 7.5),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: Get.height * 0.25,
          width: Get.width * 0.25,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromRGBO(50, 131, 164, 0.9)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: Get.height * 0.05, bottom: Get.height * 0.02),
                child: Text(
                  'LAS SOLUCIONES TECNOLÓGICAS A TU ALCANCE',
                  style: TextStyle(
                    fontSize: Get.height * 0.035,
                    color: Colors.white,
                    fontFamily: 'TitilliumText22L',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Acción a realizar cuando se presiona el botón
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(
                      width: 2,
                      color: Colors.white,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                    textStyle: const TextStyle(
                      fontFamily: 'TitilliumText22L',
                    )),
                child: Text(
                  'LEER MÁS',
                  style: TextStyle(
                    fontSize: Get.height * 0.014,
                    color: Colors.white,
                    fontFamily: 'TitilliumText22L',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: SizedBox.shrink()),
        ],
      ),
    );
  }
}

class WebVideoPlayer extends StatelessWidget {
  final String url;

  const WebVideoPlayer({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return const Text('Este widget solo es compatible con Web');
    }

    final viewId = 'video-${url.hashCode}';

    // Registra un <video> HTML como vista embebida
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      viewId,
      (int viewId) {
        final video = html.VideoElement()
          ..src = url
          ..controls = false
          ..autoplay = true
          ..loop = true
          ..muted = true
          ..style.width = '100%'
          ..style.height = '100%'
          ..style.position = 'absolute'
          ..style.top = '0'
          ..style.left = '0'
          ..style.zIndex = '0'
          ..style.backgroundColor = 'black'
          ..style.overflow = 'hidden'
          ..style.border = 'none'
          ..style.objectFit = 'cover';
        return video;
      },
    );

    return HtmlElementView(viewType: viewId);
  }
}
