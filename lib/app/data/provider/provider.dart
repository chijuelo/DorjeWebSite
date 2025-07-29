// import 'dart:convert';
// import 'dart:developer';
// import 'dart:io';

// // import 'package:flutter/services.dart';
// import 'package:balastro_visualizador/app/data/models/event_model.dart';
// import 'package:g_json/g_json.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import '../../controllers/global_controller.dart';
// import '../../ui/utils/chart_data.dart';
// import '../config/config.dart';
// import '../models/navigator_data_model.dart';
// import '../models/states_model.dart';
// import '../models/user_model.dart';
// import '../models/vessel_model.dart';
// import '../shared/preferences.dart';
// // import 'sqlite_provider.dart';

// class DorjeProviders {
//   final GlobalController _globalController = GlobalController.to;
//   final Preferences _preferences = Preferences();

//   // Future<bool> loadJson() async {
//   //   return await rootBundle
//   //       .loadString('assets/data/data.json')
//   //       .then((value) async {
//   //     final jsonResponse = JSON.parse(resp.body).value;

//   //     _globalController.login.value = jsonResponse['login'];
//   //     _globalController.config.value = jsonResponse['config'];
//   //     _globalController.getVesselInTrip.value = jsonResponse['getVesselInTrip'];
//   //     _globalController.cargaXbarco.value = jsonResponse['cargaXbarco'];
//   //     _globalController.getOperations.value = jsonResponse['getOperations'];
//   //     _globalController.getCargaMaster.value = jsonResponse['getCargaMaster'];
//   //     _globalController.getTrip.value = jsonResponse['getTrip'];
//   //     _globalController.getState.value = jsonResponse['getState'];
//   //     _globalController.getCurrentCharge.value =
//   //         jsonResponse['getCurrentCharge'];

//   //     return true;
//   //   });
//   // }

//   Map<String, String> getHeader() {
//     Map<String, String> dataHeader = {
//       'Authorization': 'Bearer ' + _preferences.token,
//       'Content-Type': 'application/x-www-form-urlencoded',
//     };
//     return dataHeader;
//   }

//   //Sistem
//   ///Login & Logout///
//   Future<bool> login(Map<String, dynamic> myData) async {
//     try {
//       // _globalController.pass.value = myData['password'];
//       // Uri uri = Uri.parse(ConfigDorje.apiUrl + 'user/login');
//       // final resp = await http.post(uri, body: myData);
//       // if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//       //   final Map<dynamic, dynamic> decodeResp = JSON.parse(resp.body).value;
//       _preferences.username = myData['username'];
//       if (myData['username'] == '' || myData['username'] == 'simulador') {
//         _preferences.token = 'simulador';
//       } else {
//         _preferences.token = 'token_ryu';
//       }
//       // _preferences.username = decodeResp['data']['username'];
//       // _preferences.token = decodeResp['data']['token']['token'];
//       // _preferences.expire = decodeResp['data']['token']['expire'];
//       Map<String, dynamic> result = await getConfiguracion();
//       if (result['ok']) {
//         _globalController.cargaTotal.value = _preferences.cargaTotal =
//             double.parse(result['data']['carga_total'].toString());
//       }
//       if ((myData['username'] == 'supervisualizador' &&
//               myData['password'] == 'Balastro*789') ||
//           (myData['username'] == 'visualizador' &&
//               myData['password'] == 'Balastro123*') ||
//           (myData['username'] == 'simulador' &&
//               myData['password'] == 'Balastro123*')) return true;
//       return false;
//       // } else {
//       //   return false;
//       // }
//     } on SocketException catch (_) {
//       // _globalController.connected.value = false;
//       return false;
//     } catch (e) {
//       return false;
//     }
//   }

//   Future<Map<String, dynamic>> logout() async {
//     try {
//       // Uri uri = Uri.parse(ConfigDorje.apiUrl + 'user/logout');
//       // final resp = await http.post(uri, headers: getHeader());
//       // if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//       _preferences.clear();
//       // _globalController.token.value = '';
//       return {'ok': true};
//       // }
//       // return {'ok': false};
//     } on SocketException catch (_) {
//       // _globalController.connected.value = false;
//       return {'ok': false};
//     } catch (e) {
//       Get.snackbar("error", "Ocurrió un error!!!");
//       return {'ok': false};
//     }
//   }

//   // //Trip
//   // Future<List<TripModel>> getTrip() async {
//   //   try {
//   //     final List<TripModel> trackingList = [];
//   //     // Uri uri = Uri.parse(ConfigDorje.apiUrl + 'viajex');
//   //     // final resp = await http.get(uri, headers: getHeader());
//   //     // if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//   //     //   // final Map<String, dynamic> decodeResp = JSON.parse(resp.body).value;
//   //     //   final Map<dynamic, dynamic> decodeResp = JSON.parse(resp.body).value;
//   //     if (_globalController.getTrip.isNotEmpty) {
//   //       List temp = _globalController.getTrip['data']['data'];
//   //       // List temp = decodeResp['data']['data'];
//   //       for (var element in temp) {
//   //         final trackingTemp = TripModel.fromJson(element);
//   //         trackingList.add(trackingTemp);
//   //       }
//   //     }
//   //     return trackingList;
//   //   } on SocketException catch (_) {
//   //     // _globalController.connected.value = false;
//   //     return [];
//   //   } catch (e) {
//   //     return [];
//   //   }
//   // }

//   // Future<Map<String, dynamic>> getViajesCompletados(int date) async {
//   //   if (!_globalController.isTesting.value) {
//   //     try {
//   //       // if (_globalController.token.value != '') {
//   //       // date = date.substring(0, date.length - 3);
//   //       Uri uri = Uri.parse(
//   //           ConfigDorje.apiUrl + 'report/viajesCompletos/?fecha=$date');
//   //       final resp = await http.get(uri, headers: getHeader());
//   //       if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//   //         var decodeResp = JSON.parse(resp.body).value;
//   //         if ((decodeResp is Map && decodeResp['message'] == null) ||
//   //             decodeResp is List) {
//   //           if (decodeResp.isNotEmpty) {
//   //             return {'ok': true, 'data': decodeResp['viajes_completados']};
//   //           }
//   //           return {'ok': true, 'data': 0};
//   //         }
//   //         return {'ok': false, 'data': decodeResp['message']};
//   //       }
//   //       return {
//   //         'ok': false,
//   //         'data':
//   //             'statusCode:${resp.statusCode}, url: ${ConfigDorje.apiUrl + 'report/viajesCompletos/?fecha=$date'}'
//   //       };
//   //       // final resp = await getViajesCompletadosFromSQLite(fecha);
//   //       // if (resp['status'] >= 200 && resp['status'] <= 299) {
//   //       //   if (resp['success']) {
//   //       //     return {
//   //       //       'ok': true,
//   //       //       'data': resp['data']['data'][0]['viajes_completados']
//   //       //     };
//   //       //   }
//   //       //   return {'ok': false, 'data': resp['message']};
//   //       // }
//   //       // return {'ok': false, 'data': 'Error de respuestas del servidor'};
//   //       // }
//   //       // return {'ok': false, 'data': 'Debe de autenticarse primero'};
//   //     } catch (e) {
//   //       return {'ok': false, 'data': e.toString()};
//   //     }
//   //   } else {
//   //     return {'ok': true, 'data': {}};
//   //   }
//   // }

//   // Future<Map<String, dynamic>> getViajesPendientes(int date) async {
//   //   if (!_globalController.isTesting.value) {
//   //     try {
//   //       // if (_globalController.token.value != '') {
//   //       // date = date.substring(0, date.length - 3);
//   //       Uri uri = Uri.parse(
//   //           ConfigDorje.apiUrl + 'report/viajesPendientes/?fecha=$date');
//   //       final resp = await http.get(uri, headers: getHeader());
//   //       if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//   //         var decodeResp = JSON.parse(resp.body).value;
//   //         if ((decodeResp is Map && decodeResp['message'] == null) ||
//   //             decodeResp is List) {
//   //           if (decodeResp.isNotEmpty) {
//   //             return {'ok': true, 'data': decodeResp['viajes_pendientes']};
//   //           }
//   //           return {'ok': true, 'data': 0};
//   //         }
//   //         return {'ok': false, 'data': decodeResp['message']};
//   //       }
//   //       return {
//   //         'ok': false,
//   //         'data':
//   //             'statusCode:${resp.statusCode}, url: ${ConfigDorje.apiUrl + 'report/viajesPendientes/?fecha=$date'}'
//   //       };
//   //       // final resp = await getViajesPendientesFromSQLite(fecha);
//   //       // if (resp['status'] >= 200 && resp['status'] <= 299) {
//   //       //   if (resp['success']) {
//   //       //     return {
//   //       //       'ok': true,
//   //       //       'data': resp['data']['data'][0]['viajes_pendientes']
//   //       //     };
//   //       //   }
//   //       //   return {'ok': false, 'data': resp['message']};
//   //       // }
//   //       // return {'ok': false, 'data': 'Error de respuestas del servidor'};
//   //       // }
//   //       // return {'ok': false, 'data': 'Debe de autenticarse primero'};
//   //     } catch (e) {
//   //       return {'ok': false, 'data': e.toString()};
//   //     }
//   //   } else {
//   //     return {'ok': true, 'data': {}};
//   //   }
//   // }

//   //Vessel
//   // Future<Map<String, dynamic>> getVessels(
//   //     {int? date, int? id, bool? inTrip}) async {
//   //   if (!_globalController.isTesting.value) {
//   //     try {
//   //       List<VesselModel> trackingList = [];
//   //       // if (_globalController.token.value != '') {
//   //       // Uri uri = Uri.parse(ConfigDorje.apiUrl +
//   //       //     'barcox/barco-viaje/?hoy=$fecha${id != null ? '&id=$id' : ''}');
//   //       // final resp = await http.get(uri, headers: getHeader());
//   //       // if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//   //       //   final Map<String, dynamic> decodeResp = JSON.parse(resp.body).value;

//   //       Uri uri = Uri.parse(ConfigDorje.apiUrl + 'Barcos/');
//   //       final resp = await http.get(uri, headers: getHeader());
//   //       if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//   //         var decodeResp = JSON.parse(resp.body).value;
//   //         if (decodeResp is! Map) {
//   //           if (decodeResp.isNotEmpty) {
//   //             //  var temp = resp['data']['data'];
//   //             (decodeResp as List)
//   //                 .map((element) =>
//   //                     trackingList.add(VesselModel.fromJson(element)))
//   //                 .toList();
//   //             return {'ok': true, 'data': trackingList};
//   //           }
//   //         }
//   //         return {'ok': false, 'data': decodeResp['message']};
//   //       }
//   //       return {'ok': false, 'data': 'Error de respuestas del servidor'};
//   //       // final resp = await getVesselsFromSQLite();
//   //       // if (resp['status'] >= 200 && resp['status'] <= 299) {
//   //       //   if (resp['success']) {
//   //       //     var temp = resp['data']['data'];
//   //       //     for (var element in temp) {
//   //       //       final trackingTemp = VesselModel.fromJson(element);
//   //       //       // if (trackingTemp.activo) {
//   //       //       trackingList.add(trackingTemp);
//   //       //       // }
//   //       //     }
//   //       //     return {'ok': true, 'data': trackingList};
//   //       //   }
//   //       //   return {'ok': false, 'data': resp['message']};
//   //       // }
//   //       // return {'ok': false, 'data': 'Error de respuestas del servidor'};
//   //       // }
//   //       // return {'ok': false, 'data': 'Debe de autenticarse primero'};
//   //       // if (_globalController.getVesselInTrip.isNotEmpty) {
//   //       //   // Map aux = {};
//   //       //   List temp = [];
//   //       //   // if (id != null) {
//   //       //   //   aux = decodeResp['data'];
//   //       //   //   temp.add(aux);
//   //       //   // } else {
//   //       //   //   temp = decodeResp['data']['data'];
//   //       //   // }
//   //       //   temp = _globalController.getVesselInTrip['data'];
//   //       //   // temp = decodeResp['data'];
//   //       //   for (var element in temp) {
//   //       //     final trackingTemp = VesselModel.fromJson(element);
//   //       //     if (trackingTemp.activo) {
//   //       //       trackingList.add(trackingTemp);
//   //       //     }
//   //       //   }
//   //       // }
//   //       // }
//   //       // return trackingList;
//   //     } catch (e) {
//   //       return {'ok': false, 'data': e.toString()};
//   //     }
//   //   } else {
//   //     return {'ok': true, 'data': []};
//   //   }
//   // }

//   Future<Map<String, dynamic>> getBarcoEstadoCarga(int date) async {
//     if (!_globalController.isTesting.value) {
//       try {
//         List<VesselModel> trackingList = [];
//         // if (_globalController.token.value != '') {

//         // date = date.substring(0, date.length - 3);
//         Uri uri =
//             Uri.parse(ConfigDorje.apiUrl + 'report/estadoCarga/?fecha=$date');
//         log(ConfigDorje.apiUrl + 'report/estadoCarga/?fecha=$date');
//         final resp = await http.get(uri, headers: getHeader());
//         if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//           var decodeResp = JSON.parse(resp.body).value;
//           // log(decodeResp.toString());
//           (decodeResp as List)
//               .map((element) => trackingList.add(VesselModel.fromJson(element)))
//               .toList();

//           return {'ok': true, 'data': trackingList};
//         }
//         log('statusCode:${resp.statusCode}, url:${ConfigDorje.apiUrl + 'report/estadoCarga/?fecha=$date'}');
//         // return {'ok': false, 'data': decodeResp['message']};

//         return {'ok': false, 'data': 'Error de respuestas del servidor'};
//         // final resp = await getBarcoEstadoCargaFromSQLite(datetime);
//         // if (resp['status'] >= 200 && resp['status'] <= 299) {
//         //   if (resp['success']) {
//         //     var temp = resp['data']['data'];
//         //     for (var element in temp) {
//         //       final trackingTemp = VesselModel.fromJson(element);
//         //       // if (trackingTemp.activo) {
//         //       trackingList.add(trackingTemp);
//         //       // }
//         //     }
//         //     return {'ok': true, 'data': trackingList};
//         //   }
//         //   return {'ok': false, 'data': resp['message']};
//         // }
//         // return {'ok': false, 'data': 'Error de respuestas del servidor'};
//         // }
//         // return {'ok': false, 'data': 'Debe de autenticarse primero'};
//       } catch (e) {
//         return {'ok': false, 'data': e.toString()};
//       }
//     } else {
//       return {'ok': true, 'data': {}};
//     }
//   }

//   Future<Map<String, dynamic>> getStates() async {
//     if (!_globalController.isTesting.value) {
//       try {
//         List<StatesModel> trackingList = [];
//         // if (_globalController.token.value != '') {
//         Uri uri = Uri.parse(ConfigDorje.apiUrl + 'estados/');
//         final resp = await http.get(uri, headers: getHeader());
//         if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//           var decodeResp = JSON.parse(resp.body).value;
//           if (decodeResp is! Map) {
//             if (decodeResp.isNotEmpty) {
//               (decodeResp as List)
//                   .map((element) =>
//                       trackingList.add(StatesModel.fromJson(element)))
//                   .toList();

//               return {'ok': true, 'data': trackingList};
//             }
//           }
//           return {'ok': false, 'data': decodeResp['message']};
//         }
//         return {'ok': false, 'data': 'Error de respuestas del servidor'};
//         // List<StatesModel> trackingList = [];
//         // // if (_globalController.token.value != '') {
//         // final resp = await getStateFromSQLite();
//         // if (resp['status'] >= 200 && resp['status'] <= 299) {
//         //   if (resp['success']) {
//         //     var temp = resp['data']['data'];
//         //     for (var element in temp) {
//         //       final trackingTemp = StatesModel.fromJson(element);
//         //       trackingList.add(trackingTemp);
//         //     }
//         //     return {'ok': true, 'data': trackingList};
//         //   }
//         //   return {'ok': false, 'data': resp['message']};
//         // }
//         // return {'ok': false, 'data': 'Error de respuestas del servidor'};
//         // }
//         // return {'ok': false, 'data': 'Debe de autenticarse primero'};
//       } catch (e) {
//         return {'ok': false, 'data': e.toString()};
//       }
//     } else {
//       return {'ok': true, 'data': {}};
//     }
//   }

//   //Indicadores de entrega
//   Future<Map<String, dynamic>> getCargaEntregada(int date) async {
//     if (!_globalController.isTesting.value) {
//       try {
//         // date = date.substring(0, date.length - 3);
//         Uri uri = Uri.parse(
//             ConfigDorje.apiUrl + 'report/cargaEntregadaTotal/?fecha=$date');
//         log('${ConfigDorje.apiUrl}report/cargaEntregadaTotal/?fecha=$date');
//         final resp = await http.get(uri, headers: getHeader());
//         if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//           var decodeResp = JSON.parse(resp.body).value;
//           if (decodeResp.isNotEmpty) {
//             // final resp = await getCargaEntregadaFromSQLite(fecha);
//             return {'ok': true, 'data': decodeResp ?? 0};
//           }
//         }
//         return {
//           'ok': false,
//           'data':
//               'statusCode${resp.statusCode}, url: ${ConfigDorje.apiUrl + 'report/cargaEntregadaTotal/?fecha=$date'}'
//         };
//         // if (resp['status'] >= 200 && resp['status'] <= 299) {
//         //   var data = resp['success']
//         //       ? resp['data']['data'][0]['carga_entregada'] ?? 0
//         //       : resp['message'];
//         //   return {'ok': resp['success'], 'data': data};
//         // }
//         // return {'ok': false};
//       } catch (e) {
//         return {'ok': false, 'data': e.toString()};
//       }
//     } else {
//       return {'ok': true, 'data': {}};
//     }
//   }

//   Future<Map<String, dynamic>> getCargaEntregadaXBarco(int date) async {
//     if (!_globalController.isTesting.value) {
//       try {
//         // date = date.substring(0, date.length - 3);
//         Uri uri = Uri.parse(
//             ConfigDorje.apiUrl + 'report/cargaEntregadaxBarco/?fecha=$date');
//         log('${ConfigDorje.apiUrl}report/cargaEntregadaxBarco/?fecha=$date');
//         final resp = await http.get(uri, headers: getHeader());
//         if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//           var decodeResp = JSON.parse(resp.body).value;
//           // if ((decodeResp as List).isNotEmpty) {
//           // final resp = await getCargaEntregadaFromSQLite(fecha);
//           // log('result: $decodeResp');
//           return {'ok': true, 'data': decodeResp};
//           // }
//         }
//         return {
//           'ok': false,
//           'data':
//               'statusCode:${resp.statusCode}, url:${ConfigDorje.apiUrl + 'report/cargaEntregada/?fecha=$date'}'
//         };

//         // final resp = await getCargaEntregadaXBarcoFromSQLite(fecha);
//         // if (resp['status'] >= 200 && resp['status'] <= 299) {
//         //   var data = resp['success'] ? resp['data']['data'][0] : resp['message'];
//         //   return {'ok': resp['success'], 'data': data};
//         // }
//         // return {'ok': false};
//       } catch (e) {
//         return {'ok': false, 'data': e.toString()};
//       }
//     } else {
//       return {'ok': true, 'data': {}};
//     }
//   }

//   //Indicadores de operacion
//   // grafo
//   Future<Map<String, dynamic>> getAcumulado(int date) async {
//     if (!_globalController.isTesting.value) {
//       try {
//         // date = date.substring(0, date.length - 3);
//         Uri uri = Uri.parse(
//             ConfigDorje.apiUrl + 'report/acumuladoEntregado/?fecha=$date');
//         log('${ConfigDorje.apiUrl}report/acumuladoEntregado/?fecha=$date');
//         final respReal = await http.get(uri, headers: getHeader());
//         List? real;
//         int? xMax, xMaxFechaInicial, xMaxFechaFinal, viajesPendientes;
//         double? deltaX, m;

//         if (respReal.statusCode >= 200 && respReal.statusCode <= 299) {
//           var decodeRespReal = JSON.parse(respReal.body).value;

//           if (decodeRespReal.isNotEmpty) {
//             real = decodeRespReal['Acumulado_Entregado'];
//             deltaX =
//                 double.parse(decodeRespReal['minimos']['estimated'].toString());
//             xMax = decodeRespReal['minimos']['xMax'];
//             m = double.parse(decodeRespReal['minimos']['m'].toString());
//             xMaxFechaInicial = decodeRespReal['minimos']['xMax_inicial'];
//             xMaxFechaFinal = decodeRespReal['minimos']['xMax_final'];
//             viajesPendientes = decodeRespReal['minimos']['viajes_pendientes'] !=
//                     null
//                 ? int.parse(
//                     decodeRespReal['minimos']['viajes_pendientes'].toString())
//                 : null;
//           }
//           // if (decodeRespReal['minimo']['estimated'] == null ||
//           //     decodeRespReal['minimo']['estimated'] == -1) {
//           //   var semana = await getWeek(date);
//           //   decodeRespReal['minimo']['estimated'] = _globalController
//           //           .dataSourcePlan[_globalController.dataSourcePlan.length - 1]
//           //           .x -
//           //       semana['data']['semana'];

//           // else {
//           //   return {'ok': false, 'data': decodeRespReal['message']};
//           // }
//           return {
//             'ok': true,
//             'data': {
//               'real': real,
//               'deltaX': deltaX,
//               'm': m,
//               'x': xMax,
//               'xMaxFechaInicial': xMaxFechaInicial,
//               'xMaxFechaFinal': xMaxFechaFinal,
//               'viajes_pendientes': viajesPendientes,
//             }
//           };
//           // }
//           // return {'ok': false, 'data': 'respReal[' 'message' ']'};

//           // if (respReal['success']) {
//           //   var aux = respReal['data']['data'];
//           //   var _leastSquares = <String, dynamic>{'estimated': -1, 'm': 0.0};
//           //   if (aux.isNotEmpty) {
//           //     var myData = <Map<String, dynamic>>[];
//           //     aux
//           //         .map((a) => myData.add({'x': a['semana'], 'y': a['acumulado']}))
//           //         .toList();
//           //     // print(myData);
//           //     _leastSquares =
//           //         leastSquares(myData, _globalController.cargaTotal.value);
//           //   }

//           //   if (_leastSquares['estimated'] == null ||
//           //       _leastSquares['estimated'] == -1) {
//           //     var semana = await getWeek(date);
//           //     _leastSquares['estimated'] = _globalController
//           //             .dataSourcePlan[_globalController.dataSourcePlan.length - 1]
//           //             .x -
//           //         semana['data']['semana'];
//           //   }
//           //   // print(_leastSquares['m']);
//           //   return {
//           //     'ok': true,
//           //     'data': {
//           //       'real': respReal['data']['data'],
//           //       // 'plan': respPlan['data']['data'],
//           //       'deltaX': _leastSquares['estimated'],
//           //       'm': _leastSquares['m'],
//           //       'x': _leastSquares['xmax'],
//           //     }
//           //   };
//           // }
//           // return {'ok': false, 'data': respReal['message']};
//         } else if (respReal.statusCode == 400) {
//           return {
//             'ok': true,
//             'data': {
//               'real': real,
//               'deltaX': deltaX,
//               'm': m,
//               'x': xMax,
//             }
//           };
//         }
//         return {
//           'ok': false,
//           'data':
//               'statusCode:${respReal.statusCode}, url: ${ConfigDorje.apiUrl + 'report/acumuladoEntregado/?fecha=$date'}'
//         };
//         // }
//         // return {'ok': false, 'data': 'Debe de autenticarse primero'};
//       } catch (e) {
//         return {'ok': false, 'data': e.toString()};
//       }
//     } else {
//       return {'ok': true, 'data': {}};
//     }
//   }

//   Future<Map<String, dynamic>> getWeek(int date) async {
//     if (!_globalController.isTesting.value) {
//       try {
//         // if (_globalController.token.value != '') {
//         // date = date.substring(0, date.length - 3);
//         // final resp = await getSemanaFromSQLite(date);
//         Uri uri = Uri.parse(ConfigDorje.apiUrl + 'report/Semana/?fecha=$date');
//         final resp = await http.get(uri, headers: getHeader());
//         if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//           var decodeRespReal = JSON.parse(resp.body).value;
//           if (decodeRespReal['message'] == null) {
//             if (decodeRespReal.isNotEmpty) {
//               return {'ok': true, 'data': decodeRespReal['semana']};
//             }
//           }
//           return {'ok': false, 'data': decodeRespReal['message']};
//         }
//         return {
//           'ok': false,
//           'data': 'Error de respuestas del servidor, getWeek:${resp.statusCode}'
//         };
//         // }
//         // return {'ok': false, 'data': 'Debe de autenticarse primero'};
//       } catch (e) {
//         return {'ok': false, 'data': e.toString()};
//       }
//     } else {
//       return {'ok': true, 'data': {}};
//     }
//   }

// //Gauges carga y descarga
//   Future<Map<String, dynamic>> getOperacionesEnPuertos(int date) async {
//     if (!_globalController.isTesting.value) {
//       try {
//         // if (_globalController.token.value != '') {
//         // date = date.substring(0, date.length - 3);
//         Uri uri = Uri.parse(
//             ConfigDorje.apiUrl + 'report/operacionesPuerto/?fecha=$date');
//         final resp = await http.get(uri, headers: getHeader());
//         if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//           var decodeResp = JSON.parse(resp.body).value;
//           return {'ok': true, 'data': decodeResp};
//         }
//         return {
//           'ok': false,
//           'data':
//               'statusCode:${resp.statusCode}, url: ${ConfigDorje.apiUrl + 'report/operacionesPuerto/?fecha=$date'}'
//         };
//         // final resp = await getOperacionesEnPuertosFromSQLite(date);
//         // if (resp['status'] >= 200 && resp['status'] <= 299) {
//         //   if (resp['success']) {
//         //     return {'ok': true, 'data': resp['data']['data'][0]};
//         //   }
//         //   return {'ok': false, 'data': resp['message']};
//         // }
//         // return {'ok': false, 'data': 'Error de respuestas del servidor'};
//         // }
//         // return {'ok': false, 'data': 'Debe de autenticarse primero'};
//       } catch (e) {
//         return {'ok': false, 'data': e.toString()};
//       }
//     } else {
//       return {'ok': true, 'data': {}};
//     }
//   }

//   //Gauges semana
//   Future<Map<String, dynamic>> getUmbral(int date) async {
//     if (!_globalController.isTesting.value) {
//       try {
//         // if (_globalController.token.value != '') {
//         // date = date.substring(0, date.length - 3);

//         Uri uri = Uri.parse(ConfigDorje.apiUrl + 'report/umbral/?fecha=$date');
//         final resp = await http.get(uri, headers: getHeader());
//         if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//           var decodeResp = JSON.parse(resp.body).value;
//           return {'ok': true, 'data': decodeResp['umbral'] ?? 0.0};
//         }
//         return {
//           'ok': false,
//           'data': 'Error de respuestas del servidor, getWeek:${resp.statusCode}'
//         };
//         // final resp = await getUmbralFromSQLite(date);
//         // if (resp['status'] >= 200 && resp['status'] <= 299) {
//         //   if (resp['success']) {
//         //     return {'ok': true, 'data': resp['data']['data'][0]};
//         //   }
//         //   return {'ok': false, 'data': resp['message']};
//         // }
//         // return {'ok': false, 'data': 'Error de respuestas del servidor'};
//         // }
//         // return {'ok': false, 'data': 'Debe de autenticarse primero'};
//       } catch (e) {
//         log(
//           'Error de respuestas del servidor: $e',
//           name: 'getUmbral',
//         );
//         return {'ok': false, 'data': 0.0};
//       }
//     } else {
//       return {'ok': true, 'data': 0.0};
//     }
//   }

//   // Future<List> cargaXbarco(String fecha) async {
//   //   try {
//   //     // Uri uri =
//   //     //     Uri.parse(ConfigDorje.apiUrl + 'viajex/cantidad-barco/?hoy=$fecha');
//   //     // // Uri uri = Uri.parse(ConfigDorje.apiUrl + 'viaje/cantidad-barco');
//   //     // final resp = await http.get(uri, headers: getHeader());
//   //     List listAux = [];
//   //     // if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//   //     // final Map<String, dynamic> decodeResp = JSON.parse(resp.body).value;
//   //     // listAux = decodeResp['data'];
//   //     if (_globalController.cargaXbarco.isNotEmpty) {
//   //       listAux = _globalController.cargaXbarco['data'];
//   //     }
//   //     return listAux;
//   //   } catch (e) {
//   //     return [];
//   //   }
//   // }

//   // Future<List> getCurrentCharge(int id) async {
//   //   try {
//   //     var result = [];
//   //     // Uri uri = Uri.parse(ConfigDorje.apiUrl + 'barco/current-charge/$id');
//   //     // final resp = await http.get(uri, headers: getHeader());
//   //     // if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//   //     //   final Map<dynamic, dynamic> decodeResp = JSON.parse(resp.body).value;
//   //     //   result = decodeResp['data'];
//   //     // }
//   //     result = _globalController.getCurrentCharge['data'];
//   //     return result;
//   //   } on SocketException catch (_) {
//   //     // _globalController.connected.value = false;
//   //     return [];
//   //   } catch (e) {
//   //     log(e.toString(), name: 'getCurrentCharge');
//   //     return [];
//   //   }
//   // }

//   // Future<List<CargaModel>> getCargaMaster(int idViaje) async {
//   //   try {
//   //     // Uri uri = Uri.parse(ConfigDorje.apiUrl +
//   //     //     'barco-carga/?filtros[viaje_id]=$idViaje&ordenes[tiempo]=ASC');
//   //     // final resp = await http.get(uri, headers: getHeader());
//   //     var historial = <CargaModel>[];
//   //     // if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//   //     //   final Map<dynamic, dynamic> decodeResp = JSON.parse(resp.body).value;
//   //     if (_globalController.getCargaMaster.isNotEmpty) {
//   //       List temp = _globalController.getCargaMaster['data']['data'];
//   //       // List temp = decodeResp['data']['data'];
//   //       for (var element in temp) {
//   //         final trackingTemp = CargaModel.fromJson(element);
//   //         historial.add(trackingTemp);
//   //       }
//   //     }
//   //     return historial;
//   //   } on SocketException catch (_) {
//   //     // _globalController.connected.value = false;
//   //     return [];
//   //   } catch (e) {
//   //     return [];
//   //   }
//   // }

//   Future<List<UserModel>> getUsers() async {
//     if (!_globalController.isTesting.value) {
//       try {
//         Uri uri = Uri.parse(ConfigDorje.apiUrl + 'report/user');
//         final resp = await http.get(uri, headers: getHeader());
//         final List<UserModel> usersList = [];
//         if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//           final Map<String, dynamic> decodeResp = JSON.parse(resp.body).value;
//           List tempList = decodeResp['data']['data'];
//           for (var temp in tempList) {
//             final trackingTemp = UserModel.fromJson(temp);
//             usersList.add(trackingTemp);
//           }
//         }
//         return usersList;
//       } catch (e) {
//         return [];
//       }
//     } else {
//       return [];
//     }
//   }

//   // Future<dio.MultipartFile?> obtenerFichero(File fich) async {
//   //   try {
//   //     String filename = fich.path.split('/').last;
//   //     final fichero =
//   //         await dio.MultipartFile.fromFile(fich.path, filename: filename);
//   //     return fichero;
//   //   } catch (e) {
//   //     return null;
//   //   }
//   // }

//   // Future<List<dio.MultipartFile>> obtenerListaFicheros(
//   //     List<File> myListFile) async {
//   //   try {
//   //     List<dio.MultipartFile> myFiles = [];
//   //     for (var file in myListFile) {
//   //       final filename = file.path.split('/').last;
//   //       myFiles.addAll(
//   //           [await dio.MultipartFile.fromFile(file.path, filename: filename)]);
//   //     }
//   //     return myFiles;
//   //   } catch (e) {
//   //     return [];
//   //   }
//   // }

//   // Future<Map<String, dynamic>> postWithFormData(
//   //     String action, dio.FormData formData) async {
//   //   try {
//   //     Map<String, String> heads = {
//   //       "Authorization": 'Bearer ' + _preferences.token,
//   //       // "Authorization": 'Bearer ' + _globalController.token.value,
//   //       "accept": "application/json"
//   //     };
//   //     var _dio = dio.Dio();
//   //     final resp = await _dio.post(ConfigDorje.apiUrl + action,
//   //         data: formData, options: dio.Options(headers: heads));
//   //     if (resp.statusCode! >= 200 && resp.statusCode! <= 299) {
//   //       return {'ok': true, 'data': resp.data};
//   //     } else {
//   //       return {
//   //         'ok': false,
//   //         'errores': [
//   //           {
//   //             'field': 'error',
//   //             'message': resp.statusMessage ??
//   //                 'Ha ocurrido un error! Inténtelo más tarde.'
//   //           }
//   //         ]
//   //       };
//   //     }
//   //   } catch (e) {
//   //     dio.DioError myError = e as dio.DioError;
//   //     return {
//   //       'ok': false,
//   //       'errores': [
//   //         {
//   //           'field': 'error',
//   //           'message': myError.response!.data['message'].toString()
//   //         }
//   //       ]
//   //     };
//   //   }
//   // }

//   getConfiguracion() async {
//     if (!_globalController.isTesting.value) {
//       try {
//         // // Map<String, dynamic> resp = await getConfigFromSQLite();
//         // // Uri uri = Uri.parse(ConfigDorje.apiUrl + 'Contratos/');
//         // Uri uri = Uri.parse(ConfigDorje.apiUrl + 'report/Configuracion');
//         // // Uri uri = Uri.parse('http://simulacion.dorjesrl.com/api/Contratos/');
//         // final respConfig = await http.get(uri, headers: getHeader());
//         Uri uri = Uri.parse(ConfigDorje.apiUrl + 'report/acumuladoContratado/');
//         final respPlan = await http.get(uri, headers: getHeader());

//         Map<String, dynamic> respConfig = {
//           'ok': true,
//           'data': {
//             'cargatotal': 2480900.0,
//             'fechaIniciContrato': 1671426000,
//           }
//         };
//         if (respConfig['ok']) {
//           // if (respConfig.statusCode >= 200 && respConfig.statusCode <= 299) {
//           if (respPlan.statusCode >= 200 && respPlan.statusCode <= 299) {
//             // var decodeRespConfig = JSON.parse(respConfig.body).value;

//             var decodeRespPlan = JSON.parse(respPlan.body).value;
//             if (decodeRespPlan != null && (decodeRespPlan as List).isNotEmpty) {
//               ///crear la semana 0

//               _globalController.dataSourcePlan.value =
//                   createdataSource(decodeRespPlan, plan: true);

//               // Preferences().imgVessels =
//               //     jsonEncode(decodeRespConfig['barcoimagen']);

//               return {
//                 'ok': true,
//                 'data': {
//                   'cargatotal': respConfig['data']['cargatotal'],
//                   // 'cargatotal': decodeRespConfig['cargacontratada']
//                   //     ['cargatotal'],
//                 },
//                 // 'data': _globalController.config['data']['data'][0]
//               };
//             }
//             return {'ok': false, 'data': decodeRespPlan['message']};
//           }
//           return {
//             'ok': false,
//             'data':
//                 'statusCode: ${respPlan.statusCode}, url: ${ConfigDorje.apiUrl + 'report/acumuladoContratado/'}'
//           };
//         }
//         return {
//           'ok': false,
//           // 'data':
//           //     'statusCode: ${respConfig.statusCode}, url: ${ConfigDorje.apiUrl + 'Contratos/'}'
//         };
//         // if (resp['status'] >= 200 &&
//         //     resp['status'] <= 299 &&
//         //     respPlan['status'] >= 200 &&
//         //     respPlan['status'] <= 299) {
//         //   // if (_globalController.config.isNotEmpty) {
//         //   var data = resp['success'] ? resp['data']['data'][0] : resp['message'];
//         //   if (respPlan['success']) {
//         //     _globalController.dataSourcePlan.value =
//         //         createdataSource(respPlan['data']['data']);

//         //     return {
//         //       'ok': resp['success'],
//         //       'data': data,
//         //       // 'data': _globalController.config['data']['data'][0]
//         //     };
//         //   }
//         //   return {'ok': false, 'data': respPlan['message']};
//         // }
//         // return {'ok': false};
//       } catch (e) {
//         return {'ok': false, 'data': e.toString()};
//       }
//     } else {
//       return {'ok': true, 'data': {}};
//     }
//   }

//   Future<Map<String, dynamic>> getDatosNavegacion(int date) async {
//     if (!_globalController.isTesting.value) {
//       try {
//         // if (_globalController.token.value != '') {
//         // date = date.substring(0, date.length - 3);
//         Uri uri = Uri.parse(
//             ConfigDorje.apiUrl + 'report/statusNavegacion/?fecha=$date');
//         final resp = await http.get(uri, headers: getHeader());
//         if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//           List temp = JSON.parse(resp.body).value;
//           List<NavigationDataModel> tempR = [];
//           for (var element in temp) {
//             tempR.add(NavigationDataModel.fromJson(element));
//           }
//           return {'ok': true, 'data': tempR};
//         }
//         return {
//           'ok': false,
//           'data': 'Error de respuestas del servidor, getWeek:${resp.statusCode}'
//         };
//         // final resp = await getOperacionesEnPuertosFromSQLite(date);
//         // if (resp['status'] >= 200 && resp['status'] <= 299) {
//         //   if (resp['success']) {
//         //     return {'ok': true, 'data': resp['data']['data'][0]};
//         //   }
//         //   return {'ok': false, 'data': resp['message']};
//         // }
//         // return {'ok': false, 'data': 'Error de respuestas del servidor'};
//         // }
//         // return {'ok': false, 'data': 'Debe de autenticarse primero'};
//       } catch (e) {
//         return {'ok': false, 'data': e.toString()};
//       }
//     } else {
//       return {'ok': true, 'data': {}};
//     }
//   }

//   Future<List<EventModel>> getEventos(int idseq) async {
//     if (!_globalController.isTesting.value) {
//       try {
//         Uri uri = Uri.parse(ConfigDorje.apiUrl + 'report/Demoras/?id=$idseq');
//         final resp = await http.get(uri, headers: getHeader());
//         if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//           var temp = JSON.parse(resp.body).value;
//           List<EventModel> tempR = [];
//           for (var element in temp['demoras']) {
//             var encontrado =
//                 tempR.firstWhereOrNull((evt) => evt.id! == element['id']);
//             if (encontrado == null) {
//               tempR.add(EventModel.fromJson(element));
//             }
//           }
//           return tempR;
//         } else {
//           return [];
//         }
//       } on SocketException catch (_) {
//         return [];
//       } catch (e) {
//         return [];
//       }
//     } else {
//       return [];
//     }
//   }

//   Future<Map<String, dynamic>> isPaused(int idSec) async {
//     if (!_globalController.isTesting.value) {
//       try {
//         Uri uri = Uri.parse(ConfigDorje.apiUrl + 'report/pausado/?id=$idSec');
//         final resp = await http.get(uri, headers: getHeader());
//         if (resp.statusCode >= 200 && resp.statusCode <= 299) {
//           final Map<String, dynamic> decodeResp = JSON.parse(resp.body).value;
//           return {'ok': true, 'data': decodeResp['pausado']};
//         }
//         return {'ok': false, 'data': false};
//       } catch (e) {
//         return {'ok': false};
//       }
//     } else {
//       return {'ok': false, 'data': false};
//     }
//   }
// }
