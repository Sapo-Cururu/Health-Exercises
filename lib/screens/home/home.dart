import 'package:flutter/material.dart';
import 'package:health_exercises/screens/home/components/cards.dart';
class Home extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        items: const [
          BottomNavigationBarItem(
            label: "Dicas de Alimentação",
            icon: Icon(
              Icons.restaurant, 
              ),
              ),
          BottomNavigationBarItem(
            label: "Dicas de Exercício",
            icon: Icon(
              Icons.fitness_center_outlined,)
              ),
          BottomNavigationBarItem(
            label: "Dicas de Saúde",
            icon: Icon(
              Icons.monitor_heart_outlined,)
              ),
        ],
        ),
    body: Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              MyCard(text: "Pratos para Pré Treino", image_path: "assets/images/logo.jpg",),
          ],
          ),
        ],
        ),
    ),    
    );
  }
}