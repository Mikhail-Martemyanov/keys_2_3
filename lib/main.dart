import 'package:flutter/material.dart';




























class NavigatorKeys extends StatefulWidget {
  const NavigatorKeys({Key? key}) : super(key: key);

  @override
  _NavigatorKeysState createState() => _NavigatorKeysState();
}

class _NavigatorKeysState extends State<NavigatorKeys> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      //home: const MainScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstPage(),
        '/contacts': (context) => const TwoPage(),
      },
    );
  }
}

Widget navDrawer(context) => Drawer(
  child: ListView(padding: EdgeInsets.zero, children: [
    DrawerHeader(
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      child: Container(
        height: 200,
        child: Center(child: const Text('menu')),
      ),
    ),

    ListTile(
       leading: const Icon(Icons.one_k),
        title: const Text('Главная'),
    onTap: () {
         Navigator.pushNamed(context, '/');
        },
      ),
    ListTile(
        leading: const Icon(Icons.two_k),
        title: const Text('не главная'),
    onTap: () {
        Navigator.pushNamed(context, '/contacts');
              },
          ),

    const Divider(),


    ListTile(
      leading: const Icon(Icons.three_g_mobiledata),
      title: const Text('Выход'),
      onTap: () {},
    ),
]),
);



class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return Scaffold(
      appBar: AppBar(title: const Text('страница1'),
      actions: <Widget> [
        IconButton(onPressed: () {}, icon: const Icon(Icons.access_time)),
        TextButton(style: buttonStyle,
            onPressed: () {}, child: const Text('Текст кнопка')),

      ],
      ),
      drawer: navDrawer(context),
      body: const Center(child: Text('Главная страница'),
      )
    );
  }
}

//не главная страница

class TwoPage extends StatelessWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('страница2')),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('не главная'),
        )
    );
  }
}

////////////////////////////////////////


void main() {
  runApp(const NavigatorKeys());
}