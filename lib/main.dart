import 'package:flutter/material.dart';
import 'package:widget_textfield/src/text_field_outlined_icon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  TextEditingController controller = TextEditingController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget TextField"),
        ),
        body: homeBody(),
      ),
    );
  }

  Center homeBody() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        child: Column(
          children: [
            TextFieldOutlinedIcon(
              controller: controller,
              outlineBorder: Colors.orange,
              borderWidth: BorderWidth.all(5),
              childAsset: Icon(
                Icons.qr_code,
              ),
              obsecureChar: "*",
              isObsecure: false,
              functionChildAsset: () {
                print("kliiik");
              },
            ),
            ElevatedButton(
                onPressed: () {
                  print("Show ${controller.text}}");
                },
                child: const Text("show")),
          ],
        ),
      ),
    );
  }
}
