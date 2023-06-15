import 'package:cloud_firestore/cloud_firestore.dart';


FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getDatosI() async {

  List datosI = [];
CollectionReference CollectionReferenceDatosI = db.collection('users');
//cambiar proximamente
QuerySnapshot queryDatosI = await CollectionReferenceDatosI.get();
  
 queryDatosI.docs.forEach((documento) {
  datosI.add(documento.data());
  
 }); 
return datosI;
}





