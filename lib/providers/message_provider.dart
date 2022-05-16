import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/messages/application/message_controller.dart';
import 'package:taxidriver/messages/application/message_state.dart';

final messageProvider = StateNotifierProvider<MessageController, MessageState>(
  (ref) {
    final messageController = MessageController();
    return messageController;
  },
);
