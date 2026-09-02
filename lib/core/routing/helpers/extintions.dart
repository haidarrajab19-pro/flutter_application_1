import 'package:flutter/material.dart';

// Extension
// إمكانية إضافة وظائف جديدة لكلاس موجود مسبقاً دون التعديل عليه
// Navigation
// اسم الـ Extension للتعامل مع التنقل بين الشاشات
// BuildContext
// الكلاس الأصلي الخاص بـ Flutter الذي سنضيف له هذه الوظائف
extension Navigation on BuildContext {
  
  
  // Future<dynamic>
  // قيمة غير مباشرة تعود مستقبلاً بعد إغلاق الشاشة
  // pushNamed
  // اسم الدالة لفتح شاشة جديدة مع الحفاظ على الشاشة الحالية تحتها
  // String routeName
  // اسم المسار المكون من نص والمُعرف في كلاس المسارات
  // Object? arguments
  // تمرير بيانات اختيارية بين الشاشات
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    // Navigator.of(this)
    // الوصول لـ Navigator الخاص بالـ BuildContext الحالي
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  // pushReplacementNamed
  // استبدال الشاشة الحالية بشاشة جديدة وحذف الحالية من الذاكرة
  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }

  // pushNamedAndRemoveUntil
  // الانتقال لشاشة جديدة وتصفير كل الشاشات السابقة حسب شرط معين
  // RoutePredicate predicate
  // شرط يحدد أي الشاشات يتم مسحها من الـ Stack وأيها تبقى
  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    required RoutePredicate predicate,
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      predicate,
      arguments: arguments,
    );
  }

  // pop
  // إغلاق الشاشة الحالية والعودة للشاشة السابقة مباشرة
  void pop() => Navigator.of(this).pop();
}