import 'package:flutter/material.dart';
import 'package:my_app/models/execercicio_model.dart';
import 'package:my_app/models/sentimento_model.dart';

class Tela extends StatelessWidget {
  Tela({super.key});

  final ExercicioModel exercicioModel = ExercicioModel(
      id: "Exercicio 001",
      nome: "Remada baixa",
      treino: 'A',
      comoFazer: "Segura a barra e puxa");

  final List<SentimentoModel> listaSentimentos = [
    SentimentoModel(id: "001", sentindo: "pouco sentimento", data: "2024-06-04"),
    SentimentoModel(id: "002", sentindo: "gigante", data: "2024-06-04")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
      title: Text("${exercicioModel.nome} - ${exercicioModel.treino}"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('foi clicado');
          },
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Enviar Foto"),
              ),
              const Text(
                'Como fazer?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(exercicioModel.comoFazer),
              const Divider(),
              const Text(
                'Como estou me sentindo?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(listaSentimentos.length, (index){
                  SentimentoModel sentimentoAgora = listaSentimentos[index];
                  return Text(sentimentoAgora.sentindo);
                }),
              )
            ],
          ),
        ));
  }
}
