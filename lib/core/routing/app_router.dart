import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/routs.dart';
import 'package:flutter_application_1/feature/onbording/onbording_screen.dart';
import 'package:flutter_application_1/feature/ui/login_screen.dart';

// كلاس إدارة التنقل بين الشاشات
class AppRouter {
  
  // دالة تحديد الشاشة المناسبة بناءً على إعدادات المسار
  Route? generateRoute(RouteSettings settings) {
    
    // لاستقبال أي بيانات ممررة بين الشاشات
    final arguments = settings.arguments;

    // فحص اسم المسار المطلوب
    switch (settings.name) {
      
      // الشاشة الأولى: OnBoarding
      case Routs.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnbordingScreen(),
        );

      // الشاشة الثانية: Login
      case Routs.LoginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      // مسار افتراضي في حال كان اسم الشاشة غير موجود
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}