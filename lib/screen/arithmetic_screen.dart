import 'package:batch_32a/model/arithmetic_model.dart';
import 'package:flutter/material.dart';
//POJO

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
// Delcare variables
  int? first;
  int? second;
  int result = 0;

  //Relationship
  // Loosley coupled
  ArithemticModel? arithemticModel;

  // Create global key for form
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              onChanged: (value) {
                first = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter First No',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter First no";
                }
                return null;
              },
            ),
            const SizedBox(height: 8),
            TextFormField(
              onChanged: (value) {
                second = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Second No',
              ),
            ),
            const SizedBox(height: 8),
            // Button
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  // Validate cha bhane balla code execute gara
                  setState(
                    () {
                      arithemticModel = ArithemticModel(
                        first: first!,
                        second: second!,
                      );
                      result = arithemticModel!.add();
                    },
                  );
                }
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  // Validate cha bhane balla code execute gara
                  setState(
                    () {
                      arithemticModel = ArithemticModel(
                        first: first!,
                        second: second!,
                      );
                      result = arithemticModel!.add();
                    },
                  );
                }
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  // Validate cha bhane balla code execute gara
                  setState(
                    () {
                      arithemticModel = ArithemticModel(
                        first: first!,
                        second: second!,
                      );
                      result = arithemticModel!.add();
                    },
                  );
                }
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  // Validate cha bhane balla code execute gara
                  setState(
                    () {
                      arithemticModel = ArithemticModel(
                        first: first!,
                        second: second!,
                      );
                      result = arithemticModel!.add();
                    },
                  );
                }
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Display informatuion
            Text(
              'Sum is : $result',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
