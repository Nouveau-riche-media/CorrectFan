import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseAuth auth = FirebaseAuth.instance;
// FirebaseFirestore firebaseFirestore = FirebaseFirestore.instanceFor(app: app)
final Future<FirebaseApp> initialization = Firebase.initializeApp();