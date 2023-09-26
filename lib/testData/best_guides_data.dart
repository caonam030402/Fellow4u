class Guide {
  final String name;
  final String review;
  final String image;
  final String location;

  Guide(
      {required this.name,
      required this.review,
      required this.image,
      required this.location});
}

List<Guide> bestGuides = [
  Guide(
    name: "Cao Nam",
    review: "123",
    image: "assets/images/bestGuides/1.jpg",
    location: "Tokyo, Nhật Bản",
  ),
  Guide(
    name: "Quang Dat",
    review: "123",
    image: "assets/images/bestGuides/2.jpg",
    location: "Paris, Pháp",
  ),
  Guide(
    name: "Quoc Viet",
    review: "213",
    image: "assets/images/bestGuides/3.jpg",
    location: "Paris, Pháp",
  ),
  Guide(
    name: "Van Phuong",
    review: "123",
    image: "assets/images/bestGuides/4.jpg",
    location: "Paris, Pháp",
  ),
  // Thêm các hướng dẫn khác tại đây
];
