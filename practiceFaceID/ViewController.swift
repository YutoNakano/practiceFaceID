//
//  ViewController.swift
//  practiceFaceID
//
//  Created by 中野湧仁 on 2019/01/02.
//  Copyright © 2019年 中野湧仁. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    @IBAction func didTapFaceIDButton(_ sender: Any) {
        
        let storyboard: UIStoryboard = self.storyboard!
        let second = storyboard.instantiateViewController(withIdentifier: "second")
        let ctx = LAContext()
        let localizedReasonString = "ロックを解除"
        var error: NSError?
        if ctx.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            ctx.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics,
                               localizedReason: localizedReasonString) { (success, evaluateError) in
                                if success {
                                    
                                    
                                    let ac = UIAlertController(title: "認証に成功しました！",
                                                               message: "",
                                                               preferredStyle: .alert)
                                    self.present(second,animated: true, completion: nil)
                                    ac.addAction(UIAlertAction(title: "OK", style: .default))
                                    
                                    self.present(ac, animated: true)
                                    

                                    
                                } else {
                                    let ac = UIAlertController(title: "認証に失敗しました！",
                                                               message: evaluateError?.localizedDescription,
                                                               preferredStyle: .alert)
                                    ac.addAction(UIAlertAction(title: "OK", style: .default))
                                    self.present(ac, animated: true)
                                }
            }
        } else {
            print("Face IDが利用できないようです...")
            let ac = UIAlertController(title: "Error",
                                       message: error?.localizedDescription,
                                       preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        }
    }
}



