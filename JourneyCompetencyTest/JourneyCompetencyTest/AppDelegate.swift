//
//  AppDelegate.swift
//  JourneyCompetencyTest
//
//  Created by Riya Kaniyawala on 11/06/21.
//

import UIKit
import SVProgressHUD
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    //MARK:- Variable || Dependencies
    var window  : UIWindow?

    class var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupRootViewController()
        SVProgressHUD.setDefaultAnimationType(.native)
        return true
    }

}

extension AppDelegate {
    //MARK:- Private Method
    private func setupRootViewController() {
        //setup root controller
        let controller = PostFactory.shared.createModule()
        let navigationViewController = UINavigationController(rootViewController: controller)
        navigationViewController.viewControllers = [controller]
        navigationViewController.navigationBar.prefersLargeTitles = true
        
        navigationViewController.navigationBar.barTintColor = UIColor.white
        navigationViewController.navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
            ]
        navigationViewController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        self.window?.rootViewController = navigationViewController
        self.window?.makeKeyAndVisible()
    }
    
}

