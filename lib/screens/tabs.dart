import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticket_booking_app/screens/avia_ticket.dart';
import 'package:ticket_booking_app/screens/closest.dart';
import 'package:ticket_booking_app/screens/hotels.dart';
import 'package:ticket_booking_app/screens/profile.dart';
import 'package:ticket_booking_app/screens/subscriptions.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentPage = const ATScreen();

    if (_selectedPageIndex == 1) {
      currentPage = const HotelsScreen();
    }
    if (_selectedPageIndex == 2) {
      currentPage = const ClosestScreen();
    }
    if (_selectedPageIndex == 3) {
      currentPage = const SubscriptionsScreen();
    }
    if (_selectedPageIndex == 4) {
      currentPage = const ProfileScreen();
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
      ),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle:
            const TextStyle(fontSize: 10, overflow: TextOverflow.ellipsis),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            tooltip: 'Авиабилеты',
            icon: SvgPicture.asset('lib/assets/icons/avia.svg'),
            label: 'Авиабилеты',
          ),
          BottomNavigationBarItem(
            tooltip: 'Отели',
            icon: SvgPicture.asset('lib/assets/icons/hotels.svg'),
            label: 'Отели',
          ),
          BottomNavigationBarItem(
            tooltip: 'Короче',
            icon: SvgPicture.asset('lib/assets/icons/closest.svg'),
            label: 'Короче',
          ),
          BottomNavigationBarItem(
            tooltip: 'Подписки',
            icon: SvgPicture.asset('lib/assets/icons/subscriptions.svg'),
            label: 'Подписки',
          ),
          BottomNavigationBarItem(
            tooltip: 'Профиль',
            icon: SvgPicture.asset('lib/assets/icons/profile.svg'),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
