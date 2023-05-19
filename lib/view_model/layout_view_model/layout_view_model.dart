import 'package:currency_app/view/currency_convertion_screen.dart';
import 'package:currency_app/view/currency_home_screen.dart';
import 'package:currency_app/view_model/layout_view_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view/currency_time_screen.dart';

class LayoutViewModel extends Cubit<LayoutState> {
  LayoutViewModel() : super(InitialLayoutStatus());
  static LayoutViewModel get(context) => BlocProvider.of(context);
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
    CurrencyHomeScreen(),
    //  LazyLoading(),
    CurrencyTimeScreen(),
    CurrencyConversionSreen(),
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
