// import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
// import 'package:gif_view/gif_view.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
// import 'package:video_player/video_player.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal, child: v1(_)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        logo(_),
                        texto1(),
                        texto2(),
                      ],
                    ),
                    v2(_),
                    v3(_),
                    v4(_),
                    v5(_),
                    v6(_),
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
                  ],
                ),
              ),
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

  Widget v1(HomeController _) {
    // return const SizedBox.shrink();
    // return Lottie.asset('json/car-control.json', fit: BoxFit.fill);
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.3, top: Get.height * 0.1),
      child: Lottie.asset('json/v1.json', fit: BoxFit.fill),
    );

    // return Padding(
    //   // padding: EdgeInsets.only(left: Get.width * 0.6, top: Get.height * 0.17),
    //   padding: EdgeInsets.only(left: Get.width * 0.3, top: Get.height * 0.1),
    //   child: SizedBox(
    //     // height: Get.height,
    //     // width: Get.width * 0.5,
    //     height: Get.height * 1.2,
    //     child: Transform.scale(
    //       // scale: 1.2,
    //       // child: Image.asset(
    //       //   'images/v1.png',
    //       // ),
    //       scale: 1.2,
    //       child: GifView.asset(
    //         'images/v1.gif',
    //         progress: const Center(
    //           child: CircularProgressIndicator(),
    //         ),
    //       ),
    //       // scale: 2.3,
    //       // // child: VideoPlayer(_.video1Controller),
    //       // // child: YoutubePlayer(controller: _.video1Controller),
    //       // child: Chewie(controller: _.chewie1Controller),
    //     ),
    //   ),
    // );
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
          Image.asset(
            // SvgPicture.asset(
            img,
            height: Get.height * 0.06,
          ),
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

  Widget v2(HomeController _) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 1.5),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: Get.height,
          // width: Get.width * 0.5,
          child: Transform.scale(
            scale: 1.2,
            child: Image.asset(
              'images/v2.png',
            ),

            // scale: 1.3,
            // child: GifView.asset(
            //   'images/v2.gif',
            //   progress: const Center(
            //     child: CircularProgressIndicator(),
            //   ),
            // ),

            // scale: 2.3,
            // child: VideoPlayer(_.video2Controller),
            // child: YoutubePlayer(controller: _.video2Controller),
          ),
        ),
      ),
    );
  }

  Widget v3(HomeController _) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 2.2),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: Get.height,
          // width: Get.width * 0.5,
          child: Transform.scale(
            scale: 1.2,
            child: Image.asset(
              'images/v3.png',
            ),

            // scale: 1.2,
            // child: GifView.asset(
            //   'images/v3.gif',
            //   progress: const Center(
            //     child: CircularProgressIndicator(),
            //   ),
            // ),

            // scale: 2.1,
            // child: VideoPlayer(_.video3Controller),
            // child: YoutubePlayer(controller: _.video3Controller),
          ),
        ),
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

  Widget v4(HomeController _) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 4.7),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: Get.height,
          // width: Get.width * 0.5,
          child: Transform.scale(
            scale: 1.05,
            child: Image.asset(
              'images/v4.png',
            ),

            // scale: 1,
            // child: GifView.asset(
            //   'images/v4.gif',
            //   progress: const Center(
            //     child: CircularProgressIndicator(),
            //   ),
            // ),

            // scale: 2.1,
            // child: VideoPlayer(_.video4Controller),
            // child: YoutubePlayer(controller: _.video4Controller),
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

  Widget v5(HomeController _) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 5.8),
      // padding: EdgeInsets.only(top: Get.height * 5.9),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: Get.height,
          // width: Get.width * 0.5,
          child: Transform.scale(
            scale: 1.2,
            child: Image.asset(
              'images/v5.png',
            ),

            // scale: 1.2,
            // child: GifView.asset(
            //   'images/v5.gif',
            //   progress: const Center(
            //     child: CircularProgressIndicator(),
            //   ),
            // ),

            // scale: 2.1,
            // child: VideoPlayer(_.video5Controller),
            // child: YoutubePlayer(controller: _.video5Controller),
          ),
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
    //     enlargeStrategy: const CenterPageEnlargeStrategy(heightFactor: 1.5),
    //   ),
    // );

    // return Padding(
    //   padding: EdgeInsets.only(
    //     top: Get.height * 6.08,
    //     // left: Get.width * 0.2,
    //     // right: Get.width * 0.2,
    //   ),
    //   child: CarouselSlider(
    //       items: [
    //         Image.asset(
    //           'images/exito1.png',
    //           fit: BoxFit.contain,
    //         ),
    //         Image.asset(
    //           'images/exito2.png',
    //           fit: BoxFit.contain,
    //         ),
    //         Image.asset(
    //           'images/exito3.png',
    //           fit: BoxFit.contain,
    //         ),
    //       ],
    //       options: CarouselOptions(
    //           height: Get.height * 0.3,
    //           aspectRatio: 16 / 9,
    //           viewportFraction: 0.4,
    //           initialPage: 0,
    //           enableInfiniteScroll: true,
    //           reverse: false,
    //           autoPlay: true,
    //           autoPlayInterval: const Duration(seconds: 3),
    //           autoPlayAnimationDuration: const Duration(milliseconds: 800),
    //           autoPlayCurve: Curves.fastOutSlowIn,
    //           enlargeCenterPage: true,
    //           enlargeFactor: 0.5,
    //           onPageChanged: (pos, reason) {},
    //           scrollDirection: Axis.horizontal,
    //           enlargeStrategy: CenterPageEnlargeStrategy.scale,
    //           )),
    // );

    return Padding(
      padding: EdgeInsets.only(top: Get.height * 6.08),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: Get.height * 0.1, horizontal: Get.width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    'images/exito1.png',
                    fit: BoxFit.contain,
                    height: Get.height * 0.2,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'images/exito3.png',
                    fit: BoxFit.contain,
                    height: Get.height * 0.2,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'images/exito2.png',
              fit: BoxFit.contain,
              height: Get.height * 0.38,
            ),
          ),
        ],
      ),
    );
  }

  Widget texto5() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 6.55),
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
      padding: EdgeInsets.only(top: Get.height * 6.7),
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

  Widget v6(HomeController _) {
    return Padding(
      // padding: EdgeInsets.only(top: Get.height * 7),
      padding: EdgeInsets.only(top: Get.height * 7.6),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: Get.height * 0.3,
          // height: Get.height,
          // width: Get.width * 0.5,
          child: Transform.scale(
            scale: 2.1,
            child: Image.asset(
              'images/v6.png',
            ),

            // scale: 4,
            // child: GifView.asset(
            //   'images/v2.gif',
            //   progress: const Center(
            //     child: CircularProgressIndicator(),
            //   ),
            // ),

            // child: VideoPlayer(_.video6Controller),
            // child: YoutubePlayer(controller: _.video6Controller),
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
      padding: EdgeInsets.only(top: Get.height * 7.25),
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
          // ListTile(
          //   title: const Text('Editar perfil'),
          //   trailing: const Icon(Icons.edit),
          //   // leading: Icon(Icons.cancel),
          //   onTap: () {},
          // ),
          // ListTile(
          //   title: const Text('Cerrar sesion'),
          //   trailing: const Icon(Icons.power_settings_new),
          //   // leading: Icon(Icons.cancel),
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../controllers/home_controller.dart';

// class HomePage extends GetView<HomeController> {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<HomeController>(
//         builder: (_) => Scaffold(
//               backgroundColor: Colors.white,
//               body: SingleChildScrollView(
//                 child: Stack(
//                   children: [
//                     Align(alignment: Alignment.centerRight, child: i1()),
//                     Align(alignment: Alignment.centerLeft, child: i2()),
//                     i3(),
//                     i4(),
//                     Column(
//                       children: [
//                         logo(),
//                         text(
//                             textAlign: TextAlign.right,
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             padding: EdgeInsets.only(
//                                 top: Get.height * 0.27, left: Get.width * 0.05),
//                             title: 'INSTANTE A INSTANTE\nTOMAMOS DECICIONES.',
//                             subTitle:
//                                 'Brindamos la visualización más adecuada para\ncomprender el comportamiento de los indicadores\nde la organización'),
//                       ],
//                     ),
//                     text(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         textAlign: TextAlign.left,
//                         padding: EdgeInsets.only(
//                             top: Get.height * 1.85, left: Get.width * 0.38),
//                         title:
//                             'LAS DECICIONES CORRECTAS\nDEPENDEN DE PODER CONTAR\nCON LA INFORMACIÓn CORRECTA.',
//                         subTitle:
//                             'Nuestros especialistas estudian y modelan los procesos requeridos para\nofrecer una propuesta de captura de datos adecuada a las necesidades\nde los diferentes roles y estructuras.'),
//                     text(
//                         sizeTitle: 0.08,
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         textAlign: TextAlign.right,
//                         padding: EdgeInsets.only(
//                             top: Get.height * 5, left: Get.width * 0.1),
//                         title: 'CAPTOR',
//                         subTitle:
//                             'Contamos con la app CAPTOR y el\npersonal capacitado para realizar los\nsurveys en el terreno que permitan\nmodelar redes de servicio públicos'),
//                     Align(
//                       alignment: Alignment.center,
//                       child: text(
//                         padding: EdgeInsets.only(top: Get.height * 5.5),
//                         title:
//                             'LA INFORMACIÓN CORRECTA\nLA OBTENEMOS AL PODER VER\nLAS COSAS COMO SON: OBJETIVIDAD.',
//                       ),
//                     ),
//                     mission(),
//                     footer()
//                   ],
//                 ),
//               ),
//             ));
//   }

//   Widget logo() {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//           horizontal: Get.height * 0.2, vertical: Get.height * 0.1),
//       child: Image.asset(
//         'images/logo_header.png',
//         height: Get.height * 0.2,
//       ),
//     );
//   }

//   Widget i1() {
//     return Padding(
//       padding: EdgeInsets.only(top: Get.height * 0.1),
//       child: Image.asset(
//         'images/i1.png',
//         width: Get.width * 0.585,
//         fit: BoxFit.fitWidth,
//       ),
//     );
//   }

//   Widget i2() {
//     return Padding(
//       padding: EdgeInsets.only(top: Get.height * 1.152),
//       child: Image.asset(
//         'images/i2.png',
//         width: Get.width,
//         fit: BoxFit.fitWidth,
//       ),
//     );
//   }

//   Widget i3() {
//     return Padding(
//       padding: EdgeInsets.only(top: Get.height * 2.7, left: Get.width * 0.2),
//       child: SizedBox(
//         height: Get.height * 0.8,
//         child: Image.asset(
//           'images/i3.png',
//         ),
//       ),
//     );
//   }

//   Widget i4() {
//     return Padding(
//       padding: EdgeInsets.only(top: Get.height * 4),
//       child: Image.asset(
//         'images/i4.png',
//         width: Get.width,
//         fit: BoxFit.fitWidth,
//       ),
//     );
//   }

//   Widget text(
//       {required String title,
//       double sizeTitle = 0.06,
//       String? subTitle,
//       EdgeInsetsGeometry? padding,
//       TextAlign textAlign = TextAlign.center,
//       CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center}) {
//     return Padding(
//       padding: padding ?? const EdgeInsets.all(0),
//       child: Column(
//         crossAxisAlignment: crossAxisAlignment,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//                 color: const Color.fromRGBO(26, 111, 156, 1),
//                 fontWeight: FontWeight.bold,
//                 fontSize: Get.height * sizeTitle),
//             textAlign: textAlign,
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: Get.height * 0.02),
//             child: Text(
//               subTitle ?? '',
//               style: TextStyle(fontSize: Get.height * 0.03),
//               textAlign: textAlign,
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget footer() {
//     return Padding(
//       padding: EdgeInsets.only(top: Get.height * 6.4),
//       child: Stack(
//         children: [
//           Image.asset(
//             'images/footerbg.png',
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//                 top: Get.height * 0.05,
//                 left: Get.width * 0.22,
//                 right: Get.width * 0.22),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'images/logo_header.png',
//                   height: Get.height * 0.1,
//                   color: Colors.white,
//                 ),
//                 Container(
//                   color: Colors.white,
//                   height: Get.height * 0.1,
//                   width: Get.width * 0.001,
//                 ),
//                 Text(
//                   'Contáctenos:',
//                   style: TextStyle(
//                       color: Colors.white, fontSize: Get.height * 0.04),
//                 ),
//                 Text(
//                   'contacto@dorgesrl.com',
//                   style: TextStyle(
//                       color: Colors.white, fontSize: Get.height * 0.03),
//                 ),
//                 Container(
//                   color: Colors.white,
//                   height: Get.height * 0.04,
//                   width: Get.width * 0.001,
//                 ),
//                 Text(
//                   '+53 54956125',
//                   style: TextStyle(
//                       color: Colors.white, fontSize: Get.height * 0.03),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget mission() {
//     return Padding(
//       padding: EdgeInsets.only(
//           top: Get.height * 5.9, left: Get.width * 0.1, right: Get.width * 0.1),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           missionItem('images/1.png',
//               'Ofrecemos el análisis de las \ntecnologías necesarias para la\ntoma de datos de sensores y\ndispositivos industriales.'),
//           missionItem('images/2.png',
//               'Proveemos de control de flota,\ndespliegue y lectura de dispo-\nsitivos de IoT, análisis de\ncomportamiento con tecnolo-\ngías de IA.'),
//           missionItem('images/3.png',
//               'Nuestro equipo de desarrollo\ngenera aplicaciones a la\nmedida de los clientes.'),
//         ],
//       ),
//     );
//   }

//   Widget missionItem(String img, String info) {
//     return Column(
//       children: [
//         Image.asset(
//           img,
//         ),
//         Text(
//           info,
//           style: TextStyle(fontSize: Get.height * 0.028),
//         )
//       ],
//     );
//   }
// }
