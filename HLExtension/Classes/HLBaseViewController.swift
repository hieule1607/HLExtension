//
//  HLBaseViewController.swift
//  HLExtension
//
//  Created by Hieu Lam on 10/29/18.
//

import UIKit

open class HLBaseViewController: UIViewController {
    var tapGestureRecognizer = UITapGestureRecognizer()

    override open func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        registerCells()
        initViewModel()
        setupView()
        initReactive()
        notification()
    }
    
    open func setupView() {
        
    }
    
    open func initViewModel() {
        
    }
    
    open func initReactive() {
        
    }
    
    open func registerCells() {
    }
    
    open func notification() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow), name: Notification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide), name: Notification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) -> Void {
        tapGestureRecognizer = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func keyboardWillHide(notification: NSNotification) -> Void {
        
        if let gestureRecognizers = view.gestureRecognizers {
            for gr in gestureRecognizers {
                if ((gr as? UITapGestureRecognizer) != nil) {
                    self.view.removeGestureRecognizer(gr)
                }
            }
        }
    }
    
    open func setBackButton(buttonTitle : String){
        let backButton = UIBarButtonItem(title: buttonTitle, style: .plain, target: self, action: #selector(backNavigation))
        navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func backNavigation() {
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
