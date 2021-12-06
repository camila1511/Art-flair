import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class photoUpload extends StatefulWidget {
  const photoUpload({Key? key}) : super(key: key);

  @override
  _photoUploadState createState() => _photoUploadState();
}

class _photoUploadState extends State<photoUpload> {
  var sampleImage;
  String _descrip = "";
  final formkey = GlobalKey<FormState>();
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        title: Text("Nuevo post"),
        centerTitle: true,
      ),
      body: Center(
        child:
            sampleImage == null ? Text("seleccionar imagen") : enableUpload(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: get_image,
        tooltip: "agregra foto",
        child: Icon(Icons.add_a_photo),
        backgroundColor: Colors.pink[800],
      ),
    );
  }

  Future get_image() async {
    var tempImage = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      sampleImage = File(tempImage!.path);
    });
  }

  Widget enableUpload() {
    return SingleChildScrollView(
        child: Container(
      child: Form(
        key: formkey,
        child: Column(
          children: <Widget>[
            Image.file(
              sampleImage,
              height: 300,
              width: 600,
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "descripción"),
              validator: (value) {
                return value!.isEmpty ? "valor no valido" : null;
              },
              onSaved: (value) {
                if (value!.isNotEmpty) {
                  _descrip = value;
                }
              },
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              elevation: 10,
              child: Text("add a new post"),
              textColor: Colors.white,
              color: Colors.pink,
              onPressed: validateSave,
            )
          ],
        ),
      ),
    ));
  }

  bool validateSave() {
    final form = formkey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
