import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/more/presentation/screens/more_screen.dart';
import '../../features/notifications/presentation/screens/notifications_screen.dart';
import '../../features/search/presentation/screens/search_screen.dart';
import '../../features/tasks/presentation/screens/tasks_screen.dart';
import '../theming/colors.dart';
import '../theming/style.dart';
import 'floating_action_container.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  bool _isOpen = false;
  late AnimationController _opacityController;
  late Animation<double> _opacityAnimation;

  final List<Widget> _screens = [
    HomeScreen(),
    TasksScreen(),
    NotificationsScreen(),
    SearchScreen(),
    MoreScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _opacityController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_opacityController);
  }

  @override
  void dispose() {
    _opacityController.dispose();
    super.dispose();
  }

  void toggle() {
    setState(() {
      _isOpen = !_isOpen;
    });

    if (_isOpen) {
      _opacityController.forward();
    } else {
      _opacityController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(index: _selectedIndex, children: _screens),

          // Blur background effect when content is open
          AnimatedOpacity(
            opacity: _isOpen ? 1.0 : 0.0,
            duration: Duration(milliseconds: 310),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
              child:
                  _isOpen
                      ? Container(
                        color: Colors.black.withOpacity(0.3),
                        width: double.infinity,
                        height: double.infinity,
                      )
                      : SizedBox(),
            ),
          ),

          // Additional content that appears when the floating action button is clicked
          Positioned(
            bottom: 88,
            left: 20,
            right: 20,
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 350),
              child: _isOpen ? FloatingActionContainer() : SizedBox.shrink(),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 15),
        height: 36,
        width: 36,
        child: FloatingActionButton(
          onPressed: toggle,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          backgroundColor: ColorsManager.orange,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 250),
            switchInCurve: Curves.easeInOutCirc,
            switchOutCurve: Curves.easeInOutCirc,
            child: AnimatedRotation(
              duration: Duration(milliseconds: 250),
              turns: _isOpen ? 0.125 : 0,
              child: SvgPicture.asset(
                'assets/icons/main_layout/add.svg',

                color: ColorsManager.white,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorsManager.woodsmoke,
        selectedItemColor: ColorsManager.white,
        unselectedItemColor: ColorsManager.grayishBlue,
        selectedLabelStyle: TextStyles.font14Medium().copyWith(
          color: ColorsManager.white,
        ),
        unselectedLabelStyle: TextStyles.font14Medium().copyWith(
          color: ColorsManager.grayishBlue,
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/main_layout/home.svg',
              color:
                  _selectedIndex == 0
                      ? ColorsManager.white
                      : ColorsManager.darkGrayishBlue,
            ),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/main_layout/tasks.svg',
              color:
                  _selectedIndex == 1
                      ? ColorsManager.white
                      : ColorsManager.darkGrayishBlue,
            ),
            label: 'مهامي',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Container.svg',
              width: 22,
              height: 22,
            ),
            label: 'الإنبوكس',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/main_layout/search.svg',
              width: 23,
              height: 22,
              color:
                  _selectedIndex == 3
                      ? ColorsManager.white
                      : ColorsManager.darkGrayishBlue,
            ),
            label: 'البحث',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/main_layout/ellipsis.svg',
              color:
                  _selectedIndex == 4
                      ? ColorsManager.white
                      : ColorsManager.darkGrayishBlue,
            ),
            label: 'المزيد',
          ),
        ],
      ),
    );
  }
}
