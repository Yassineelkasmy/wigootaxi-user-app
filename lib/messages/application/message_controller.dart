import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/messages/application/message_event.dart';
import 'package:taxidriver/messages/application/message_state.dart';
import 'package:taxidriver/messages/services/message_service.dart';

class MessageController extends StateNotifier<MessageState> {
  MessageController() : super(MessageState.initial());

  final messageService = MessageService();

  Future mapEventToState(MessageEvent event) {
    return event.map(
      messageSent: (event) async {},
    );
  }
}
