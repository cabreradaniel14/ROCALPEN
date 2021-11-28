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
  TextEditingController camisolaController;
  TextEditingController pantalonController;
  TextEditingController largoController;
  TextEditingController tipobotaController;
  TextEditingController tallabotaController;
  TextEditingController observController;
String mySelection; 
List<Map> _myJson = [{"id":0,"largo":"26"},{"id":1, "largo":"27"},{"id":3, "largo": "28"},{"id":4, "largo": "29"},{"id":5, "largo": "30"},{"id":6, "largo": "31"},{"id":7, "largo": "32"},{"id":8, "largo": "33"},{"id":9, "largo": "34"},{"id":10, "largo": "35"},{"id":11, "largo": "37"},{"id":12, "largo": "38"},{"id":13, "largo": "39"},{"id":14, "largo": "40"},];

  
  AppForm({this.formKey, this.rpeController, this.nombreController,this.zonaController,this.departamentoController,this.categoriaController,this.camisolaController,this.pantalonController,this.largoController,this.tipobotaController,this.tallabotaController,this.observController});

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
              controller: widget.categoriaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Categoría'),
              
            ),
            TextFormField(
              controller: widget.departamentoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Departamento'),
              
            ),
            TextFormField(
              controller: widget.camisolaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Camisola'),
              
            ),
            TextFormField(
              controller: widget.pantalonController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Pantalón'),
              
            ),
           
             TextFormField(
              controller: widget.tipobotaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Tipo Bota'),
              
            ),
            TextFormField(
              controller: widget.tallabotaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Talla Bota'),
              
            ),
            TextFormField(
              controller: widget.observController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Observaciones'),
              
            ),
          ],
        ),
      ),
    );
  }
}