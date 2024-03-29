enum ChatType {
  user,
  system,
}

class ChatModel {
  ChatType? chatType;
  String? text;

  ChatModel({this.chatType, this.text});
}
