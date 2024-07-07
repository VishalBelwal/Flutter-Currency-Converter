import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/*
  how to convert:-
  1. craete a variable that stores the converted currency value
  2. create a function that multiplies the value given by text field
  3. store the vallue in the variable defined above again
  4. display the variable
 */

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    // int result 
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        // color: Colors.red,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(20),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(
          "Currency Converter",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(2),
              // height: 400,
              // width: 200,
              // color: Colors.black, //background color
              child: const Text(
                '0',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter ammount in INR',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(
                    //same is suffix icon
                    Icons.monetization_on_outlined,
                  ),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),

            /*buttons are of two types:-
              1.raised-> like an actual button, elevated button
              2.appears like a text-->looks like a text but has a functionality of text, text button
            */

            Container(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () => {
                  //we are printing this is only in debug mode not able to print generally
                  if (kDebugMode)
                    {
                      print('Button Clicked'),
                    }
                },
                style: ElevatedButton.styleFrom(
                  elevation: 15,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(
                    double.infinity,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
