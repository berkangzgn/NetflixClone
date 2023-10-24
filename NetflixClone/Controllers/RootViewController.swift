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
    
    var isTabbarViewHidden = false

    override func viewDidLoad() {
        super.viewDidLoad()

        tabView.isHidden = isTabbarViewHidden
        
        let blurEffect = UIBlurEffect(style: .dark) // Bulanıklık stilini seçebilirsiniz: .light, .dark, .extraLight vb.
        let blurView = UIVisualEffectView(effect: blurEffect)

        blurView.frame = view.bounds
//        tabView.addSubview(blurView)
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
