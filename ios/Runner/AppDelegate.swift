import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    // 注册自定义plugin
    BaiduASRPlugin.register(with: self.registrar(forPlugin: "BaiduASRPlugin"))
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
