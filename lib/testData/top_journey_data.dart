class TopJourney {
  int like;
  String name;
  int day;
  String image;
  double price;
  String date;

  TopJourney(
      {required this.like,
      required this.name,
      required this.day,
      required this.price,
      required this.date,
      required this.image});
}

List<TopJourney> topJourneys = [
  TopJourney(
    like: 121,
    name: "Chua Linh Ung - Da Nang",
    day: 5,
    price: 520.0,
    date: "2023-09-30",
    image: "assets/images/topJouneys/1.jpg", // Đường dẫn đến tệp hình ảnh
  ),
  TopJourney(
    like: 120,
    name: "Da Nang - Ba Na - Hoi An",
    day: 5,
    price: 500.0,
    date: "2023-09-30",
    image: "assets/images/topJouneys/2.jpg", // Đường dẫn đến tệp hình ảnh
  ),
  TopJourney(
    like: 12,
    name: "Melbourne - Sydney",
    day: 7,
    price: 750.0,
    date: "2023-10-11",
    image: "assets/images/topJouneys/3.jpg", // Đường dẫn đến tệp hình ảnh
  ),
  TopJourney(
    like: 82,
    name: "Hanoi - Ha Long Bay",
    day: 7,
    price: 750.0,
    date: "2023-10-13",
    image: "assets/images/topJouneys/4.jpg", // Đường dẫn đến tệp hình ảnh
  ),
  TopJourney(
    like: 100,
    name: "My Khue - Da Nang",
    day: 6,
    price: 150,
    date: "2023-10-14",
    image: "assets/images/topJouneys/5.jpg", // Đường dẫn đến tệp hình ảnh
  ),
  TopJourney(
    like: 45,
    name: "Gia Lai - VietNam",
    day: 4,
    price: 200,
    date: "2023-10-15",
    image: "assets/images/topJouneys/6.jpg", // Đường dẫn đến tệp hình ảnh
  ),

  // Thêm các mục khác tương tự ở đây
];
