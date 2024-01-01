import 'package:flutter/material.dart';
import 'package:na_dira/layers/presenters/components/button/button_widget.dart';
import 'package:na_dira/layers/presenters/components/space/height_widget.dart';
import 'package:na_dira/layers/presenters/components/space/width_widget.dart';

class SaleView extends StatelessWidget {
  const SaleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                      onPressed: () {},
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
            //     Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Text(
            //     'Adicione crédito',
            //     style: Theme.of(context).textTheme.headlineMedium,
            //   ),
            // ),
            // ElevatedButton(
            //     style: ButtonStyle(
            //         shape: MaterialStateProperty.all(
            //             const RoundedRectangleBorder()),
            //         backgroundColor:
            //             MaterialStateProperty.all(Colors.deepOrange)),
            //     onPressed: () {},
            //     child: Text(
            //       'Selecione o consumidor',
            //       style: Theme.of(context).textTheme.headlineSmall,
            //     )),
          ],
        ),
      ),
    );
  }
}
