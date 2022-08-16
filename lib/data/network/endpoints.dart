class Endpoints {
  Endpoints._();

  static const String baseURL = 'http://172.16.15.120:8020/api';
  // static const String baseURL = 'http://asalback.ytechcloud.com/api';
  static const String baseURLPhoto = 'http://172.16.15.120:8020/';
  // static const String baseURLPhoto = 'http://asalback.ytechcloud.com/';

  static const int receiveTimeout = 5000;
  static const int connectionTimeout = 3000;
  static const String login = '31.9.57.147:8080/authenticate';
  static const String products = '/services/app/MobileProduct';
  static const String subProduct = '/services/app/MobileSubProduct';
  static const String customer = '/services/app/MobileCustomer';

  static const String getAllProducts = '$products/GetFilteredProducts';
  static const String getAllProductsCategory =
      '$products/GetAllProductCategory';
  static const String getActivePromotions = '$products/GetAcivePromotions';

  static const String filteredCustomer =
      '/services/app/MobileCustomer/GetFilteredCustomers?';
  static const String filterSubProduct =
      '/services/app/MobileSubProduct/GetFilteredSubProduct?';
  static const String customerCategory =
      '/services/app/MobileCustomer/GetAllCustomerCategory';
}
