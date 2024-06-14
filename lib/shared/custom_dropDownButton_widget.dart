import 'package:changapp/shared/custom_container_widget.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String dropdownValue = 'One';
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: CustomContainer(
        width: 550, // Define el ancho según tus necesidades
        height: 45, // Define el alto según tus necesidades
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [BoxShadow(blurRadius: 3.5, color: Colors.grey)],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black87)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: DropdownButton<String>(
            icon: const Icon(Icons.arrow_drop_down),
            borderRadius: BorderRadius.circular(20),
            value: dropdownValue,
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() {
                  dropdownValue = newValue;
                });
              }
            },
            onTap: () {
              print("hola mundo");
            },
            items: <String>['One', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          right: 3), // Espacio entre el icono y el texto
                      child: Icon(Icons.star), // Icono adicional al inicio
                    ),
                    Text(value),
                  ],
                ),
              );
            }).toList(),
            underline: SizedBox(), // Eliminar subrayado predeterminado
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('DropdownButton Demo')),
      body: Center(child: CustomDropDownButton()),
    ),
  ));
}
