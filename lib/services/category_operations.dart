import '../models/category.dart';

class CategoryOperations{
  static List<Category> getCategories(){
    return <Category>[
      Category('TopSongs', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKD_nErp3GOQPZj55kPxin3DTiR-BPS_UGjg&usqp=CAU'),
      Category('Arijit Singh', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fopen.spotify.com%2Fartist%2F4YRxDV8wJFPHPTeXepOstw&psig=AOvVaw3gmQIFlm55qtELqMEO7BCP&ust=1691718513562000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPjftNv80IADFQAAAAAdAAAAABAD'),
      Category('Selena ', 'https://lookaside.instagram.com/seo/google_widget/crawler/?media_id=3162033836019018367'),
      Category('Swift', 'data:image/jpeg;base64,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'),
      Category('Selena ', 'https://lookaside.instagram.com/seo/google_widget/crawler/?media_id=3162033836019018367'),
      Category('Selena ', 'https://lookaside.instagram.com/seo/google_widget/crawler/?media_id=3162033836019018367'),


    ];
  }
}