//
//  AppDelegate.swift
//  NetflixClone
//
//  Created by Berkan Gezgin on 24.10.2023.
//

import UIKit

let myDelegate = UIApplication.shared.delegate as! AppDelegate

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mainStoryboard: UIStoryboard!
    var rootVC: RootViewController!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        openRoot()
        
        UINavigationBar.appearance().isHidden = true
        
        return true
    }
    
    private func openRoot() {
        rootVC = mainStoryboard.instantiateViewController(withIdentifier: "RootVC") as? RootViewController
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}
