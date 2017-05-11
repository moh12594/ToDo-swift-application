//
//  ViewController.swift
//  TodoList
//
//  Created by Mohamed SADAT on 11/05/2017.
//  Copyright © 2017 Mohsadat. All rights reserved.
//

import UIKit

protocol TodosViewControllerDelegate :class {
    func TodoAjouter(sender: ViewController, todo:String)
}


class ViewController: UIViewController {

    var delegate: TodosViewControllerDelegate?
    
    @IBOutlet weak var todoTextField: UITextField!
    
    @IBAction func annulerAjouterTodo(_ sender: UIBarButtonItem) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func ajouterTodo(_ sender: UIBarButtonItem) {
        
        //print("todo ajouté:  \(todoTextField.text!)")
        
        delegate?.TodoAjouter(sender: self, todo: todoTextField.text!)
          self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

