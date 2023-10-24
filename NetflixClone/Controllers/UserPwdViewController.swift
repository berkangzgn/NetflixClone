//
//  UserPwdViewController.swift
//  NetflixClone
//
//  Created by Berkan Gezgin on 24.10.2023.
//

import UIKit

class UserPwdViewController: UIViewController {
    
    @IBOutlet weak var squareV: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var firstNumberV: UIView!
    @IBOutlet weak var firstTF: UITextField!
    @IBOutlet weak var secondNumberV: UIView!
    @IBOutlet weak var secondTF: UITextField!
    @IBOutlet weak var thirdNumberV: UIView!
    @IBOutlet weak var thirdTF: UITextField!
    @IBOutlet weak var fourthNumberV: UIView!
    @IBOutlet weak var fourthTF: UITextField!
    @IBOutlet weak var line1: UIView!
    @IBOutlet weak var line2: UIView!
    @IBOutlet weak var forgotPwdBtn: UIButton!
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet var superV: UIView!
    
    var rootVC: RootViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        squareV.layer.cornerRadius = CGFloat(10)
        squareV.backgroundColor = UIColor(red: 202/255, green: 201/255, blue: 202/255, alpha: 1)
        
        titleLbl.text = "Bu profile erişmek için PIN kodunu girin."
        titleLbl.textColor = .black
        
        firstNumberV.backgroundColor = .white
        secondNumberV.backgroundColor = .white
        thirdNumberV.backgroundColor = .white
        fourthNumberV.backgroundColor = .white
        
        firstNumberV.layer.cornerRadius = CGFloat(10)
        secondNumberV.layer.cornerRadius = CGFloat(10)
        thirdNumberV.layer.cornerRadius = CGFloat(10)
        fourthNumberV.layer.cornerRadius = CGFloat(10)
        
        firstTF.delegate  = self
        secondTF.delegate  = self
        thirdTF.delegate  = self
        fourthTF.delegate  = self
        
        firstTF.textColor = .black
        secondTF.textColor = .black
        thirdTF.textColor = .black
        fourthTF.textColor = .black
        
        firstTF.isSecureTextEntry = true
        secondTF.isSecureTextEntry = true
        thirdTF.isSecureTextEntry = true
        fourthTF.isSecureTextEntry = true
        
        firstTF.becomeFirstResponder()
        
        line1.backgroundColor = UIColor(red: 99/255, green: 98/255, blue: 99/255, alpha: 0.7)
        line2.backgroundColor = UIColor(red: 99/255, green: 98/255, blue: 99/255, alpha: 0.7)
        
        forgotPwdBtn.setTitle("PIN'i mi unuttunuz?", for: .normal)
        cancelBtn.setTitle("İptal", for: .normal)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        myDelegate.rootVC.tabView.isHidden = true
    }
    
    @IBAction func forgotPwdClicked(_ sender: Any) {
        showAlert(title: "Çalışıyor", message: "Bir web sayfasına açılan bağlantı olduğu için eklemedim.")
    }
    
    @IBAction func cancelBtnClicked(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
        let okAction = UIAlertAction(title: "Tamam", style: .default, handler: nil)
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
}

extension UserPwdViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Make sure to enter a single digit
        if string.count != 1 || !CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: string)) {
            return false
        }
        
        let currentText = textField.text ?? ""
        
        // Add or edit text
        if let textRange = Range(range, in: currentText) {
            let updatedText = currentText.replacingCharacters(in: textRange, with: string)
            textField.text = updatedText
        }
        
        // Switch to other textfield
        switch textField {
        case firstTF:
            secondTF.becomeFirstResponder()
        case secondTF:
            thirdTF.becomeFirstResponder()
        case thirdTF:
            fourthTF.becomeFirstResponder()
        case fourthTF:
            fourthTF.resignFirstResponder()
            self.checkPwd()
        default:
            break
        }
        
        return false
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = "" // Clear the TF when cursor in TF
    }
    
    func checkPwd() {
        // TODO: Pwd should check
        
        myDelegate.rootVC.toHomeNC()
    }

}
