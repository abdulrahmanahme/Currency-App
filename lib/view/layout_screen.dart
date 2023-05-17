// import 'package:currency_app/view_model/layout_view_model/layout_view_states.dart';
import 'package:currency_app/view_model/layout_view_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view_model/layout_view_model/layout_view_model.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>LayoutViewModel(),
      child: BlocConsumer<LayoutViewModel, LayoutState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = context.read<LayoutViewModel>();
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  '${cubit.title[cubit.counter]}',
                  style: const TextStyle(fontSize: 25),
                ),
                centerTitle: true,
                backgroundColor: Colors.black54,
              ),
              body: cubit.currencyBody[cubit.counter],
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.red,
                elevation: 20.0,
                items: cubit.itemsBottom,
                currentIndex: cubit.counter,
                onTap: (int index) {
                  cubit.bottomBarIndex(index);
                },
              ),
            );
          }),
    );
  }
}
