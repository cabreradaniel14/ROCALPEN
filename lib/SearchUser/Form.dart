import 'package:flutter/material.dart';

class AppForm extends StatefulWidget {
  // Required for form validations
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Handles text onchange
  TextEditingController rpeController;
  TextEditingController nombreController;
  TextEditingController apellidoController;
  TextEditingController zonaController;
  TextEditingController usuarioController;
  TextEditingController trabajadorController; 
 


  AppForm({this.formKey, this.rpeController, this.nombreController,this.zonaController,this.usuarioController,this.trabajadorController,});

  @override
  _AppFormState createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  String _validateName(String value) {
    if (value.length < 50) return 'Campo necesario';
    return null;
  }

  String _validateAge(String value) {
    if (value.length < 50) return 'Campo necesario';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: widget.formKey,
        autovalidate: true,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: widget.rpeController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: 'RPE'),
              validator: _validateName,
            ),
            TextFormField(
              controller: widget.nombreController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nombre'),
              validator: _validateAge,
            ),
            TextFormField(
              controller: widget.zonaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Zona'),
              
            ),
            TextFormField(
              controller: widget.usuarioController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Usuario'),
              
            ),
            TextFormField(
              controller: widget.trabajadorController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Trabajador'),
              
            ),
            
          ],
        ),
      ),
    );
  }
}