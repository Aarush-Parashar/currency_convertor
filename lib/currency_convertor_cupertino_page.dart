import 'package:flutter/cupertino.dart';

class CurrencyConvertorCupertinoPage extends StatefulWidget {
  const CurrencyConvertorCupertinoPage({super.key});

  @override
  State<CurrencyConvertorCupertinoPage> createState() =>
      _CurrencyConvertorCupertinoPageState();
}

class _CurrencyConvertorCupertinoPageState
    extends State<CurrencyConvertorCupertinoPage> {
  double result = 0;
  final textEditingController = TextEditingController();
  void convert() {
    result = double.parse(textEditingController.text) * 83;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          'Currency Convertor',
          style: TextStyle(
            color: CupertinoColors.systemGrey3,
          ),
        ),
        backgroundColor: CupertinoColors.systemGrey3,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  color: CupertinoColors.white,
                ),
                placeholder: "Please Enter the amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 10),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text("Convert"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
