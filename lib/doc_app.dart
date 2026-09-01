import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/app_router.dart';
import 'package:flutter_application_1/core/routing/routs.dart';
import 'package:flutter_application_1/core/theming/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ودجت التطبيق الرئيسي (Root Widget)
class DocApp extends StatelessWidget {
  
  // استقبال كلاس الـ Router للربط بينه وبين MaterialApp
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    
    // إعدادات ScreenUtilInit لضمان تجاوب الواجهة (Responsive UI) مع كافة أحجام الشاشات
    return ScreenUtilInit(
      designSize: const Size(375, 812), // أبعاد الشاشة القياسية المصممة في Figma
      minTextAdapt: true,               // ضبط أحجام النصوص تلقائياً
      splitScreenMode: true,            // دعم وضع الشاشة المنقسمة
      
      builder: (context, child) {
        return MaterialApp(
          title: 'Doc App',
          
          // إعدادات ألوان وثيم التطبيق
          theme: ThemeData(
            primaryColor: AppColors.mainGreen, // اللون الأساسي للتطبيق
            scaffoldBackgroundColor: Colors.white, // لون خلفية كل الشاشات
          ),
          
          debugShowCheckedModeBanner: false, // إخفاء شريط التجريب المائي (DEBUG)
          
          initialRoute: Routs.onBoardingScreen, // الشاشة الأولى التي تفتح عند تشغيل التطبيق
          
          onGenerateRoute: appRouter.generateRoute, // تمرير دالة التنقل لمعالجة تغيير الشاشات
        );
      },
    );
  }
}