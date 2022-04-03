
import 'package:flutter/material.dart';
class Resenas {
  String nombre;
  int calificacion;
  String fecha;
  String descripcion;
  String imagenURL;

  Resenas(
      {
        required this.nombre,
        required this.calificacion,
        required this.fecha,
        required this.descripcion,
        required this.imagenURL
      });
}

List<Resenas> resenasLista = [
  Resenas(
    nombre: "Marta",
    calificacion: 4,
    fecha: "21 de marzo de 2022",
    descripcion: "Excelente trabajo, quedé satisfecha con el resultado, mi única queja es la demora del personal en llegar a la cita.",
    imagenURL: "https://www.nicepng.com/png/detail/58-582607_cute-cat-png-transparent-image-imagenes-de-gatos.png",
  ),
  Resenas(
    nombre: "Josue",
    calificacion: 3,
    fecha: "14 de marzo de 2022",
    descripcion: '''Esperaba mejores resultados, creo que no volvería a contratar sus servicios, unas partes se ven parchadas en la pintura''',
    imagenURL: "https://emtstatic.com/2017/07/iStock-587923496-696x465.jpg",
  ),
  Resenas(
    nombre: "Mirna",
    calificacion: 4,
    fecha: "10 de marzo de 2022",
    descripcion: '''Lo recomiendo, buen servicio.
    Rápido y confiable.''',
    imagenURL:"https://rromanipativ.info/wp-content/uploads/2018/06/Se%C3%B1ora-Milton.jpg" ,
  ),
  Resenas(
    nombre: "Mirna",
    calificacion: 4,
    fecha: "10 de marzo de 2022",
    descripcion: '''Lo recomiendo, buen servicio.
    Rápido y confiable.''',
    imagenURL:"https://rromanipativ.info/wp-content/uploads/2018/06/Se%C3%B1ora-Milton.jpg" ,
  ),
  Resenas(
    nombre: "Mirna",
    calificacion: 4,
    fecha: "10 de marzo de 2022",
    descripcion: '''Lo recomiendo, buen servicio.
    Rápido y confiable.''',
    imagenURL:"https://rromanipativ.info/wp-content/uploads/2018/06/Se%C3%B1ora-Milton.jpg" ,
  ),
  Resenas(
    nombre: "Mirna",
    calificacion: 4,
    fecha: "10 de marzo de 2022",
    descripcion: '''Lo recomiendo, buen servicio.
    Rápido y confiable.''',
    imagenURL:"https://rromanipativ.info/wp-content/uploads/2018/06/Se%C3%B1ora-Milton.jpg" ,
  ),

];



