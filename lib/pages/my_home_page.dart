import 'package:bloc_state_management_demo/bloc/number_bloc.dart';
import 'package:bloc_state_management_demo/widgets/my_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController numberTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.cyan.shade300,
          title: const Text(
            "Bloc State Management",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          )),
      body: Container(
          margin: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                FirstView(),
                SizedBox(
                  height: 20,
                ),
                SecondView(),
                SizedBox(
                  height: 20,
                ),
                ThirdView(),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: numberTextEditingController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 2),
                      )),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan.shade300,
                        shape: (RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {
                      context.read<NumberBloc>().add(TakeNumberEvent(
                          number: numberTextEditingController.text));
                    },
                    child: const Text(
                      'Tap',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
          )),
    );
  }
}
