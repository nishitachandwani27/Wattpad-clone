import 'dart:ui';

class BookCategory{
  final String name;
  final String image;

  BookCategory({required this.name, required this.image});
}
class GeneralModelList{

  final List<BookCategory> bookCategory;


  GeneralModelList({required this.bookCategory});


}
final GeneralModelList  BookCategoryList = new GeneralModelList(
    bookCategory: [
      BookCategory(
        name: "Entwined",
        image: "assets/images/entwined.jpg"
      ),
      BookCategory(
          name: "Fault in our stars",
          image: "assets/images/fios.jpeg"
      ),
      BookCategory(
          name: "Stealing from wizards",
          image: "assets/images/cover.jpg"
      ),
      BookCategory(
          name: "Think And Grow Rich",
          image: "assets/images/tagr.jpeg"
      )
    ],
);
