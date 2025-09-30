// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class UbuntuProvisionLocalizationsAr extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get accessibilityPageTitle => 'الإتاحة';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'الإتاحة في $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'خصِّص $DISTRO ليناسب احتياجاتك قبل إعداده. يمكنك تغييرهم لاحقًا في إعدادات النظام.';
  }

  @override
  String get accessibilitySeeingLabel => 'الرؤية';

  @override
  String get accessibilityHearingLabel => 'الاستماع';

  @override
  String get accessibilityTypingLabel => 'الكتابة';

  @override
  String get accessibilityPointingLabel => 'التأشير والنقر';

  @override
  String get accessibilityZoomLabel => 'التحجيم';

  @override
  String get accessibilityHighContrastLabel => 'تباين عالٍ';

  @override
  String get accessibilityLargeTextLabel => 'نص كبير';

  @override
  String get accessibilityReduceAnimationLabel => 'قلِّص التحريكات';

  @override
  String get accessibilityScreenReaderLabel => 'قارئ الشاشة';

  @override
  String get accessibilityVisualAlertsLabel => 'الإنذارات البصرية';

  @override
  String get accessibilityStickKeysLabel => 'المفاتيح اللاصقة';

  @override
  String get accessibilitySlowKeysLabel => 'المفاتيح البطيئة';

  @override
  String get accessibilityMouseKeysLabel => 'مفاتيح الفأرة';

  @override
  String get accessibilityDesktopZoomLabel => 'تحجيم سطح المكتب';

  @override
  String get errorPageTitle => 'حدث خطأ';

  @override
  String get errorPageUnexpected =>
      'تعذَّرت معرفة الخطأ. حاول إعادة تشغيل حاسوبك وبدء عملية التنصيب من جديد. يمكنك أيضًا <a>الإبلاغ عن المشكلة</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'لإرسال بلاغ علة آلي، ضمِّن معلومات التنقيح المتعلقة، وشغِّل <pre>sudo ubuntu-bug $SNAP</pre> في الطرفية، أو من محث الأوامر (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'أظهر السجل';

  @override
  String get errorPageHideLog => 'أخفِ السجل';

  @override
  String get restart => 'أعِد التشغيل';

  @override
  String get close => 'أغلِق';

  @override
  String get timezonePageTitle => 'حدِّد المنطقة الزمنية';

  @override
  String get timezoneLocationLabel => 'الموضع';

  @override
  String get timezoneTimezoneLabel => 'المنطقة الزمنية';

  @override
  String get keyboardTitle => 'تخطيط لوحة المفاتيح';

  @override
  String get keyboardHeader => 'حدِّد تخطيط لوحة المفاتيح';

  @override
  String get keyboardTestHint => 'اكتب هنا لاختبار لوحة المفاتيح';

  @override
  String get keyboardDetectTitle => 'اكشف تخطيط لوحة المفاتيح';

  @override
  String get keyboardDetectButton => 'اكشف';

  @override
  String get keyboardVariantLabel => 'حدِّد نوع لوحة المفاتيح:';

  @override
  String get keyboardPressKeyLabel => 'انقر إحدى المفاتيح التالية:';

  @override
  String get keyboardKeyPresentLabel => 'أهذا المفتاح موجود على لوحة مفاتيحك؟';

  @override
  String get themePageTitle => 'اختر سمتك';

  @override
  String get themePageHeader => 'يمكنك تغييره لاحقًا في إعدادات المظهر.';

  @override
  String get themeDark => 'داكن';

  @override
  String get themeLight => 'فاتح';

  @override
  String localePageTitle(String DISTRO) {
    return 'أهلًا بك في $DISTRO';
  }

  @override
  String get localeHeader => 'اختر لغتك:';

  @override
  String get identityPageTitle => 'إعداد حسابك';

  @override
  String get identityAutoLogin => 'لِج آليًا';

  @override
  String get identityRequirePassword => 'اطلب كلمة السر للولوج';

  @override
  String get identityRealNameLabel => 'اسمك';

  @override
  String get identityRealNameRequired => 'الاسم مطلوب';

  @override
  String get identityRealNameTooLong => 'هذا الاسم طويل جدًا.';

  @override
  String get identityHostnameLabel => 'اسم الحاسوب';

  @override
  String get identityHostnameInfo =>
      'يستخدم هذا الاسم للتواصل مع الحواسيب الأخرى.';

  @override
  String get identityHostnameRequired => 'اسم الحاسوب مطلوب';

  @override
  String get identityHostnameTooLong => 'اسم الحاسوب هذا طويل جدًا.';

  @override
  String get identityInvalidHostname => 'اسم الحاسوب غير صالح';

  @override
  String get identityUsernameLabel => 'اسم مستخدمك';

  @override
  String get identityUsernameRequired => 'اسم المستخدم مطلوب';

  @override
  String get identityInvalidUsername => 'اسم المستخدم غير صالح';

  @override
  String get identityUsernameInUse => 'اسم المستخدم هذا موجود بالفعل.';

  @override
  String get identityUsernameSystemReserved =>
      'اسم المستخدم هذا محجوز لاستخدام النظام.';

  @override
  String get identityUsernameTooLong => 'هذا الاسم طويل جدًا.';

  @override
  String get identityUsernameInvalidChars => 'يتضمن الاسم محارف غير صالحة.';

  @override
  String get identityPasswordLabel => 'كلمة السر';

  @override
  String get identityPasswordRequired => 'كلمة السر مطلوبة';

  @override
  String get identityConfirmPasswordLabel => 'أكِّد كلمة السر';

  @override
  String get identityPasswordMismatch => 'كلمتا السر لا تتطابقان';

  @override
  String get identityPasswordShow => 'اعرض';

  @override
  String get identityPasswordHide => 'أخفِ';

  @override
  String get identityActiveDirectoryOption => 'استعمل Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'ستدخل النطاق والتفاصيل الأخرى في الخطوة التالية.';

  @override
  String get activeDirectoryTitle => 'لِج إلى Active Directory';

  @override
  String get activeDirectoryHeader => 'أألِج إلى Active Directory؟';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return 'صُمِّمت $DISTRO لتتكامل بسلاسة مع Active Directory لتسهيل الإدارة.';
  }

  @override
  String get activeDirectoryTestConnection => 'اختبر ترابطية النطاق';

  @override
  String get activeDirectoryDomainLabel => 'النطاق';

  @override
  String get activeDirectoryDomainEmpty => 'مطلوب';

  @override
  String get activeDirectoryDomainTooLong => 'طويل جدًا';

  @override
  String get activeDirectoryDomainInvalidChars => 'محارف غير صالحة';

  @override
  String get activeDirectoryDomainStartDot => 'يبدأ بنقطة (.)';

  @override
  String get activeDirectoryDomainEndDot => 'ينتهي بنقطة (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'يبدأ بواصلة (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'ينتهي بواصلة (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'يتضمن نقاطًا متتالية متعددة (..)';

  @override
  String get activeDirectoryDomainNotFound => 'لم يُعثر على النطاق';

  @override
  String get activeDirectoryAdminLabel => 'المستخدم';

  @override
  String get activeDirectoryAdminEmpty => 'مطلوب';

  @override
  String get activeDirectoryAdminInvalidChars => 'محارف غير صالحة';

  @override
  String get activeDirectoryPasswordLabel => 'كلمة السر';

  @override
  String get activeDirectoryPasswordEmpty => 'مطلوبة';

  @override
  String get activeDirectoryErrorTitle =>
      'تعذَّر إعداد الاتصال ب‍ Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'تعذَّر إعداد Active Directory في الوقت الراهن. ما إن يعمل نظامك زُر <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> للمساعدة.';

  @override
  String get networkPageTitle => 'اتصال الإنترنت';

  @override
  String get networkPageHeader => 'اتصل بالإنترنت';

  @override
  String get networkPageBody =>
      'سيحسِّن الاتصال بالإنترنت عملية تنصيبك عبر تحققات التوافقية وحزم البرمجيات الإضافية.';

  @override
  String get networkWiredOption => 'استعمل اتصالًا سلكيًا';

  @override
  String get networkWiredNone => 'لم يُكشف أي اتصال سلكي';

  @override
  String get networkWiredOff => 'الاتصال السلكي مطفئ';

  @override
  String get networkWiredDisabled =>
      'عليك تفعيل الاتصال السلكي لاستعمال الإيثرنت';

  @override
  String get networkWiredEnable => 'فعِّل السلكي';

  @override
  String get networkWifiOption => 'اتصل بشبكة واي فاي';

  @override
  String get networkWifiOff => 'الاتصال اللاسلكي معطَّل';

  @override
  String get networkWifiNone => 'لم تُكشف أي أجهزة واي فاي';

  @override
  String get networkWifiDisabled =>
      'عليك تفعيل الاتصال اللاسلكي لاستعمال واي فاي';

  @override
  String get networkWifiEnable => 'فعِّل واي فاي';

  @override
  String get networkHiddenWifiOption => 'اتصل بشبكة واي فاي مخفية';

  @override
  String get networkHiddenWifiNameLabel => 'اسم الشبكة';

  @override
  String get networkHiddenWifiNameRequired => 'اسم الشبكة مطلوب';

  @override
  String get networkNoneOption => 'لا تتصل بالإنترنت';

  @override
  String get eulaPageTitle => 'اتفاقية الترخيص';

  @override
  String get eulaReviewTerms => 'راجع شروط الترخيص';

  @override
  String get eulaReadAndAcceptTerms =>
      'عليك قراءة شروط الترخيص والموافقة عليها لتستمر في إعداد هذه الآلة.';

  @override
  String get eulaAcceptTerms => 'قرأت الشروط ووافقت عليها';

  @override
  String get successIconSemanticLabel => 'اكتمل';

  @override
  String get closeIconSemanticLabel => 'أغلِق';

  @override
  String get maximizeIconSemanticLabel => 'كبِّر';

  @override
  String get minimizeIconSemanticLabel => 'صغِّر';

  @override
  String get expandIconSemanticLabel => 'Expand';

  @override
  String get collapseIconSemanticLabel => 'Collapse';
}
