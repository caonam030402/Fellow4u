class Experience {
  final String name;
  final String avatar;
  final String image;
  final String location;

  Experience(
      {required this.name,
      required this.avatar,
      required this.image,
      required this.location});
}

List<Experience> topExperiences = [
  Experience(
    name: "Du lịch Đà Nẵng",
    avatar: "assets/images/bestGuides/5.jpg",
    image: "assets/images/topJouneys/6.jpg",
    location: "Đà Nẵng, Việt Nam",
  ),
  Experience(
    name: "Khám phá Machu Picchu",
    avatar: "assets/images/bestGuides/6.jpg",
    image: "assets/images/topJouneys/5.jpg",
    location: "Machu Picchu, Peru",
  ),
  Experience(
    name: "Khám phá Machu Picchu",
    avatar: "assets/images/bestGuides/6.jpg",
    image: "assets/images/topJouneys/5.jpg",
    location: "Machu Picchu, Peru",
  ),
];
