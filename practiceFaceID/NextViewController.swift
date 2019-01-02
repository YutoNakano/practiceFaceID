    //
//  NextViewController.swift
//  practiceFaceID
//
//  Created by 中野湧仁 on 2019/01/02.
//  Copyright © 2019年 中野湧仁. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.frame = CGRect(x: 100, y: 100, width: 100, height: 150)
        label.text = "認証成功！"
        self.view.addSubview(label)

        // Do any additional setup after loading the view.
    }
    

    @IBAction func back(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
        
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
