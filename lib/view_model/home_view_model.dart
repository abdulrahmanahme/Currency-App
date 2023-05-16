import 'package:currency_app/view/home_screen.dart';
import 'package:currency_app/view_model/cubits/cubit_layout/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view/currency_date_screen.dart';
import '../../../view/currency_time_screen.dart';
import '../../../view/home_screen.dart';

import '../../../view/layout_screen.dart';
import '../../../view/layout_screen.dart';


class HomeCubit extends Cubit<LayoutState> {
  HomeCubit() : super(InitialLayoutStatus());
  static HomeCubit get(context) => BlocProvider.of(context);
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
    // DropdownWidget(),
    // CurrencyTimeScreen(),
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
