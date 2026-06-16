import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';

class ControllerSunmiPrinter {
  //SunmiPrinterPlus

  static Future<void> printer(String data) async {
    await SunmiPrinter.initPrinter();
    await SunmiPrinter.startTransactionPrint(true);
    //await SunmiPrinter.print
    await SunmiPrinter.printQRCode(data, size: 7);
    //await SunmiPrinter.printBarCode('941357140');

    await SunmiPrinter.lineWrap(4);
    await SunmiPrinter.exitTransactionPrint(true);
  }
}
