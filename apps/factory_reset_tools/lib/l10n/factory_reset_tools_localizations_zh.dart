// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class FactoryResetToolsLocalizationsZh extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '恢复出厂设置工具';

  @override
  String get windowTitle => '恢复出厂设置工具';

  @override
  String get homeTitle => '君欲何为？';

  @override
  String get createResetMedia => '创建恢复介质';

  @override
  String get startFactoryReset => '恢复出厂设置';

  @override
  String get createUsbTitle => '创建 USB 恢复介质';

  @override
  String get createUsbBody => '创建可用于恢复系统的 USB 恢复介质，同时您可以自定义您的 Ubuntu 安装配置。';

  @override
  String get createUsbListExplanation => '请选择 USB 闪存盘。闪存盘必须**至少有 16GB 的空间**';

  @override
  String get createUsbWarning => 'U 盘将会被格式化，上面所有的数据都会被删除。';

  @override
  String get resetMediaTitle => 'USB 恢复介质';

  @override
  String get noMediaDetected => '未检测到任何可移动存储设备';

  @override
  String get noMediaDetectedSubtitle => '需要 U 盘才能创建恢复介质。';

  @override
  String get factoryResetTitle => '请选择一个选项以启动出厂重置';

  @override
  String get loadingDrives => '正在加载设备列表，请稍等。';

  @override
  String get resetMediaReadyTitle => 'USB 恢复介质已就绪';

  @override
  String get resetMediaReadyBody => '当您想使用该恢复介质时，请将它插到您想重置的设备上并重启该设备。';

  @override
  String get errorLoadingDrives => '无法获取设备列表。';

  @override
  String get resetMediaInitializing => '正在初始化';

  @override
  String get resetMediaCopying => '正在复制';

  @override
  String get resetMediaFinalizing => '正在完成';

  @override
  String get resetMediaFinished => '已完成';

  @override
  String get resetMediaFailed => '失败';

  @override
  String get error => '错误';

  @override
  String get loading => '正在加载…';

  @override
  String get warning => '警告';

  @override
  String get restore => '恢复';

  @override
  String get restart => '重新启动';

  @override
  String get reformat => '重新格式化';

  @override
  String get failed => '无法运行命令';

  @override
  String get close => '关闭';

  @override
  String get ok => '好';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class FactoryResetToolsLocalizationsZhTw
    extends FactoryResetToolsLocalizationsZh {
  FactoryResetToolsLocalizationsZhTw() : super('zh_TW');

  @override
  String get appTitle => '出廠設定還原工具';

  @override
  String get windowTitle => '出廠設定還原工具';

  @override
  String get homeTitle => '您想要進行什麼操作？';

  @override
  String get createResetMedia => '建立還原媒體';

  @override
  String get startFactoryReset => '開始還原出廠設定';

  @override
  String get createUsbTitle => '建立 USB 還原媒體';

  @override
  String get createUsbBody => '建立 USB 還原媒體以還原系統，並自訂您的 Ubuntu 安裝。';

  @override
  String get createUsbListExplanation =>
      '選擇一個 USB 隨身碟。該隨身碟必須有 **至少 16GB 的空間。**';

  @override
  String get createUsbWarning => '隨身碟將被重新格式化，碟上的所有資料將會遺失。';

  @override
  String get resetMediaTitle => 'USB 還原媒體';

  @override
  String get noMediaDetected => '未偵測到可攜式儲存裝置';

  @override
  String get noMediaDetectedSubtitle => '您需要一個 USB 儲存裝置來建立還原出廠設定媒體。';

  @override
  String get factoryResetTitle => '選擇一個選項以開始還原出廠設定';

  @override
  String get loadingDrives => '請等待我們取得磁碟。';

  @override
  String get resetMediaReadyTitle => 'USB 還原媒體已準備好';

  @override
  String get resetMediaReadyBody => '當您想要使用它時，請將 USB 隨身碟插入您想要還原的電腦。';

  @override
  String get errorLoadingDrives => '在取得磁碟時發生錯誤。';

  @override
  String get resetMediaInitializing => '初始化中';

  @override
  String get resetMediaCopying => '複製中';

  @override
  String get resetMediaFinalizing => '完成中';

  @override
  String get resetMediaFinished => '已完成';

  @override
  String get resetMediaFailed => '失敗';

  @override
  String get error => '錯誤';

  @override
  String get loading => '載入中...';

  @override
  String get warning => '警告';

  @override
  String get restore => '還原';

  @override
  String get restart => '重新啟動';

  @override
  String get reformat => '重新格式化';

  @override
  String get failed => '執行命令失敗';

  @override
  String get close => '關閉';

  @override
  String get ok => '確定';
}
