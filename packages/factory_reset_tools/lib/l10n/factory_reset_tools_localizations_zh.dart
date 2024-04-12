import 'factory_reset_tools_localizations.dart';

/// The translations for Chinese (`zh`).
class FactoryResetToolsLocalizationsZh extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '系统重置工具';

  @override
  String get windowTitle => '系统重置工具';

  @override
  String get homeTitle => '君欲何为？';

  @override
  String get createResetMedia => '创建重置盘';

  @override
  String get startFactoryReset => '恢复出厂设置';

  @override
  String get createUsbTitle => '创建 USB 重置盘';

  @override
  String get createUsbBody => '创建可用于恢复系统的 USB 恢复介质，您还可以自定义 Ubuntu 安装配置。';

  @override
  String get createUsbListExplanation => '请选择 USB 闪存盘。闪存盘必须至少有 16GB 的空间';

  @override
  String get createUsbWarning => 'U 盘将会被格式化，上面所有的数据都会被删除。';

  @override
  String get resetMediaTitle => 'USB 重置盘';

  @override
  String get noMediaDetected => '未检测到任何可移动存储设备';

  @override
  String get noMediaDetectedSubtitle => '需要 U 盘才能创建重置盘。';

  @override
  String get factoryResetTitle => '请选择一个选项以启动出厂重置';

  @override
  String get loadingDrives => '正在加载设备列表，请稍等…';

  @override
  String get resetMediaReadyTitle => 'USB 重置盘已就绪';

  @override
  String get resetMediaReadyBody => '当您想使用该重置盘时，请将它插到您想重置的设备上并重启该设备。';

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
  String get reboot => '重启';

  @override
  String get failed => '无法运行命令';

  @override
  String get close => '关闭';

  @override
  String get ok => '确定';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class FactoryResetToolsLocalizationsZhTw extends FactoryResetToolsLocalizationsZh {
  FactoryResetToolsLocalizationsZhTw(): super('zh_TW');


}
