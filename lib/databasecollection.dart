import 'package:cloud_firestore/cloud_firestore.dart';

create(String collectionName, DocName, petName, body, int age) async {
  await FirebaseFirestore.instance.collection(collectionName).doc(DocName).set({
    'name': petName,
    'body': body,
    'age': age,
  });
  print("Database updated!!!!!");
}

update(String collectionName, DocName, field, var NewField) async {
  await FirebaseFirestore.instance
      .collection(collectionName)
      .doc(DocName)
      .update({field: NewField});
  print("Update successfully database!!");
}

Delete(String collectionName, DocName) async {
  await FirebaseFirestore.instance
      .collection(collectionName)
      .doc(DocName)
      .delete();
  print("Document deleted successfully!!!!");
}
