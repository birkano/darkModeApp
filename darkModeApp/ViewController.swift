//
//  ViewController.swift
//  darkModeApp
//
//  Created by Birkan Pusa on 21.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //light mode veya dark mode ayarını manuel yapma
        overrideUserInterfaceStyle = .dark
    }


    //Eğer dark mod & light mod arası geçiş yapıldıysa bu fonksiyon algılar ve fonksiyon içindeki işlemleri yaptırabilirsiniz
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
            //mod değişince bilgi mesajı gönderdim
            let alert = UIAlertController(title: "Bilgi", message: "Dark Mod'a geçtiniz", preferredStyle: UIAlertController.Style.alert)
                        alert.addAction(UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
        } else {
            //mod değşince bilgi mesajı gönderdim
            let alert = UIAlertController(title: "Bilgi", message: "Light mode'a geçtiniz", preferredStyle: UIAlertController.Style.alert)
                        alert.addAction(UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
            changeButton.tintColor = UIColor.red
        }
    }
    
}

