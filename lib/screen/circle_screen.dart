import 'package:batch_32a/model/area_model.dart';
import 'package:flutter/material.dart';

class CircleScreen extends StatefulWidget {
  const CircleScreen({super.key});

  @override
  State<CircleScreen> createState() => _CircleScreenState();
}

class _CircleScreenState extends State<CircleScreen> {
  double? radius;
  double areaOfCircle = 0;

  final key = GlobalKey<FormState>();

  AreaModel? areaModel;

  var gap = const SizedBox(height: 8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Form(
        key: key,
        child: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                onChanged: (value) {
                  radius = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter radius',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter radius";
                  }
                  return null;
                },
              ),
              gap,
              ElevatedButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    areaModel = AreaModel(radius: radius!);
                    setState(() {
                      areaOfCircle = areaModel!.calculateAreaOfCircle();
                    });
                  }
                },
                child: const Text('Caluclate Area'),
              ),
              gap,
              Container(
                color: Colors.amber,
                width: 500,
                child: Text(
                  'Area of circle is : $areaOfCircle',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  text: 'Area',
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.yellow,
                  ),
                  children: [
                    TextSpan(
                      text: 'of Circle is $areaOfCircle',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'of Circle is $areaOfCircle',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
