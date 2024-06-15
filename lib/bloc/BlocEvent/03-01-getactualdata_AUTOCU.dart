import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../data/dummy2.dart';
import '../../data/global.dart';
import '../../data/model.dart';
import '../../data/modelmaster.dart';
import '../../data/simatechlite.dart';
import '../../data/test.dart';

//-------------------------------------------------

String server = GserverYMD;

abstract class ACTUALDATA_AUTOCU_Event {}

class ACTUALDATA_AUTOCU_Pressed extends ACTUALDATA_AUTOCU_Event {}

class ACTUALDATA_AUTOCU_Bloc
    extends Bloc<ACTUALDATA_AUTOCU_Event, List<YMDDATAMASTERmodel>> {
  ACTUALDATA_AUTOCU_Bloc() : super([]) {
    on<ACTUALDATA_AUTOCU_Pressed>((event, emit) {
      return _Function_01([], emit);
    });
  }
  Future<void> _Function_01(List<YMDDATAMASTERmodel> toAdd,
      Emitter<List<YMDDATAMASTERmodel>> emit) async {
    // final response = await Dio().post(
    //   server + "Today_AUTORM",
    //   data: {},
    // );

    List<YMDDATAMASTERmodel> output = [];
    // if (response.statusCode == 200) {
    if (true) {
      // var databuff = response.data;
      // var databuff = testdummy;
      var databuff = data150624;
      // print(databuff);
      int numtest = databuff.length;
      if (databuff.length > 50) {
        numtest = 50;
      }
      for (var i = 0; i < numtest; i++) {
        //
        output.add(YMDDATAMASTERmodel(
          NO: '${i + 1}',
          Item: _NullCheck(databuff[i]['BarNo']),
          PartNO: _NullCheck(databuff[i]['Program']),
          PartName: _Decimal_To_Text(_NullCheck(databuff[i]['ProgramName'])),

          LoadingTime01: _daycon(_NullCheck(databuff[i]['TimeGetIn'])),
          UnloadingTime47: _daycon(_NullCheck(databuff[i]['TimeGetOut'])),

          Tank02Temp: _NullCheck(databuff[i]['State02timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde01'])),
          Tank02Time: _NullCheck(databuff[i]['State02timePV']),

          Tank03Time: _NullCheck(databuff[i]['State03timePV']),
          Tank03Temp: _NullCheck(databuff[i]['State03timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde01'])),
          Tank04Time: _NullCheck(databuff[i]['State04timePV']),
          Tank04Temp: _NullCheck(databuff[i]['State04timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde01'])),
          Tank05Time: _NullCheck(databuff[i]['State05timePV']),
          Tank05Temp: _NullCheck(databuff[i]['State05timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde01'])),
          Tank06Time: _NullCheck(databuff[i]['State06timePV']),
          Tank06Temp: _NullCheck(databuff[i]['State06timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde02'])),
          Tank07Time: _NullCheck(databuff[i]['State07timePV']),
          Tank07Temp: _NullCheck(databuff[i]['State07timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde02'])),
          Tank08Time: _NullCheck(databuff[i]['State08timePV']),
          Tank08Temp: _NullCheck(databuff[i]['State08timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde02'])),
          Tank09Time: _NullCheck(databuff[i]['State09timePV']),
          Tank09Temp: _NullCheck(databuff[i]['State09timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde02'])),
          Tank10Time: _NullCheck(databuff[i]['State10timePV']),
          Tank10Temp: _NullCheck(databuff[i]['State10timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde03'])),
          Tank11Time: _NullCheck(databuff[i]['State11timePV']),
          Tank11Temp: _NullCheck(databuff[i]['State11timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde03'])),
          Tank12Time: _NullCheck(databuff[i]['State12timePV']),
          Tank12Temp: _NullCheck(databuff[i]['State12timePV']) == ''
              ? ''
              : _NullCheck(databuff[i]['State12timePV']) == ''
                  ? ''
                  : todesimol(_NullCheck(databuff[i]['TempOxde03'])),
          Tank13Time: _NullCheck(databuff[i]['State13timePV']),
          Tank13Temp: _NullCheck(databuff[i]['State13timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde03'])),
          Tank14Time: _NullCheck(databuff[i]['State14timePV']),
          Tank14Temp: _NullCheck(databuff[i]['State14timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde04'])),
          Tank15Time: _NullCheck(databuff[i]['State15timePV']),
          Tank15Temp: _NullCheck(databuff[i]['State15timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde04'])),
          Tank16Time: _NullCheck(databuff[i]['State16timePV']),
          Tank16Temp: _NullCheck(databuff[i]['State16timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde04'])),
          //

          Tank17Temp: _NullCheck(databuff[i]['State17timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde04'])),
          Tank17Time: _NullCheck(databuff[i]['State17timePV']),
          //
          Tank18Time: _NullCheck(databuff[i]['State18timePV']),
          Tank18Temp: _NullCheck(databuff[i]['State18timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde05'])),
          Tank19Time: _NullCheck(databuff[i]['State19timePV']),
          Tank19Temp: _NullCheck(databuff[i]['State19timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde05'])),
          //

          Tank20Temp: _NullCheck(databuff[i]['State20timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde05'])),

          Tank20Time: _NullCheck(databuff[i]['State20timePV']),
          //
          Tank21Time: _NullCheck(databuff[i]['State21timePV']),
          Tank21Temp: _NullCheck(databuff[i]['State21timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempOxde05'])),
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
          Tank28Temp: _NullCheck(databuff[i]['State28timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempHCL28'])),
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

          Tank34Temp: _NullCheck(databuff[i]['State34timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempHCL34'])),

          Tank34Time: _NullCheck(databuff[i]['State34timePV']),
          //
          Tank35Time: _NullCheck(databuff[i]['State35timePV']),
          Tank35Temp: _NullCheck(databuff[i]['State35timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempHCL35'])),
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
          Tank44Temp: _NullCheck(databuff[i]['State44timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempHOT1'])),
          Tank45Time: _NullCheck(databuff[i]['State45timePV']),
          Tank45Temp: _NullCheck(databuff[i]['State45timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempHOT2'])),
          Tank46Time: _NullCheck(databuff[i]['State46timePV']),
          Tank46Temp: _NullCheck(databuff[i]['State46timePV']) == ''
              ? ''
              : todesimol(_NullCheck(databuff[i]['TempHOT3'])),
          Tank47Time: _NullCheck(databuff[i]['State47timePV']),
          Tank47Temp: todesimol(_NullCheck(databuff[i]['State47tempPV'])),
        ));
      }
    } else {}
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
