import 'dart:convert';
import 'dart:html';

import 'package:csv/csv.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../../data/datadummy.dart';
import '../../data/global.dart';
import '../../data/model.dart';
import '../../data/modelmaster.dart';
import '../../data/simatechlite.dart';
import '../../data/test.dart';
import '../../page/02Report_AUTOSN/ReportMAIN_AUTOSN.dart';
import '../../page/02Report_AUTOSN/ReportVAR_AUTOSN.dart';
import '../../page/04Report_AUTOCU/ReportVAR_AUTOCU.dart';
import '../../page/page2.dart';

//-------------------------------------------------

String server = GserverYMD;
//  ReportVAR_AUTOCU.selectedDate

abstract class CsvExport_AUTOCU_Event {}

class CsvExport_AUTOCUGetData extends CsvExport_AUTOCU_Event {}

class CsvExport_AUTOCUGetData_R extends CsvExport_AUTOCU_Event {}

class CsvExport_AUTOCU_Bloc
    extends Bloc<CsvExport_AUTOCU_Event, List<YMDDATAMASTERmodel>> {
  CsvExport_AUTOCU_Bloc() : super([]) {
    on<CsvExport_AUTOCUGetData>((event, emit) {
      return _CsvExport_AUTOCUGet_Function([], emit);
    });
    on<CsvExport_AUTOCUGetData_R>((event, emit) {
      return _CsvExport_AUTOCUGet_Function_R([], emit);
    });
  }
  Future<void> _CsvExport_AUTOCUGet_Function(List<YMDDATAMASTERmodel> toAdd,
      Emitter<List<YMDDATAMASTERmodel>> emit) async {
    final response = await Dio().post(
      server + "selectedDate_AUTORM",
      data: {"date": ReportVAR_AUTOCU.selectedDate},
    );

    // final response = await http.post(Uri.parse(server + "getcsvdata"), body: {
    //   "date": selectedDate.toString()
    // }, headers: {
    //   "Accept": "application/json",
    //   "Access-Control_Allow_Origin": "*"
    // });

    List<YMDDATAMASTERmodel> output = [];
    if (true) {
      // if (response.statusCode == 200) {
      //   var databuff = response.data;
      var databuff = data150624;
      // var databuff = testdata;

      for (var i = 0; i < databuff.length; i++) {
        //
        output.add(YMDDATAMASTERmodel(
          NO: '${i + 1}',
          Item: _NullCheck(databuff[i]['BarNo']),
          PartNO: _NullCheck(databuff[i]['Program']),
          PartName: _NullCheck(databuff[i]['ProgramName']),

          LoadingTime01: _daycon(_NullCheck(databuff[i]['TimeGetIn'])),
          UnloadingTime47: _daycon(_NullCheck(databuff[i]['TimeGetOut'])),

          Tank02Temp: todesimol(_NullCheck(databuff[i]['State02tempPV'])),
          Tank02Time: _NullCheck(databuff[i]['State02timePV']),

          Tank03Time: _NullCheck(databuff[i]['State03timePV']),
          Tank03Temp: todesimol(_NullCheck(databuff[i]['State03tempPV'])),
          Tank04Time: _NullCheck(databuff[i]['State04timePV']),
          Tank04Temp: todesimol(_NullCheck(databuff[i]['State04tempPV'])),
          Tank05Time: _NullCheck(databuff[i]['State05timePV']),
          Tank05Temp: todesimol(_NullCheck(databuff[i]['State05tempPV'])),
          Tank06Time: _NullCheck(databuff[i]['State06timePV']),
          Tank06Temp: todesimol(_NullCheck(databuff[i]['State06tempPV'])),
          Tank07Time: _NullCheck(databuff[i]['State07timePV']),
          Tank07Temp: todesimol(_NullCheck(databuff[i]['State07tempPV'])),
          Tank08Time: _NullCheck(databuff[i]['State08timePV']),
          Tank08Temp: todesimol(_NullCheck(databuff[i]['State08tempPV'])),
          Tank09Time: _NullCheck(databuff[i]['State09timePV']),
          Tank09Temp: todesimol(_NullCheck(databuff[i]['State09tempPV'])),
          Tank10Time: _NullCheck(databuff[i]['State10timePV']),
          Tank10Temp: todesimol(_NullCheck(databuff[i]['State10tempPV'])),
          Tank11Time: _NullCheck(databuff[i]['State11timePV']),
          Tank11Temp: todesimol(_NullCheck(databuff[i]['State11tempPV'])),
          Tank12Time: _NullCheck(databuff[i]['State12timePV']),
          Tank12Temp: todesimol(_NullCheck(databuff[i]['State12tempPV'])),
          Tank13Time: _NullCheck(databuff[i]['State13timePV']),
          Tank13Temp: todesimol(_NullCheck(databuff[i]['State13tempPV'])),
          Tank14Time: _NullCheck(databuff[i]['State14timePV']),
          Tank14Temp: todesimol(_NullCheck(databuff[i]['State14tempPV'])),
          Tank15Time: _NullCheck(databuff[i]['State15timePV']),
          Tank15Temp: todesimol(_NullCheck(databuff[i]['State15tempPV'])),
          Tank16Time: _NullCheck(databuff[i]['State16timePV']),
          Tank16Temp: todesimol(_NullCheck(databuff[i]['State16tempPV'])),
          //
          Tank17Volt: todesimol(_NullCheck(databuff[i]['State17voltPV'])),
          Tank17Amp: _NullCheck(databuff[i]['State17amPV']),
          Tank17Temp: todesimol(_NullCheck(databuff[i]['State17tempPV'])),
          Tank17Rpm: _NullCheck(databuff[i]['State17rpmPV']),
          Tank17Time: _NullCheck(databuff[i]['State17timePV']),
          //
          Tank18Time: _NullCheck(databuff[i]['State18timePV']),
          Tank18Temp: todesimol(_NullCheck(databuff[i]['State18tempPV'])),
          Tank19Time: _NullCheck(databuff[i]['State19timePV']),
          Tank19Temp: todesimol(_NullCheck(databuff[i]['State19tempPV'])),
          //
          Tank20Volt: todesimol(_NullCheck(databuff[i]['State20voltPV'])),
          Tank20Amp: _NullCheck(databuff[i]['State20amPV']),
          Tank20Temp: todesimol(_NullCheck(databuff[i]['State20tempPV'])),
          Tank20Rpm: _NullCheck(databuff[i]['State20rpmPV']),
          Tank20Time: _NullCheck(databuff[i]['State20timePV']),
          //
          Tank21Time: _NullCheck(databuff[i]['State21timePV']),
          Tank21Temp: todesimol(_NullCheck(databuff[i]['State21tempPV'])),
          Tank22Time: _NullCheck(databuff[i]['State22timePV']),
          Tank22Temp: todesimol(_NullCheck(databuff[i]['State22tempPV'])),
          Tank23Time: _NullCheck(databuff[i]['State23timePV']),
          Tank23Temp: todesimol(_NullCheck(databuff[i]['State23tempPV'])),
          //
          Tank24Volt: todesimol(_NullCheck(databuff[i]['State24voltPV'])),
          Tank24Amp: _NullCheck(databuff[i]['State24amPV']),
          Tank24Temp: todesimol(_NullCheck(databuff[i]['State24tempPV'])),
          Tank24Rpm: _NullCheck(databuff[i]['State24rpmPV']),
          Tank24Time: _NullCheck(databuff[i]['State24timePV']),
          //
          Tank25Time: _NullCheck(databuff[i]['State25timePV']),
          Tank25Temp: todesimol(_NullCheck(databuff[i]['State25tempPV'])),
          Tank26Time: _NullCheck(databuff[i]['State26timePV']),
          Tank26Temp: todesimol(_NullCheck(databuff[i]['State26tempPV'])),
          //
          Tank27Volt: todesimol(_NullCheck(databuff[i]['State27voltPV'])),
          Tank27Amp: _NullCheck(databuff[i]['State27amPV']),
          Tank27Temp: todesimol(_NullCheck(databuff[i]['State27tempPV'])),
          Tank27Rpm: _NullCheck(databuff[i]['State27rpmPV']),
          Tank27Time: _NullCheck(databuff[i]['State27timePV']),

          Tank28Volt: todesimol(_NullCheck(databuff[i]['State28voltPV'])),
          Tank28Amp: _NullCheck(databuff[i]['State28amPV']),
          Tank28Temp: todesimol(_NullCheck(databuff[i]['State28tempPV'])),
          Tank28Rpm: _NullCheck(databuff[i]['State28rpmPV']),
          Tank28Time: _NullCheck(databuff[i]['State28timePV']),
          //
          Tank29Time: _NullCheck(databuff[i]['State29timePV']),
          Tank29Temp: todesimol(_NullCheck(databuff[i]['State29tempPV'])),
          //
          Tank30Volt: todesimol(_NullCheck(databuff[i]['State30voltPV'])),
          Tank30Amp: _NullCheck(databuff[i]['State30amPV']),
          Tank30Temp: todesimol(_NullCheck(databuff[i]['State30tempPV'])),
          Tank30Rpm: _NullCheck(databuff[i]['State30rpmPV']),
          Tank30Time: _NullCheck(databuff[i]['State30timePV']),

          Tank31Volt: todesimol(_NullCheck(databuff[i]['State31voltPV'])),
          Tank31Amp: _NullCheck(databuff[i]['State31amPV']),
          Tank31Temp: todesimol(_NullCheck(databuff[i]['State31tempPV'])),
          Tank31Rpm: _NullCheck(databuff[i]['State31rpmPV']),
          Tank31Time: _NullCheck(databuff[i]['State31timePV']),
          //
          Tank32Time: _NullCheck(databuff[i]['State32timePV']),
          Tank32Temp: todesimol(_NullCheck(databuff[i]['State32tempPV'])),
          //
          Tank33Volt: todesimol(_NullCheck(databuff[i]['State33voltPV'])),
          Tank33Amp: _NullCheck(databuff[i]['State33amPV']),
          Tank33Temp: todesimol(_NullCheck(databuff[i]['State33tempPV'])),
          Tank33Rpm: _NullCheck(databuff[i]['State33rpmPV']),
          Tank33Time: _NullCheck(databuff[i]['State33timePV']),

          Tank34Volt: todesimol(_NullCheck(databuff[i]['State34voltPV'])),
          Tank34Amp: _NullCheck(databuff[i]['State34amPV']),
          Tank34Temp: todesimol(_NullCheck(databuff[i]['State34tempPV'])),
          Tank34Rpm: _NullCheck(databuff[i]['State34rpmPV']),
          Tank34Time: _NullCheck(databuff[i]['State34timePV']),
          //
          Tank35Time: _NullCheck(databuff[i]['State35timePV']),
          Tank35Temp: todesimol(_NullCheck(databuff[i]['State35tempPV'])),
          //
          Tank36Volt: todesimol(_NullCheck(databuff[i]['State36voltPV'])),
          Tank36Amp: _NullCheck(databuff[i]['State36amPV']),
          Tank36Temp: todesimol(_NullCheck(databuff[i]['State36tempPV'])),
          Tank36Rpm: _NullCheck(databuff[i]['State36rpmPV']),
          Tank36Time: _NullCheck(databuff[i]['State36timePV']),

          Tank37Volt: todesimol(_NullCheck(databuff[i]['State37voltPV'])),
          Tank37Amp: _NullCheck(databuff[i]['State37amPV']),
          Tank37Temp: todesimol(_NullCheck(databuff[i]['State37tempPV'])),
          Tank37Rpm: _NullCheck(databuff[i]['State37rpmPV']),
          Tank37Time: _NullCheck(databuff[i]['State37timePV']),
          //
          Tank38Time: _NullCheck(databuff[i]['State38timePV']),
          Tank38Temp: todesimol(_NullCheck(databuff[i]['State38tempPV'])),

          Tank39Time: _NullCheck(databuff[i]['State39timePV']),
          Tank39Temp: todesimol(_NullCheck(databuff[i]['State39tempPV'])),
          Tank40Time: _NullCheck(databuff[i]['State40timePV']),
          Tank40Temp: todesimol(_NullCheck(databuff[i]['State40tempPV'])),
          Tank41Time: _NullCheck(databuff[i]['State41timePV']),
          Tank41Temp: todesimol(_NullCheck(databuff[i]['State41tempPV'])),
          Tank42Time: _NullCheck(databuff[i]['State42timePV']),
          Tank42Temp: todesimol(_NullCheck(databuff[i]['State42tempPV'])),
          Tank43Time: _NullCheck(databuff[i]['State43timePV']),
          Tank43Temp: todesimol(_NullCheck(databuff[i]['State43tempPV'])),
          Tank44Time: _NullCheck(databuff[i]['State44timePV']),
          Tank44Temp: todesimol(_NullCheck(databuff[i]['State44tempPV'])),
          Tank45Time: _NullCheck(databuff[i]['State45timePV']),
          Tank45Temp: todesimol(_NullCheck(databuff[i]['State45tempPV'])),
          Tank46Time: _NullCheck(databuff[i]['State46timePV']),
          Tank46Temp: todesimol(_NullCheck(databuff[i]['State46tempPV'])),
          Tank47Time: _NullCheck(databuff[i]['State47timePV']),
          Tank47Temp: todesimol(_NullCheck(databuff[i]['State47tempPV'])),
        ));
      }
    } else {
      print("NO SERVICE");
    }
    ExpCSV(output);
    emit(output);
  }

  Future<void> _CsvExport_AUTOCUGet_Function_R(List<YMDDATAMASTERmodel> toAdd,
      Emitter<List<YMDDATAMASTERmodel>> emit) async {
    final response = await Dio().post(
      server + "selectedDate_AUTORM",
      data: {"date": ReportVAR_AUTOCU.selectedDate},
    );

    // final response = await http.post(Uri.parse(server + "getcsvdata"), body: {
    //   "date": selectedDate.toString()
    // }, headers: {
    //   "Accept": "application/json",
    //   "Access-Control_Allow_Origin": "*"
    // });

    List<YMDDATAMASTERmodel> output = [];

    if (true) {
      // if (response.statusCode == 200) {
      // var databuff = response.data;
      var databuff = data150624;
      // var databuff = testdata;

      for (var i = 0; i < databuff.length; i++) {
        //
        output.add(YMDDATAMASTERmodel(
          NO: '${i + 1}',
          Item: _NullCheck(databuff[i]['BarNo']),
          PartNO: _NullCheck(databuff[i]['Program']),
          PartName: _NullCheck(databuff[i]['ProgramName']),

          LoadingTime01: _daycon(_NullCheck(databuff[i]['TimeGetIn'])),
          UnloadingTime47: _daycon(_NullCheck(databuff[i]['TimeGetOut'])),

          Tank02Temp: todesimol(_NullCheck(databuff[i]['State02tempPV'])),
          Tank02Time: _NullCheck(databuff[i]['State02timePV']),

          Tank03Time: _NullCheck(databuff[i]['State03timePV']),
          Tank03Temp: todesimol(_NullCheck(databuff[i]['State03tempPV'])),
          Tank04Time: _NullCheck(databuff[i]['State04timePV']),
          Tank04Temp: todesimol(_NullCheck(databuff[i]['State04tempPV'])),
          Tank05Time: _NullCheck(databuff[i]['State05timePV']),
          Tank05Temp: todesimol(_NullCheck(databuff[i]['State05tempPV'])),
          Tank06Time: _NullCheck(databuff[i]['State06timePV']),
          Tank06Temp: todesimol(_NullCheck(databuff[i]['State06tempPV'])),
          Tank07Time: _NullCheck(databuff[i]['State07timePV']),
          Tank07Temp: todesimol(_NullCheck(databuff[i]['State07tempPV'])),
          Tank08Time: _NullCheck(databuff[i]['State08timePV']),
          Tank08Temp: todesimol(_NullCheck(databuff[i]['State08tempPV'])),
          Tank09Time: _NullCheck(databuff[i]['State09timePV']),
          Tank09Temp: todesimol(_NullCheck(databuff[i]['State09tempPV'])),
          Tank10Time: _NullCheck(databuff[i]['State10timePV']),
          Tank10Temp: todesimol(_NullCheck(databuff[i]['State10tempPV'])),
          Tank11Time: _NullCheck(databuff[i]['State11timePV']),
          Tank11Temp: todesimol(_NullCheck(databuff[i]['State11tempPV'])),
          Tank12Time: _NullCheck(databuff[i]['State12timePV']),
          Tank12Temp: todesimol(_NullCheck(databuff[i]['State12tempPV'])),
          Tank13Time: _NullCheck(databuff[i]['State13timePV']),
          Tank13Temp: todesimol(_NullCheck(databuff[i]['State13tempPV'])),
          Tank14Time: _NullCheck(databuff[i]['State14timePV']),
          Tank14Temp: todesimol(_NullCheck(databuff[i]['State14tempPV'])),
          Tank15Time: _NullCheck(databuff[i]['State15timePV']),
          Tank15Temp: todesimol(_NullCheck(databuff[i]['State15tempPV'])),
          Tank16Time: _NullCheck(databuff[i]['State16timePV']),
          Tank16Temp: todesimol(_NullCheck(databuff[i]['State16tempPV'])),
          //
          Tank17Volt: todesimol(_NullCheck(databuff[i]['State17voltPV'])),
          Tank17Amp: _NullCheck(databuff[i]['State17amPV']),
          Tank17Temp: todesimol(_NullCheck(databuff[i]['State17tempPV'])),
          Tank17Rpm: _NullCheck(databuff[i]['State17rpmPV']),
          Tank17Time: _NullCheck(databuff[i]['State17timePV']),
          //
          Tank18Time: _NullCheck(databuff[i]['State18timePV']),
          Tank18Temp: todesimol(_NullCheck(databuff[i]['State18tempPV'])),
          Tank19Time: _NullCheck(databuff[i]['State19timePV']),
          Tank19Temp: todesimol(_NullCheck(databuff[i]['State19tempPV'])),
          //
          Tank20Volt: todesimol(_NullCheck(databuff[i]['State20voltPV'])),
          Tank20Amp: _NullCheck(databuff[i]['State20amPV']),
          Tank20Temp: todesimol(_NullCheck(databuff[i]['State20tempPV'])),
          Tank20Rpm: _NullCheck(databuff[i]['State20rpmPV']),
          Tank20Time: _NullCheck(databuff[i]['State20timePV']),
          //
          Tank21Time: _NullCheck(databuff[i]['State21timePV']),
          Tank21Temp: todesimol(_NullCheck(databuff[i]['State21tempPV'])),
          Tank22Time: _NullCheck(databuff[i]['State22timePV']),
          Tank22Temp: todesimol(_NullCheck(databuff[i]['State22tempPV'])),
          Tank23Time: _NullCheck(databuff[i]['State23timePV']),
          Tank23Temp: todesimol(_NullCheck(databuff[i]['State23tempPV'])),
          //
          Tank24Volt: todesimol(_NullCheck(databuff[i]['State24voltPV'])),
          Tank24Amp: _NullCheck(databuff[i]['State24amPV']),
          Tank24Temp: todesimol(_NullCheck(databuff[i]['State24tempPV'])),
          Tank24Rpm: _NullCheck(databuff[i]['State24rpmPV']),
          Tank24Time: _NullCheck(databuff[i]['State24timePV']),
          //
          Tank25Time: _NullCheck(databuff[i]['State25timePV']),
          Tank25Temp: todesimol(_NullCheck(databuff[i]['State25tempPV'])),
          Tank26Time: _NullCheck(databuff[i]['State26timePV']),
          Tank26Temp: todesimol(_NullCheck(databuff[i]['State26tempPV'])),
          //
          Tank27Volt: todesimol(_NullCheck(databuff[i]['State27voltPV'])),
          Tank27Amp: _NullCheck(databuff[i]['State27amPV']),
          Tank27Temp: todesimol(_NullCheck(databuff[i]['State27tempPV'])),
          Tank27Rpm: _NullCheck(databuff[i]['State27rpmPV']),
          Tank27Time: _NullCheck(databuff[i]['State27timePV']),

          Tank28Volt: todesimol(_NullCheck(databuff[i]['State28voltPV'])),
          Tank28Amp: _NullCheck(databuff[i]['State28amPV']),
          Tank28Temp: todesimol(_NullCheck(databuff[i]['State28tempPV'])),
          Tank28Rpm: _NullCheck(databuff[i]['State28rpmPV']),
          Tank28Time: _NullCheck(databuff[i]['State28timePV']),
          //
          Tank29Time: _NullCheck(databuff[i]['State29timePV']),
          Tank29Temp: todesimol(_NullCheck(databuff[i]['State29tempPV'])),
          //
          Tank30Volt: todesimol(_NullCheck(databuff[i]['State30voltPV'])),
          Tank30Amp: _NullCheck(databuff[i]['State30amPV']),
          Tank30Temp: todesimol(_NullCheck(databuff[i]['State30tempPV'])),
          Tank30Rpm: _NullCheck(databuff[i]['State30rpmPV']),
          Tank30Time: _NullCheck(databuff[i]['State30timePV']),

          Tank31Volt: todesimol(_NullCheck(databuff[i]['State31voltPV'])),
          Tank31Amp: _NullCheck(databuff[i]['State31amPV']),
          Tank31Temp: todesimol(_NullCheck(databuff[i]['State31tempPV'])),
          Tank31Rpm: _NullCheck(databuff[i]['State31rpmPV']),
          Tank31Time: _NullCheck(databuff[i]['State31timePV']),
          //
          Tank32Time: _NullCheck(databuff[i]['State32timePV']),
          Tank32Temp: todesimol(_NullCheck(databuff[i]['State32tempPV'])),
          //
          Tank33Volt: todesimol(_NullCheck(databuff[i]['State33voltPV'])),
          Tank33Amp: _NullCheck(databuff[i]['State33amPV']),
          Tank33Temp: todesimol(_NullCheck(databuff[i]['State33tempPV'])),
          Tank33Rpm: _NullCheck(databuff[i]['State33rpmPV']),
          Tank33Time: _NullCheck(databuff[i]['State33timePV']),

          Tank34Volt: todesimol(_NullCheck(databuff[i]['State34voltPV'])),
          Tank34Amp: _NullCheck(databuff[i]['State34amPV']),
          Tank34Temp: todesimol(_NullCheck(databuff[i]['State34tempPV'])),
          Tank34Rpm: _NullCheck(databuff[i]['State34rpmPV']),
          Tank34Time: _NullCheck(databuff[i]['State34timePV']),
          //
          Tank35Time: _NullCheck(databuff[i]['State35timePV']),
          Tank35Temp: todesimol(_NullCheck(databuff[i]['State35tempPV'])),
          //
          Tank36Volt: todesimol(_NullCheck(databuff[i]['State36voltPV'])),
          Tank36Amp: _NullCheck(databuff[i]['State36amPV']),
          Tank36Temp: todesimol(_NullCheck(databuff[i]['State36tempPV'])),
          Tank36Rpm: _NullCheck(databuff[i]['State36rpmPV']),
          Tank36Time: _NullCheck(databuff[i]['State36timePV']),

          Tank37Volt: todesimol(_NullCheck(databuff[i]['State37voltPV'])),
          Tank37Amp: _NullCheck(databuff[i]['State37amPV']),
          Tank37Temp: todesimol(_NullCheck(databuff[i]['State37tempPV'])),
          Tank37Rpm: _NullCheck(databuff[i]['State37rpmPV']),
          Tank37Time: _NullCheck(databuff[i]['State37timePV']),
          //
          Tank38Time: _NullCheck(databuff[i]['State38timePV']),
          Tank38Temp: todesimol(_NullCheck(databuff[i]['State38tempPV'])),

          Tank39Time: _NullCheck(databuff[i]['State39timePV']),
          Tank39Temp: todesimol(_NullCheck(databuff[i]['State39tempPV'])),
          Tank40Time: _NullCheck(databuff[i]['State40timePV']),
          Tank40Temp: todesimol(_NullCheck(databuff[i]['State40tempPV'])),
          Tank41Time: _NullCheck(databuff[i]['State41timePV']),
          Tank41Temp: todesimol(_NullCheck(databuff[i]['State41tempPV'])),
          Tank42Time: _NullCheck(databuff[i]['State42timePV']),
          Tank42Temp: todesimol(_NullCheck(databuff[i]['State42tempPV'])),
          Tank43Time: _NullCheck(databuff[i]['State43timePV']),
          Tank43Temp: todesimol(_NullCheck(databuff[i]['State43tempPV'])),
          Tank44Time: _NullCheck(databuff[i]['State44timePV']),
          Tank44Temp: todesimol(_NullCheck(databuff[i]['State44tempPV'])),
          Tank45Time: _NullCheck(databuff[i]['State45timePV']),
          Tank45Temp: todesimol(_NullCheck(databuff[i]['State45tempPV'])),
          Tank46Time: _NullCheck(databuff[i]['State46timePV']),
          Tank46Temp: todesimol(_NullCheck(databuff[i]['State46tempPV'])),
          Tank47Time: _NullCheck(databuff[i]['State47timePV']),
          Tank47Temp: todesimol(_NullCheck(databuff[i]['State47tempPV'])),
        ));
      }
    } else {
      print("NO SERVICE");
    }

    emit(output);
  }
}

String _NullCheck(dynamic input) {
  String output = '-';
  if (input != null) {
    if (input != '0') {
      if (input != 'NULL') {
        output = input.toString();
      } else {
        output = '';
      }
    }
  }
  return output;
}

ExpCSV(List<YMDDATAMASTERmodel> data) {
  List<List<dynamic>> rows = [];

  for (int i = -1; i < data.length; i++) {
    List<dynamic> row = [];
    if (i == -1) {
      row.add('NO');
      row.add('BAR');
      row.add('ProgramNO');
      row.add('ProgramName');
      row.add('LoadingTime');
      row.add('UnloadingTime');
      row.add('02 RM oxide');
      row.add('03 RM oxide');
      row.add('04 RM oxide');
      row.add('05 RM oxide');
      row.add('06 RM oxide');
      row.add('07 RM oxide');
      row.add('08 RM oxide');
      row.add('09 RM oxide');
      row.add('10 RM oxide');
      row.add('11 RM oxide');
      row.add('12 RM oxide');
      row.add('13 RM oxide');
      row.add('14 RM oxide');
      row.add('15 RM oxide');
      row.add('16 RM oxide');
      row.add('17 RM oxide');
      row.add('18 RM oxide');
      row.add('19 RM oxide');
      row.add('20 RM oxide');
      row.add('21 RM oxide');
      row.add('22 Shower');
      row.add('23 Water Risne');
      row.add('24 Water Risne');

      row.add('27 Water Risne');
      row.add('28 HCL3');
      row.add('29 Glass WH');
      row.add('30 HF Shower');
      row.add('31 Water Risne');
      row.add('32 Water Risne');
      row.add('33 Water Risne');
      row.add('34 HCL1');
      row.add('35 HCL2');
      row.add('36 Water Risne');
      row.add('37 Water Risne');
      row.add('38 Water Risne');
      row.add('39 Neutralizing');
      row.add('40 Water Risne');
      row.add('41 Water Risne');
      row.add('42 Water Risne');
      row.add('43 Water Cut');
      row.add('44 Hot Rinse');
      row.add('45 Hot Rinse');
      row.add('46 Hot Rinse');
    } else {
      row.add(data[i].NO);

      row.add(data[i].Item);
      row.add(data[i].PartNO);
      row.add(data[i].PartName);
      row.add(data[i].LoadingTime01);
      row.add(data[i].UnloadingTime47);

      row.add(data[i].Tank02Time);
      row.add(data[i].Tank03Time);
      row.add(data[i].Tank04Time);
      row.add(data[i].Tank05Time);
      row.add(data[i].Tank06Time);
      row.add(data[i].Tank07Time);
      row.add(data[i].Tank08Time);
      row.add(data[i].Tank09Time);
      row.add(data[i].Tank10Time);
      row.add(data[i].Tank11Time);
      row.add(data[i].Tank12Time);
      row.add(data[i].Tank13Time);
      row.add(data[i].Tank14Time);
      row.add(data[i].Tank15Time);
      row.add(data[i].Tank16Time);
      row.add(data[i].Tank17Time);
      row.add(data[i].Tank18Time);
      row.add(data[i].Tank19Time);
      row.add(data[i].Tank20Time);
      row.add(data[i].Tank21Time);
      row.add(data[i].Tank22Time);
      row.add(data[i].Tank23Time);
      row.add(data[i].Tank24Time);

      row.add(data[i].Tank27Time);
      row.add(data[i].Tank28Time);
      row.add(data[i].Tank29Time);
      row.add(data[i].Tank30Time);
      row.add(data[i].Tank31Time);
      row.add(data[i].Tank32Time);
      row.add(data[i].Tank33Time);
      row.add(data[i].Tank34Time);
      row.add(data[i].Tank35Time);
      row.add(data[i].Tank36Time);
      row.add(data[i].Tank37Time);
      row.add(data[i].Tank38Time);
      row.add(data[i].Tank39Time);
      row.add(data[i].Tank40Time);

      row.add(data[i].Tank41Time);
      row.add(data[i].Tank42Time);
      row.add(data[i].Tank43Time);
      row.add(data[i].Tank44Time);
      row.add(data[i].Tank45Time);
      row.add(data[i].Tank46Time);

      //
    }

    rows.add(row);
  }
  String datetada = "${selectedDate.toLocal()}".split(' ')[0];
  String csv = const ListToCsvConverter().convert(rows);
  AnchorElement(href: "data:text/plain;charset=utf-8,$csv")
    ..setAttribute("download", "DATA ${ReportVAR_AUTOCU.selectedDate}.csv")
    ..click();
}

String _daycon(String input) {
  String output = '-';
  if (isNumeric(input)) {
    int datain = int.parse(input);
    var date = DateTime.fromMillisecondsSinceEpoch(datain);
    // print(date);
    // print(DateFormat('dd/MM/yyyy hh:mm a').format(date));
    output = DateFormat('dd/MM/yyyy hh:mm a').format(date);
  }

  return output;
}

String ConverstStr(String input) {
  if (isNumeric(input)) {
    return input;
  } else {
    return '0';
  }
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

String todesimol(String s) {
  String output = '-';
  if (s != '-') {
    output = (double.parse(ConverstStr(s)) / 10).toStringAsFixed(1);
  }

  return output;
}

_Decimal_To_Text(String text) {
  String input_Decimal_all = "";
  input_Decimal_all = text;
  List<String> list_Decimal_all = input_Decimal_all.split(",");

  String text_all = "";
  List<String> list_text_all = [];
  for (int i = 0; i < list_Decimal_all.length; i++) {
    String input_Decimal = "";
    String binary = "";
    String binary_4_R = "";
    String binary_4_L = "";
    String text_1 = "";
    String text_2 = "";
    input_Decimal = list_Decimal_all[i];
    binary = int.parse(input_Decimal).toRadixString(2).padLeft(16, "0");
    binary_4_R = binary.substring(8);
    binary_4_L = binary.substring(0, 8);
    text_1 = String.fromCharCode(int.parse(binary_4_R, radix: 2));
    text_2 = String.fromCharCode(int.parse(binary_4_L, radix: 2));
    list_text_all.add(text_1);
    list_text_all.add(text_2);
  }
  text_all = list_text_all.join();
  return text_all;
}
