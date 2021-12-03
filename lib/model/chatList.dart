class ChatList {
  final String name, image, time, notiCount;
  final bool isActive;

  ChatList({
    this.name = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
    this.notiCount = '',
  });
}

List chatsData = [
  ChatList(
    name: "Jenny Wilson",
    image: "assets/images/user.png",
    time: "3m ago",
    isActive: true,
    notiCount: '2',
  ),
  ChatList(
    name: "Esther Howard",
    image: "assets/images/user_2.png",
    time: "8m ago",
    isActive: true,
    notiCount: '4',
  ),
  ChatList(
    name: "Ralph Edwards",
    image: "assets/images/user_3.png",
    time: "5d ago",
    isActive: false,
    notiCount: '0',
  ),
  ChatList(
    name: "Jacob Jones",
    image: "assets/images/user_4.png",
    time: "5d ago",
    isActive: true,
    notiCount: '0',
  ),
  ChatList(
    name: "Alfredo ramos",
    image: "assets/images/user.png",
    time: "5d ago",
    isActive: true,
    notiCount: '0',
  ),
];
