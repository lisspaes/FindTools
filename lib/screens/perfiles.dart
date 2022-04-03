import 'package:flutter/material.dart';

class Perfiles {
  String nombre;
  double calificacion;
  String ubicacion;
  String descripcion;
  String imagenURL;

  Perfiles(
      {
    required this.nombre,
    required this.calificacion,
    required this.ubicacion,
    required this.descripcion,
    required this.imagenURL
  });
}

List<Perfiles> perfilesLista = [
  Perfiles(
      nombre: "Juan Sánchez",
      calificacion: 4.0,
      ubicacion: "San Francisco",
      descripcion: "Tengo 10 años trabajando en la contrucción, "
          "tomé un curso de Berel en Monterrey. Ahí aprendí cómo limpiar las"
          "superficies, mezclar bien los químicos y aplicar bien la pintura.",
    imagenURL: "https://www.lavanguardia.com/files/image_480_496/uploads/2021/01/11/5ffb8c66716ea.jpeg",
  ),
  Perfiles(
      nombre: "Melissa Mora",
      calificacion: 4.5,
      ubicacion: "San Francisco",
      descripcion: '''Pinturalite, con más de 15 años de experiencia en el área de recubrimientos, pintura, esmalte, epóxicos altos y bajos sólidos, epoxicos autonivelantes, poliuretanos, tenemos experiencia industrial, comercial, habitacional. Nuestra experiencia es amplia, pintamos desde una casa habitación hasta un edificio, algunos de nuestros clientes grupo Roma, CTU , Uach , Trw , emerson , gobierno del estado, gobierno municipal, LEAR, Ford .. entre muchos más''',
      imagenURL: "https://cdn.forbes.com.mx/2019/04/blackrrock-invertir-1-640x360.jpg",
  ),
  Perfiles(
      nombre: "Yoss Méndez",
      calificacion: 4.2,
      ubicacion: "San Francisco",
      descripcion: "Me interesa la satisfacción de mis clientes con mi trabajo,"
          "más de 5 años de experiencia me respaldan, contáctame.",
      imagenURL:"https://st.depositphotos.com/1269204/1219/i/950/depositphotos_12196477-stock-photo-smiling-men-isolated-on-the.jpg" ,
  ),

];



