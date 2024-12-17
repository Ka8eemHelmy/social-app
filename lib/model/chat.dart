class Chat {
  final String name;
  final String image;
  final bool isOnline;
  final String message;
  final String date;

  Chat({
    required this.isOnline,
    required this.image,
    required this.message,
    required this.name,
    required this.date,
  });
}

List<Chat> chats = [
  Chat(
    isOnline: true,
    image:
        'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
    message: 'Hello',
    name: 'Kareem',
    date: '11:34 PM',
  ),
  Chat(
    isOnline: true,
    image:
    'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
    message: 'Welcome To Flutter',
    name: 'Loay',
    date: '12:00 AM',
  ),
  Chat(
    isOnline: !true,
    image:
    'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
    message: 'How Are You',
    name: 'Mohammed',
    date: '02:40 AM',
  ),
  Chat(
    isOnline: true,
    image:
    'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
    message: 'Welcome Brother',
    name: 'Youssef',
    date: '03:45 AM',
  ),
];
