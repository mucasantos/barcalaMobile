import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final List<int> minhaListaNomes = [];

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        controller: myController,
      ),
      const SizedBox(height: 30),
      ElevatedButton(
          child: const Text('Adicionar'),
          onPressed: () {
            minhaListaNomes.add(int.parse(myController.text));
            print(minhaListaNomes);
          }),
      const SizedBox(height: 30),
      ElevatedButton(
          child: const Text('Média'),
          onPressed: () {
            //Calculo de média
            int soma = 0;
            for (int indice = 0; indice < minhaListaNomes.length; indice++) {
              soma = soma + minhaListaNomes[indice];
            }
            print(soma / minhaListaNomes.length);
          }),
      const SizedBox(height: 30),
      ElevatedButton(
          child: const Text('Par e Ímpar'),
          onPressed: () {
            //Calculo de média
            
            List pares = [];
            List impares = [];

            for (int indice = 0; indice < minhaListaNomes.length; indice++) {
            
              if (minhaListaNomes[indice] % 2 == 0){
                pares.add(minhaListaNomes[indice]);
              }else {
                impares.add(minhaListaNomes[indice]);
              }
           }
            print(impares);
            print(pares);
          }),
    ]);
  }
}
