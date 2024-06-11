import 'package:changapp/shared/custom_container_widget.dart';
import 'package:flutter/material.dart';

class ProvinceDropdown extends StatefulWidget {
  const ProvinceDropdown({super.key});

  @override
  ProvinceDropdownState createState() => ProvinceDropdownState();
}

class ProvinceDropdownState extends State<ProvinceDropdown> {
  String? _selectedProvince;

  final List<String> provinciasDeArgentina = [
    'Buenos Aires',
    'Catamarca',
    'Chaco',
    'Chubut',
    'Córdoba',
    'Corrientes',
    'Entre Ríos',
    'Formosa',
    'Jujuy',
    'La Pampa',
    'La Rioja',
    'Mendoza',
    'Misiones',
    'Neuquén',
    'Río Negro',
    'Salta',
    'San Juan',
    'San Luis',
    'Santa Cruz',
    'Santa Fe',
    'Santiago del Estero',
    'Tierra del Fuego',
    'Tucumán'
  ];

  @override
  Widget build(BuildContext context) {
    // Calcula el ancho máximo basado en la palabra más larga
    double maxWidth = _calculateMaxWidth(context, provinciasDeArgentina);

    // ignore: sized_box_for_whitespace
    return CustomContainer(
      width: maxWidth + 110, // Añade un margen para el icono y el padding
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          hintText: 'Provincia:',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Color(0xFFffae50))),
        ),
        value: _selectedProvince,
        onChanged: (String? newValue) {
          setState(() {
            _selectedProvince = newValue;
          });
        },
        items:
            provinciasDeArgentina.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(
              children: [
                const Icon(Icons.location_on, color: Color(0xFFffae50)),
                const SizedBox(width: 3), // Espacio entre el icono y el texto
                Text(value),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  double _calculateMaxWidth(BuildContext context, List<String> items) {
    double maxWidth = 0;
    TextStyle textStyle = Theme.of(context).textTheme.subtitle1!;

    for (String item in items) {
      final TextPainter textPainter = TextPainter(
        text: TextSpan(text: item, style: textStyle),
        maxLines: 1,
        textDirection: TextDirection.ltr,
      )..layout(minWidth: 0, maxWidth: double.infinity);
      maxWidth =
          textPainter.size.width > maxWidth ? textPainter.size.width : maxWidth;
    }

    return maxWidth;
  }
}
