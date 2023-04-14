import 'package:flutter/material.dart';
import 'package:portfolio_app/app/screens/home/teste.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // Define um gradiente de cores como plano de fundo
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4527A0), Color(0xFF6A1B9A)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Scaffold(
          backgroundColor: Colors.transparent,
          // Define uma barra superior personalizada
          appBar: MyAppBar(),
          // Define o corpo da tela com informações pessoais
          body: MyBody(),
        ),
      ),
    );
  }
}

// Define a barra superior personalizada
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  // Cria e retorna a barra superior personalizada
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      // Define um ícone para abrir o menu lateral
      leading: Padding(
        padding: const EdgeInsets.only(left: 17),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.view_headline_outlined, color: Colors.white),
        ),
      ),
    );
  }

  // Define o tamanho preferido da barra superior
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// Define o corpo da tela com informações pessoais
class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Adiciona um espaçamento nas bordas da tela
      padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
      child: Stack(
        children: [
          // Define uma caixa de cor vermelha do lado direito da tela
          Positioned(
            right: 0,
            child: Container(
              color: Colors.red,
              height: 500,
              width: 200,
            ),
          ),
          // Define as informações pessoais do lado esquerdo da tela
          Positioned(
            left: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(),
                MyDivider(),
                MySocialButtons(),
                MyWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyText extends StatefulWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Vitor\nReis.",
      style: TextStyle(
        color: Colors.white,
        fontSize: 80,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 70,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Color(0xFFCE93D8)],
          begin: Alignment.centerLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}

class MySocialButtons extends StatelessWidget {
  const MySocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Image.network(
              'https://cdn-icons-png.flaticon.com/512/174/174857.png'),
          onPressed: () {
            // Implementação do botão LinkedIn
          },
        ),
        IconButton(
          icon: Image.network(
              'https://cdn-icons-png.flaticon.com/512/2111/2111377.png'),
          onPressed: () {
            // Implementação do botão GitHub
          },
        ),
        IconButton(
          icon: Image.network(
              'https://cdn-icons-png.flaticon.com/512/174/174855.png'),
          onPressed: () {
            // Implementação do botão Instagram
          },
        ),
      ],
    );
  }
}
