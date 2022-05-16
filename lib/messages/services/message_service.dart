import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:taxidriver/messages/domain/message.dart';
import 'package:taxidriver/messages/failure/firestore_failure.dart';

class MessageService {
  Future<Either<FireStoreFailure, Unit>> sendMessage(Message message) async {
    try {
      await FirebaseFirestore.instance.collection('messages').doc().set({
        'message': message.text,
        'subject': message.subject,
        'attachment': message.attachment,
      });
      return right(unit);
    } catch (e) {
      return left(FireStoreFailure.serverError());
    }
  }
}
