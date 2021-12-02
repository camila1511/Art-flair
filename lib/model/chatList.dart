class ChatList {
  final String name, image, time;
  final bool isActive;

  ChatList({
    this.name = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  ChatList(
    name: "Jenny Wilson",
    image: "assets/images/user.png",
    time: "3m ago",
  ),
  ChatList(
    name: "Esther Howard",
    image: "assets/images/user_2.png",
    time: "8m ago",
    isActive: true,
  ),
  ChatList(
    name: "Ralph Edwards",
    image: "assets/images/user_3.png",
    time: "5d ago",
    isActive: false,
  ),
  ChatList(
    name: "Jacob Jones",
    image: "assets/images/user_4.png",
    time: "5d ago",
    isActive: true,
  ),
];
