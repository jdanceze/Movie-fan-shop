class Movie {
  final int price;
  final String id, title, image;
  bool isSelected;
  Movie({this.id, this.price, this.title, this.image, this.isSelected});
}

List<Movie> Movies = [
  Movie(
    id: '1',
    price: 300,
    title: "Skyfall",
    image: "./assets/images/Skyfall.jpg",
    isSelected: false,
  ),
  Movie(
    id: '2',
    price: 350,
    title: "Specter",
    image: "assets/images/Spector.jpg",
    isSelected: false,
  ),
  Movie(
    id: '3',
    price: 120,
    title: "Casino",
    image: "assets/images/Casino.jpg",
    isSelected: false,
  ),
  Movie(
    id: '4',
    price: 500,
    title: "Goldfinger",
    image: "assets/images/Goldfinger.jpg",
    isSelected: false,
  ),
  Movie(
    id: '5',
    price: 1250,
    title: "Spiderman",
    image: "assets/images/Spiderman.jpg",
    isSelected: false,
  ),
  Movie(
    id: '6',
    price: 2500,
    title: "Superman",
    image: "assets/images/Superman.jpg",
    isSelected: false,
  ),
  Movie(
    id: '7',
    price: 720,
    title: "Batman",
    image: "assets/images/Batman.jpg",
    isSelected: false,
  ),
  Movie(
    id: '8',
    price: 199,
    title: "WW",
    image: "assets/images/Wonderwoman.jpg",
    isSelected: false,
  ),
  Movie(
    id: '9',
    price: 40000,
    title: "Evangelion",
    image: "assets/images/Evangelion.jpg",
    isSelected: false,
  ),
  Movie(
    id: '10',
    price: 25,
    title: "Jazz 4G",
    image: "assets/images/4G.jpg",
    isSelected: false,

  ),
];
