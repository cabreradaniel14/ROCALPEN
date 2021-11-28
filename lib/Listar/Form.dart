import 'package:flutter/material.dart';

class AppForm extends StatefulWidget {
  // Required for form validations
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Handles text onchange
  TextEditingController rpeController;
  TextEditingController nombreController;
  TextEditingController zonaController;
  TextEditingController departamentoController;
  TextEditingController categoriaController;
  TextEditingController camisaController;
  TextEditingController pantalonController;
  TextEditingController largoController;
  TextEditingController observController;


  AppForm({this.formKey, this.rpeController, this.nombreController,this.zonaController,this.departamentoController,this.categoriaController,this.camisaController,this.pantalonController,this.largoController,this.observController, TextEditingController tipobotaController, TextEditingController tallabotaController});

  @override
  _AppFormState createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  String _validateName(String value) {
    if (value.length < 3) return 'Name must be more than 2 charater';
    return null;
  }

  String _validateAge(String value) {
    Pattern pattern = r'(?<=\s|^)\d+(?=\s|$)';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) return 'Age must be a number';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      autovalidate: true,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: widget.rpeController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(labelText: 'Name'),
            validator: _validateName,
          ),
          TextFormField(
            controller: widget.nombreController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Age'),
            validator: _validateAge,
          ),
          TextFormField(
            controller: widget.zonaController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Age'),
            
          ),
          TextFormField(
            controller: widget.categoriaController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Age'),
            
          ),
          TextFormField(
            controller: widget.departamentoController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Age'),
            
          ),
          TextFormField(
            controller: widget.camisaController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Age'),
            
          ),
          TextFormField(
            controller: widget.pantalonController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Age'),
            
          ),
          TextFormField(
            controller: widget.largoController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Age'),
            
          ),
          TextFormField(
            controller: widget.observController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Age'),
            
          ),
        ],
      ),
    );
  }
}