class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    return _instance ??= ImageConstants._init();
  }

  ImageConstants._init();

  static const List<String> carouselImages = [
    'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/Symbol/2020/00NEW/1242_450Banners/PL31_copy._CB432483346_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Wireless/AdvantagePrime/BAU/14thJan/D37196025_IN_WL_AdvantageJustforPrime_Jan_Mob_ingress-banner_1242x450.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
  ];

  static const List<Map<String, String>> topCategories = [
    {'title': "Mobiles", 'image': 'mobile'},
    {'title': "Essentials", 'image': 'essential'},
    {'title': "Appliances", 'image': 'fridge'},
    {'title': "Books", 'image': 'books'},
    {'title': "Fashion", 'image': 'fashion'}
  ];

  String toPng(String imageName) => "assets/images/$imageName.png";
  String toPngIcons(String imageName) => "assets/icons/$imageName.png";
}
