import 'package:api_con_listas/pages/estudiante.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Info> _estudiantes = [
    Info("18760440", "Kevin Mata Araujo", "Ingenieria en Sistemas Computacionales", "Octavo", "6461970554", "al18760440@ite.edu.mx"),
    Info("18663695","Jorge Garcia Serrano", "Ingenieria en Sistemas Computacionales", "Segundo ", "6461235898", "al18663695@ite.edu.mx"),
    Info("18663568","Rogelio Estrada Romero", "Ingenieria en Mecatronica", "Tercero", "6465647898", "al18663568@ite.edu.mx"),
    Info("18766505","Benito Juarez Lopez", "Administracion de empresas", "Cuarto", "646215678", "al18766505@ite.edu.mx"),
    Info("18767898","Martin Javier Urquidy", "Ingenieria en Electronica", "Segundo", "6464563212", "al18767898@ite.edu.mx"),
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('Estudiantes'),

    
      ),

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/fondo1.jpg'),
                      fit: BoxFit.cover)), ),
          ListView.builder(
          itemCount: _estudiantes.length,
          
          itemBuilder: ( context, index) {
          return ListTile(
            onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Estudiante(
                  _estudiantes[index].matricula,
                  _estudiantes[index].nombre,
                  _estudiantes[index].carrera,
                  _estudiantes[index].semestre,
                  _estudiantes[index].telefono,
                  _estudiantes[index].correo,
                
                )
                
                ),
              );
      
            },
            title: Text(_estudiantes[index].nombre),
            subtitle: Text(_estudiantes[index].carrera),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 233, 168, 211),
              
              child: Text(_estudiantes[index].nombre.substring(0,1),style: const TextStyle(color: Colors.black),), 
              ),
              trailing: const Icon(Icons.arrow_right_outlined),
          );
      
          } 
          )
        
        ],
      ),
    );
  }
}

class Info {
   String matricula;
   String nombre;
   String carrera;
   String semestre;
   String telefono;
   String correo;

  Info(this.matricula, this.nombre, this.carrera, this.semestre, this.telefono, this.correo);
}
