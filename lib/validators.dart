class Validators {
  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'اسم المستخدم مطلوب';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'كلمة المرور مطلوبة';
    }
    if (value.length < 6) {
      return 'كلمة المرور يجب أن تكون أطول من 6 أحرف';
    }
    return null;
  }

  static String? validatePhone(String? value) {
    final regex = RegExp(r'^(77|73|71|70)\d{7}$');
    if (value == null || value.isEmpty) {
      return 'رقم الهاتف مطلوب';
    }
    if (!regex.hasMatch(value)) {
      return 'الرجاء إدخال رقم هاتف صالح';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (value == null || value.isEmpty) {
      return 'البريد الإلكتروني مطلوب';
    }
    if (!regex.hasMatch(value)) {
      return 'الرجاء إدخال بريد إلكتروني صحيح';
    }
    return null;
  }
}
