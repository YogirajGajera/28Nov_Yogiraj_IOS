//
//  FourthViewController.swift
//  Question 15
//
//  Created by mac on 03/02/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var txt3: UITextField!
    var sttpkr = UIPickerView()
    var state = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        self.sttpkr.dataSource = self
        self.sttpkr.delegate = self
        state = ["Acre",
                "Alagoas",
                "Amazonas",
                "Amapá",
                "Bahia",
                "Ceará",
                "Distrito Federal",
                "Espírito Santo",
                "Goiás",
                "Maranhão",
                "Minas Gerais",
                "Mato Grosso do Sul",
                "Mato Grosso",
                "Pará",
                "Paraíba",
                "Pernambuco",
                "Piauí",
                "Paraná",
                "Rio de Janeiro",
                "Rio Grande do Norte",
                "Rondônia",
                "Roraima",
                "Rio Grande do Sul",
                "Santa Catarina",
                "Sergipe",
                "São Paulo",
                "Tocantins",]
        txt3.inputView = sttpkr
    }
}
    
extension FourthViewController:UIPickerViewDataSource,UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return state.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return state[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txt3.text = state[row]
        txt3.isUserInteractionEnabled = false
        view.endEditing(true)
    }
    
}

