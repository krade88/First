//
//  ViewController.swift
//  FPBueeee
//
//  Created by Student on 16.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var numberImage = 1
    @IBAction func setNameAction(_ sender: Any) {
        if !nameTextField.text!.isEmpty {
            helloLabel.text = "Приветствую, " + nameTextField.text! + ". Приятного настроения"
            if numberImage == 1 {
                self.myImageView.image = UIImage (named: "2")
                numberImage = 2
            } else {
                self.myImageView.image = UIImage(named: "1")
                numberImage = 1
            }
            showAlert(name: "Успешно", desc: "Данные введены.")
        } else {
            showAlert(name: "Ошибка", desc: "Вы ничего не ввели.")
        }
    }
    func showAlert (name: String, desc: String)
    {
        let alert = UIAlertController(title: name, message: desc, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Закрыть", style: .cancel, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
}

