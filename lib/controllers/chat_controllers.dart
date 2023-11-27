// chat_controller.dart
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:us_mobile/models/chat_model.dart';

class ChatController extends GetxController {
  var chatList = <ChatMessage>[].obs;
  final ImagePicker _picker = ImagePicker();

  void sendMessage(ChatMessage message) {
    chatList.add(message);
  }

  Future<String?> _uploadImage(String imagePath) async {
    // Di sini, Anda biasanya akan mengunggah gambar ke server
    // Namun, untuk tujuan contoh, kita akan kembalikan path gambar yang dipilih
    return imagePath;
  }

  Future<String?> pickImageFromGallery() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        return pickedFile.path; // Kembalikan path gambar yang dipilih
      } else {
        print('No image selected');
        return null;
      }
    } catch (e) {
      print('Error picking image: $e');
      return null;
    }
  }

  void sendImage(String imagePath) {
    _uploadImage(imagePath).then((imageUrl) {
      if (imageUrl != null) {
        ChatMessage newMessage = ChatMessage(
          time: DateTime.now(),
          isMe: true,
          imageUrl: imageUrl,
        );
        sendMessage(newMessage);
      }
    });
  }
}
