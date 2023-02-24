//
//  ViewController.swift
//  simpleAlert
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    func ShowSimpleAlert() {
        let alert = UIAlertController(title: "Alert", message: "Do you want to save  Details", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: { action in
            print("No has been tapped")
        }))
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
            print("Yes button has been tapped")
        }))
        present(alert, animated: true, completion: nil)
    }
    
    
    
    
    func ActionSheetStyle() {
        
        let alert = UIAlertController(title: "Action Seet", message: "Do you want to save your details", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: { action in
            print("No button tapped")
        }))
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
            print("Yes button tapped")
        }))
        present(alert, animated: true, completion: nil)
    }


    @IBAction func btnTapped(_ sender: Any) {
        
        ShowSimpleAlert()
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        ActionSheetStyle()
    }
}

