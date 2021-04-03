import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:states/controller.dart';

class MyHomePage extends StatelessWidget {
  Controller controller = Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Observer(builder: (_) {
            //   // reação
            //   return Text(
            //     'Você clicou ${controller.counter} vezes',
            //     style: Theme.of(context).textTheme.headline4,
            //   );
            // })
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
              onChanged: controller.mudarNome,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Sobrenome'),
              onChanged: controller.mudarSobrenome,
            ),
            SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) {
                return Text('${controller.nomeCompleto}');
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: controller.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
