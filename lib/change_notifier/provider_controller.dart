import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String name = 'Adam';
  String imageAvatar =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKqp08pU_OgX7j1yA1qHAg5QyxV7zUdmsfAg&s';
  String birthDay = '05/09/2001';

  void alterarDados() {
    name = 'H.G. Tannhaus';
    imageAvatar =
        'https://imgix.bustle.com/uploads/image/2017/12/12/d749ec34-635d-4a44-ac48-e8cf03ee1487-hg-tannhaus-dark-netflix.png?w=1200&h=1200&fit=crop&crop=faces&fm=jpg';
    birthDay = '10/10/2000';
    notifyListeners();
  }
}
