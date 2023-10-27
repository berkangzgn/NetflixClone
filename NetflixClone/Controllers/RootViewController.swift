//
//  RootViewController.swift
//  NetflixClone
//
//  Created by Berkan Gezgin on 24.10.2023.
//

import UIKit

class RootViewController: UIViewController {

    @IBOutlet weak var tabView: UIView!
    @IBOutlet var activeView: UIView!
    @IBOutlet weak var firstTab: UIButton!
    @IBOutlet weak var secondTab: UIButton!
    @IBOutlet weak var thirdTab: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blurEffect = UIBlurEffect(style: .dark) // Select style: .light, .dark, .extraLight vb.
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        visualEffectView.frame = tabView.bounds
        tabView.insertSubview(visualEffectView, at: 0)
        
        activeView.backgroundColor = UIColor.clear
        
        self.selectUser()
    }
    
    public func selectUser() {
        if let selectUserNC = storyboard?.instantiateViewController(withIdentifier: "SelectUserNC") as? UINavigationController {
            addNavigationControllerToActiveView(navigationController: selectUserNC)
        }
    }
    
    public func toHomeNC() {
        if let homeNC = storyboard?.instantiateViewController(withIdentifier: "MainPageNC") as? UINavigationController {
            addNavigationControllerToActiveView(navigationController: homeNC)
        }
    }
    
    public func isTabbarHide(isTabbarHide: Bool) {
        tabView.isHidden = isTabbarHide
        firstTab.isHidden = isTabbarHide
        secondTab.isHidden = isTabbarHide
        thirdTab.isHidden = isTabbarHide
        
        if isTabbarHide == true {
            
        } else {
            
        }
    }

    @IBAction func firstTabClicked(_ sender: Any) {
        if let homeNC = storyboard?.instantiateViewController(withIdentifier: "MainPageNC") as? UINavigationController {
            addNavigationControllerToActiveView(navigationController: homeNC)
        }
    }
    
    @IBAction func secondTabClicked(_ sender: Any) {
        if let newsNC = storyboard?.instantiateViewController(withIdentifier: "NewAndPopularNC") as? UINavigationController {
            addNavigationControllerToActiveView(navigationController: newsNC)
        }
    }
    
    @IBAction func thirdTabClicked(_ sender: Any) {
        if let settingsNC = storyboard?.instantiateViewController(withIdentifier: "SettingsNC") as? UINavigationController {
            addNavigationControllerToActiveView(navigationController: settingsNC)
        }
    }
    
    func addNavigationControllerToActiveView(navigationController: UINavigationController) {
        addChild(navigationController)
        navigationController.view.frame = activeView.bounds
        activeView.addSubview(navigationController.view)
        navigationController.didMove(toParent: self)
    }
    
}
