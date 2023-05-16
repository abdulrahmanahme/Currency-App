import 'package:currency_app/view/home_screen.dart';
import 'package:currency_app/view_model/home_states_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view/currency_date_screen.dart';
import '../view/currency_time_screen.dart';

class HomeViewModel extends Cubit<LayoutState> {
  HomeViewModel() : super(InitialLayoutStatus());
  static HomeViewModel get(context) => BlocProvider.of(context);
  int counter = 0;
  String selectedOption = 'Option 1';

  void bottomBarIndex(int index) {
    counter = index;
    emit(BottomBarIndexState());
  }

  void updateMenu(String newValue) {
    selectedOption = newValue;
    emit(UpdateMenuState());
  }

  var title = const [
    'Home',
    'Currency Time',
    'Currency History',
  ];

  var currencyBody = const [
    HomeScreen(),
    CurrencyTimeScreen(),

    CurrencyDateSreen(),
  ];
  List<BottomNavigationBarItem> itemsBottom = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
      backgroundColor: Colors.grey,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.timelapse),
      label: 'Time',
      backgroundColor: Colors.grey,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.history),
      label: 'History',
      backgroundColor: Colors.grey,
    ),
  ];
}
