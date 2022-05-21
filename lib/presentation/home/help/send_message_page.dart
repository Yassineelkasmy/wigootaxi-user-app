import 'package:auto_route/auto_route.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:taxidriver/application/providers/auth/auth_providers.dart';
import 'package:taxidriver/messages/application/message_event.dart';
import 'package:taxidriver/messages/application/message_state.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
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
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final isLoading = useState(false);
    final url = useState<String?>('');

    final imageFile = useState<XFile?>(null);
    ref.listen<MessageState>(messageProvider, (previous, next) {
      if (next.sent) {
        AutoRouter.of(context).push(MessageSentPageRoute());
      }
    });
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
                                    onPressed: () async {
                                      isLoading.value = true;

                                      imageFile.value = await _picker.pickImage(
                                        source: ImageSource.gallery,
                                      );

                                      Navigator.of(context).pop();

                                      if (imageFile.value != null) {
                                        final bytes = await imageFile.value!
                                            .readAsBytes();

                                        final reference = FirebaseStorage
                                            .instance
                                            .ref()
                                            .child('leagues')
                                            .child(imageFile.value!.path
                                                .split('/')
                                                .last);
                                        isLoading.value = true;

                                        final _ref = await reference.putData(
                                          bytes,
                                          SettableMetadata(
                                              contentType: 'image/jpeg'),
                                        );

                                        url.value =
                                            await _ref.ref.getDownloadURL();
                                        print(url.value);
                                      }

                                      isLoading.value = false;
                                    },
                                    icon: Icon(Icons.image),
                                    color: Colors.white,
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      imageFile.value = await _picker.pickImage(
                                        source: ImageSource.camera,
                                      );

                                      if (imageFile.value != null) {
                                        final bytes = await imageFile.value!
                                            .readAsBytes();

                                        final reference = FirebaseStorage
                                            .instance
                                            .ref()
                                            .child('leagues')
                                            .child(imageFile.value!.path
                                                .split('/')
                                                .last);
                                        isLoading.value = true;

                                        final _ref = await reference.putData(
                                          bytes,
                                          SettableMetadata(
                                              contentType: 'image/jpeg'),
                                        );

                                        url.value =
                                            await _ref.ref.getDownloadURL();
                                        print(url.value);
                                      }

                                      Navigator.of(context).pop();
                                    },
                                    icon: Icon(Icons.camera_alt),
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
                        if (isLoading.value)
                          CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        if (!isLoading.value)
                          Text(
                            url.value == ''
                                ? "AJOUTER UN FICHIER"
                                : 'IMAGE AJOUTÉE',
                          ),
                        SizedBox(
                          width: 10,
                        ),
                        if (!isLoading.value)
                          Icon(
                            imageFile.value == null
                                ? Icons.file_copy
                                : Icons.edit,
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: SubmitButton(
                  isLoading: messageState.isLoading,
                  onPressed: () {
                    final message = helpForm.value['message'] as String?;
                    final subject = helpForm.value['subject'] as String?;

                    if (message != null &&
                        subject != null &&
                        url.value != null) {
                      messageController.mapEventToState(
                        MessageEvent.messageSent(
                          message,
                          subject,
                          url.value!,
                          user!,
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
