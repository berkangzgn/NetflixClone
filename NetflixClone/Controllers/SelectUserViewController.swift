//
//  SelectUserViewController.swift
//  NetflixClone
//
//  Created by Berkan Gezgin on 24.10.2023.
//

import UIKit

class SelectUserViewController: UIViewController {
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var editLbl: UILabel!
    @IBOutlet weak var editBtn: UIButton!
    @IBOutlet var superV: UIView!
    
    @IBOutlet weak var user1V: UIView!
    @IBOutlet weak var user1Img: UIImageView!
    @IBOutlet weak var user1TitleL: UILabel!
    @IBOutlet weak var user1Icon: UIImageView!
    @IBOutlet weak var user1Btn: UIButton!
    
    @IBOutlet weak var user2V: UIView!
    @IBOutlet weak var user2Img: UIImageView!
    @IBOutlet weak var user2TitleL: UILabel!
    @IBOutlet weak var user2Icon: UIImageView!
    @IBOutlet weak var user2Btn: UIButton!
    
    @IBOutlet weak var user3V: UIView!
    @IBOutlet weak var user3Img: UIImageView!
    @IBOutlet weak var user3TitleL: UILabel!
    @IBOutlet weak var user3Icon: UIImageView!
    @IBOutlet weak var user3Btn: UIButton!
    
    @IBOutlet weak var user4V: UIView!
    @IBOutlet weak var user4Img: UIImageView!
    @IBOutlet weak var user4TitleL: UILabel!
    @IBOutlet weak var user4Icon: UIImageView!
    @IBOutlet weak var user4Btn: UIButton!
    
    @IBOutlet weak var user5V: UIView!
    @IBOutlet weak var user5Img: UIImageView!
    @IBOutlet weak var user5TitleL: UILabel!
    @IBOutlet weak var user5Icon: UIImageView!
    @IBOutlet weak var user5Btn: UIButton!
    
    var rootVC: RootViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setNeedsLayout()
        view.layoutIfNeeded()
        
        view.backgroundColor = .systemBackground
        
        titleLbl.text = "Kim İzliyor?"
        titleLbl.textColor = .white
        
        editBtn.setTitle("", for: .normal)
        editBtn.backgroundColor = .clear
        editLbl.text = "Düzenle"
        editLbl.textColor = .white
        
        user1Btn.setTitle("", for: .normal)
        user1TitleL.text = "Okan"
        user1TitleL.textColor = .white
        
        user2Btn.setTitle("", for: .normal)
        user2TitleL.text = "Berkan"
        user2TitleL.textColor = .white
        
        user3Btn.setTitle("", for: .normal)
        user3TitleL.text = "Osman"
        user3TitleL.textColor = .white
        user3Icon.isHidden = true
        
        user4Btn.setTitle("", for: .normal)
        user4TitleL.text = "Berkay"
        user4TitleL.textColor = .white
        user4Icon.isHidden = true
        
        user5Btn.setTitle("", for: .normal)
        user5TitleL.text = "İsmail"
        user5TitleL.textColor = .white
        user5Icon.isHidden = true
    }

    override func viewWillAppear(_ animated: Bool) {
//        myDelegate.rootVC.tabView.isHidden = false
    }
    
    @IBAction func editBtnClicked(_ sender: Any) {
        if user1Icon.isHidden ==  true {
            
        } else {
            
        }
    }
    
    @IBAction func user1Clicked(_ sender: Any) {
        if user1Icon.isHidden ==  true {
            myDelegate.rootVC.toHomeNC()
            
        } else {
            self.goPwd()
        }
    }
    
    @IBAction func user2Clicked(_ sender: Any) {
        if user2Icon.isHidden ==  true {
            myDelegate.rootVC.toHomeNC()
            
        } else {
            self.goPwd()
        }
    }
    
    @IBAction func user3Clicked(_ sender: Any) {
        if user3Icon.isHidden ==  true {
            myDelegate.rootVC.toHomeNC()

        } else {
            self.goPwd()
        }
    }
    
    @IBAction func user4Clicked(_ sender: Any) {
        if user4Icon.isHidden ==  true {
            myDelegate.rootVC.toHomeNC()
            
        } else {
            self.goPwd()
        }
    }
    
    @IBAction func user5Clicked(_ sender: Any) {
        if user5Icon.isHidden ==  true {
            myDelegate.rootVC.toHomeNC()
            
        } else {
            self.goPwd()
        }
    }
    
    func goPwd() {
        if let userPwdVC = myDelegate.mainStoryboard.instantiateViewController(withIdentifier: "UserPwdVC") as? UserPwdViewController {
            navigationController?.pushViewController(userPwdVC, animated: true)
        }
    }
}
