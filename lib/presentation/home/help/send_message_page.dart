import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:taxidriver/messages/application/message_event.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/providers/message_provider.dart';

class SendMessagePage extends HookConsumerWidget {
  SendMessagePage({Key? key}) : super(key: key);

  final helpForm = FormGroup(
    {
      'subject': FormControl<String>(validators: [
        Validators.required,
      ]),
      'message': FormControl<String>(
        validators: [
          Validators.required,
          Validators.maxLength(300),
        ],
      ),
    },
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageController = ref.watch(messageProvider.notifier);
    final messageState = ref.watch(messageProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: false,
        title: Text(
          "Envoyez-nous un message",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 20,
            ),
            ReactiveForm(
              formGroup: helpForm,
              child: Column(
                children: [
                  ReactiveTextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: "Sujet",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    formControlName: 'subject',
                    validationMessages: (control) => {
                      'required': "L'objet du message ne peut pas être vide",
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ReactiveTextField(
                    minLines: 12,
                    maxLines: 12,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: "Message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    formControlName: 'message',
                    validationMessages: (control) => {
                      'required': "Message ne peut pas être vide",
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.grey.shade800,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.image),
                                    color: Colors.white,
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.video_camera_front),
                                    color: Colors.white,
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.document_scanner),
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AJOUTER UN FICHIER"),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.file_copy),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: SubmitButton(
                  onPressed: () {
                    final message = helpForm.value['message'] as String?;
                    final subject = helpForm.value['subject'] as String?;

                    if (message != null && subject != null) {
                      messageController.mapEventToState(
                        MessageEvent.messageSent(
                          message,
                          subject,
                          'attachment',
                        ),
                      );
                    }
                  },
                  text: "ENVOYER"),
            ),
          ],
        ),
      ),
    );
  }
}
