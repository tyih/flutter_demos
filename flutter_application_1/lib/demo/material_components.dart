import 'package:flutter/material.dart';

class MaterialComponents extends StatelessWidget {
  const MaterialComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: const <Widget>[
          ListItem('FloatingActionButton', FloatingActionButtonDemo()),
          ListItem('ButtonDemo', ButtonDemo())
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  const ListItem(this.title, this.page, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  const FloatingActionButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      elevation: 0.0,
      backgroundColor: Colors.black,
      child: const Icon(Icons.add),
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      label: const Text('Add'),
      icon: const Icon(Icons.add),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButtonDemo'),
        elevation: 0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 80.0,
        ),
      ),
      // floatingActionButton: _floatingActionButtonExtended,
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget _textButtonDemo =
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.green),
            elevation: MaterialStateProperty.all(16.0)),
        child: Text(
          'Button',
          style: TextStyle(color: Theme.of(context).shadowColor),
        ),
      ),
      TextButton.icon(
          onPressed: () {}, icon: Icon(Icons.add), label: Text('AddButton'))
    ]);

    final Widget _elevatedButtonDemo =
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.green),
            elevation: MaterialStateProperty.all(12.0)),
        child: Text(
          'Button',
          style: TextStyle(color: Theme.of(context).shadowColor),
        ),
      ),
      SizedBox(
        width: 16.0,
      ),
      ElevatedButton.icon(
          onPressed: () {}, icon: Icon(Icons.add), label: Text('AddButton')),
    ]);

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[_textButtonDemo, _elevatedButtonDemo],
        ),
      ),
    );
  }
}
