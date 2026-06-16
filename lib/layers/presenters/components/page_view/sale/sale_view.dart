import 'package:flutter/material.dart';
import 'package:na_dira/layers/api/sunmi_printer/sunmi_printer.dart';
import 'package:na_dira/layers/presenters/components/button/button_widget.dart';
import 'package:na_dira/layers/presenters/components/space/height_widget.dart';
import 'package:na_dira/layers/presenters/components/space/width_widget.dart';
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';
//import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';

class SaleView extends StatefulWidget {
  const SaleView({super.key});

  @override
  State<SaleView> createState() => _SaleViewState();
}

class _SaleViewState extends State<SaleView> {
  bool printBinded = false;
  int paperSize = 0;
  String serialNumber = '';
  String printVersion = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Bem-vindo ao app na Dira, o seu aplicativo de vendas rápidas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Realize vendas de seus produtos na Dira',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    ButtonWidget(
                        onPressed: () async {
                          await ControllerSunmiPrinter.printer(
                              'https://www.facebook.com/profile.php?id=61552111806767');
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Venda',
                              style: TextStyle(
                                  fontSize: 26, color: Colors.deepOrange),
                            ),
                            WidthWidget(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.deepOrange,
                            )
                          ],
                        )),
                  ],
                ),
              ),
              const HeightWidget(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Adicione dinheiro aos consumidores da Dira',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    ButtonWidget(
                        onPressed: () {},
                        color: Colors.deepOrange,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Crédito',
                              style: TextStyle(
                                  fontSize: 26, color: Colors.grey.shade300),
                            ),
                            const WidthWidget(),
                            Icon(Icons.arrow_forward_ios_rounded,
                                color: Colors.grey.shade300)
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool?> _bindingPrinter() async {
    final bool? result = await SunmiPrinter.bindingPrinter();
    return result;
  }

  @override
  void initState() {
    super.initState();

    _bindingPrinter().then((isBing) {
      SunmiPrinter.paperSize().then((size) {
        setState(() {
          paperSize = size;
        });
      });

      SunmiPrinter.printerVersion().then((version) {
        setState(() {
          printVersion = version;
        });
      });
      SunmiPrinter.serialNumber().then((serial) {
        setState(() {
          serialNumber = serial;
        });
      });

      setState(() {
        printBinded = isBing!;
      });
    });
  }
}
