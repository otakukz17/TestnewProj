//
//  ViewController.swift
//  CulCulator
//
//  Created by Kydyrgazy Sailau on 28.12.2022.
//


import UIKit
import SnapKit

class ViewController: UIViewController {
    let resultLabel = UILabel()
    let buttonAC = UIButton(type: .system)
    let buttonPlusMinus = UIButton(type: .system)
    let buttonPercent = UIButton(type: .system)
    let buttonDivision = UIButton(type: .system)
    let button7 = UIButton(type: .system)
    let button8 = UIButton(type: .system)
    let button9 = UIButton(type: .system)
    let buttonX = UIButton(type: .system)
    let button4 = UIButton(type: .system)
    let button5 = UIButton(type: .system)
    let button6 = UIButton(type: .system)
    let buttonMinus = UIButton(type: .system)
    let button1 = UIButton(type: .system)
    let button2 = UIButton(type: .system)
    let button3 = UIButton(type: .system)
    let buttonPlus = UIButton(type: .system)
    let button0 = UIButton(type: .system)
    let buttonDecimal = UIButton(type: .system)
    let buttonEquals = UIButton(type: .system)
    let testButton = UIButton(type: .system)
    
    var firstNumber = 0
    var secondNumber = 0
    var operation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .black
        
        setupView()
        setupButtonProps()
        setupConstrains()
        
        
    }
    
    @objc func button1Tapped(){
        if resultLabel.text!.count < 9 {
            if resultLabel.text == "0"{
                resultLabel.text = "1"
            } else if resultLabel.text == "-0" {
                resultLabel.text = "-1"
            } else {
                resultLabel.text! += "1"
            }
        }
    }
    
    @objc func button2Tapped(){
        if resultLabel.text!.count < 9 {
            if resultLabel.text == "0"{
                resultLabel.text = "2"
            } else if resultLabel.text == "-0" {
                resultLabel.text = "-2"
            } else {
                resultLabel.text! += "2"
            }
        }
    }
    
    @objc func button3Tapped(){
        if resultLabel.text!.count < 9 {
            if resultLabel.text == "0"{
                resultLabel.text = "3"
            } else if resultLabel.text == "-0" {
                resultLabel.text = "-3"
            } else {
                resultLabel.text! += "3"
            }
        }
    }
    
    @objc func button4Tapped(){
        if resultLabel.text!.count < 9 {
            if resultLabel.text == "0"{
                resultLabel.text = "4"
            } else if resultLabel.text == "-0" {
                resultLabel.text = "-4"
            } else {
                resultLabel.text! += "4"
            }
        }
    }
    
    @objc func button5Tapped(){
        if resultLabel.text!.count < 9 {
            if resultLabel.text == "0"{
                resultLabel.text = "5"
            } else if resultLabel.text == "-0" {
                resultLabel.text = "-5"
            } else {
                resultLabel.text! += "5"
            }
        }
    }
    
    @objc func button6Tapped(){
        if resultLabel.text!.count < 9 {
            if resultLabel.text == "0"{
                resultLabel.text = "6"
            } else if resultLabel.text == "-0" {
                resultLabel.text = "-6"
            } else {
                resultLabel.text! += "6"
            }
        }
    }
    
    @objc func button7Tapped(){
        if resultLabel.text!.count < 9 {
            if resultLabel.text == "0"{
                resultLabel.text = "7"
            } else if resultLabel.text == "-0" {
                resultLabel.text = "-7"
            } else {
                resultLabel.text! += "7"
            }
        }
    }
    
    @objc func button8Tapped(){
        if resultLabel.text!.count < 9 {
            if resultLabel.text == "0"{
                resultLabel.text = "8"
            } else if resultLabel.text == "-0" {
                resultLabel.text = "-8"
            } else {
                resultLabel.text! += "8"
            }
        }
    }
    
    @objc func button9Tapped(){
        if resultLabel.text!.count < 9 {
            if resultLabel.text == "0"{
                resultLabel.text = "9"
            } else if resultLabel.text == "-0" {
                resultLabel.text = "-9"
            } else {
                resultLabel.text! += "9"
            }
        }
    }
    
    @objc func button0Tapped(){
        if resultLabel.text!.count < 9 {
            if resultLabel.text == "0"{
                resultLabel.text = "0"
            } else if resultLabel.text == "-0" {
                resultLabel.text = "-0"
            } else {
                resultLabel.text! += "0"
            }
        }
    }
    
    @objc func buttonACTapped(){
        resultLabel.text = "0"
    }
    
    @objc func buttonPlusMinusTapped(){
        if resultLabel.text?.range(of: "-") == nil {
            resultLabel.text = "-" + resultLabel.text!
        } else {
            resultLabel.text = String(resultLabel.text!.dropFirst())
        }
    }
    
    @objc func buttonPercentTapped(){
        resultLabel.text = String(Double(resultLabel.text!)! / 100)
    }
    
    @objc func buttonDivisionTapped(){
        operation = "/"
        firstNumber = Int(resultLabel.text!)!
        resultLabel.text = "0"
    }
    
    @objc func buttonXTapped(){
        operation = "*"
        firstNumber = Int(resultLabel.text!)!
        resultLabel.text = "0"
    }
    
    @objc func buttonPlusTapped(){
        operation = "+"
        firstNumber = Int(resultLabel.text!)!
        resultLabel.text = "0"
    }
    
    @objc func buttonMinusTapped(){
        operation = "-"
        firstNumber = Int(resultLabel.text!)!
        resultLabel.text = "0"
    }
    
    @objc func buttonDecimalTapped(){
        if resultLabel.text!.count < 8 {
            if resultLabel.text?.range(of: ",") == nil{
                
                if resultLabel.text == "0"{
                    resultLabel.text = "0,"
                } else {
                    resultLabel.text! += ","
                }
            }
        }
    }
    
    @objc func buttonEqualsTapped(){
        secondNumber = Int(resultLabel.text!)!
        if operation == "+" {
            resultLabel.text = String(firstNumber + secondNumber)
        } else if operation == "-" {
            resultLabel.text = String(firstNumber - secondNumber)
        } else if operation == "*" {
            resultLabel.text = String(firstNumber * secondNumber)
        } else if operation == "/" {
            resultLabel.text = String(firstNumber / secondNumber)
        }
        
    }
    
    
    
}

private extension ViewController{
    
    func setupView(){
        
        view.addSubview(resultLabel)
        resultLabel.text = "0"
        resultLabel.textAlignment = .right
        resultLabel.adjustsFontSizeToFitWidth = true
        resultLabel.textColor = .white
        resultLabel.font = .systemFont(ofSize: 90, weight: .light)
        
        
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        view.addSubview(button5)
        view.addSubview(button6)
        view.addSubview(button7)
        view.addSubview(button8)
        view.addSubview(button9)
        view.addSubview(buttonAC)
        view.addSubview(buttonPlusMinus)
        view.addSubview(buttonPercent)
        view.addSubview(buttonDivision)
        view.addSubview(buttonX)
        view.addSubview(buttonMinus)
        view.addSubview(buttonPlus)
        view.addSubview(buttonDecimal)
        view.addSubview(buttonEquals)
        view.addSubview(button0)
    }
    
    func setupButtonProps(){
        button1.setTitle("1", for: .normal)
        button2.setTitle("2", for: .normal)
        button3.setTitle("3", for: .normal)
        button4.setTitle("4", for: .normal)
        button5.setTitle("5", for: .normal)
        button6.setTitle("6", for: .normal)
        button7.setTitle("7", for: .normal)
        button8.setTitle("8", for: .normal)
        button9.setTitle("9", for: .normal)
        button0.setTitle("0", for: .normal)
        buttonAC.setTitle("AC", for: .normal)
        buttonPlusMinus.setTitle("±", for: .normal)
        buttonPercent.setTitle("%", for: .normal)
        buttonDivision.setTitle("÷", for: .normal)
        buttonX.setTitle("×", for: .normal)
        buttonMinus.setTitle("−", for: .normal)
        buttonPlus.setTitle("+", for: .normal)
        buttonDecimal.setTitle(",", for: .normal)
        buttonEquals.setTitle("=", for: .normal)
        
        button1.setTitleColor(.white, for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button3.setTitleColor(.white, for: .normal)
        button4.setTitleColor(.white, for: .normal)
        button5.setTitleColor(.white, for: .normal)
        button6.setTitleColor(.white, for: .normal)
        button7.setTitleColor(.white, for: .normal)
        button8.setTitleColor(.white, for: .normal)
        button9.setTitleColor(.white, for: .normal)
        button0.setTitleColor(.white, for: .normal)
        buttonAC.setTitleColor(.black, for: .normal)
        buttonPlusMinus.setTitleColor(.black, for: .normal)
        buttonPercent.setTitleColor(.black, for: .normal)
        buttonDivision.setTitleColor(.white, for: .normal)
        buttonX.setTitleColor(.white, for: .normal)
        buttonMinus.setTitleColor(.white, for: .normal)
        buttonPlus.setTitleColor(.white, for: .normal)
        buttonDecimal.setTitleColor(.white, for: .normal)
        buttonEquals.setTitleColor(.white, for: .normal)
        
        button1.addTarget(self, action: #selector(button1Tapped), for: .touchUpInside)
        button2.addTarget(self, action: #selector(button2Tapped), for: .touchUpInside)
        button3.addTarget(self, action: #selector(button3Tapped), for: .touchUpInside)
        button4.addTarget(self, action: #selector(button4Tapped), for: .touchUpInside)
        button5.addTarget(self, action: #selector(button5Tapped), for: .touchUpInside)
        button6.addTarget(self, action: #selector(button6Tapped), for: .touchUpInside)
        button7.addTarget(self, action: #selector(button7Tapped), for: .touchUpInside)
        button8.addTarget(self, action: #selector(button8Tapped), for: .touchUpInside)
        button9.addTarget(self, action: #selector(button9Tapped), for: .touchUpInside)
        button0.addTarget(self, action: #selector(button0Tapped), for: .touchUpInside)
        buttonAC.addTarget(self, action: #selector(buttonACTapped), for: .touchUpInside)
        buttonPlusMinus.addTarget(self, action: #selector(buttonPlusMinusTapped), for: .touchUpInside)
        buttonPercent.addTarget(self, action: #selector(buttonPercentTapped), for: .touchUpInside)
        buttonDivision.addTarget(self, action: #selector(buttonDivisionTapped), for: .touchUpInside)
        buttonX.addTarget(self, action: #selector(buttonXTapped), for: .touchUpInside)
        buttonMinus.addTarget(self, action: #selector(buttonMinusTapped), for: .touchUpInside)
        buttonPlus.addTarget(self, action: #selector(buttonPlusTapped), for: .touchUpInside)
        buttonDecimal.addTarget(self, action: #selector(buttonDecimalTapped), for: .touchUpInside)
        buttonEquals.addTarget(self, action: #selector(buttonEqualsTapped), for: .touchUpInside)
        
        buttonAC.backgroundColor = .lightGray
        buttonPlusMinus.backgroundColor = .lightGray
        buttonPercent.backgroundColor = .lightGray
        buttonDivision.backgroundColor = .systemOrange
        buttonX.backgroundColor = .systemOrange
        buttonMinus.backgroundColor = .systemOrange
        buttonPlus.backgroundColor = .systemOrange
        buttonEquals.backgroundColor = .systemOrange
        buttonDecimal.backgroundColor = .darkGray
        button1.backgroundColor = .darkGray
        button2.backgroundColor = .darkGray
        button3.backgroundColor = .darkGray
        button4.backgroundColor = .darkGray
        button5.backgroundColor = .darkGray
        button6.backgroundColor = .darkGray
        button7.backgroundColor = .darkGray
        button8.backgroundColor = .darkGray
        button9.backgroundColor = .darkGray
        button0.backgroundColor = .darkGray
        
        buttonAC.titleLabel?.font = .systemFont(ofSize: 35)
        buttonPlusMinus.titleLabel?.font = .systemFont(ofSize: 35)
        buttonPercent.titleLabel?.font = .systemFont(ofSize: 35)
        buttonDivision.titleLabel?.font = .systemFont(ofSize: 35, weight: .bold)
        buttonX.titleLabel?.font = .systemFont(ofSize: 35, weight: .bold)
        buttonMinus.titleLabel?.font = .systemFont(ofSize: 35, weight: .bold)
        buttonPlus.titleLabel?.font = .systemFont(ofSize: 35, weight: .bold)
        buttonEquals.titleLabel?.font = .systemFont(ofSize: 35, weight: .bold)
        button1.titleLabel?.font = .systemFont(ofSize: 35)
        button2.titleLabel?.font = .systemFont(ofSize: 35)
        button3.titleLabel?.font = .systemFont(ofSize: 35)
        button4.titleLabel?.font = .systemFont(ofSize: 35)
        button5.titleLabel?.font = .systemFont(ofSize: 35)
        button6.titleLabel?.font = .systemFont(ofSize: 35)
        button7.titleLabel?.font = .systemFont(ofSize: 35)
        button8.titleLabel?.font = .systemFont(ofSize: 35)
        button9.titleLabel?.font = .systemFont(ofSize: 35)
        button0.titleLabel?.font = .systemFont(ofSize: 35)
        
        
        button1.layer.cornerRadius = 40
        button2.layer.cornerRadius = 40
        button3.layer.cornerRadius = 40
        button4.layer.cornerRadius = 40
        button5.layer.cornerRadius = 40
        button6.layer.cornerRadius = 40
        button7.layer.cornerRadius = 40
        button8.layer.cornerRadius = 40
        button9.layer.cornerRadius = 40
        button0.layer.cornerRadius = 40
        buttonAC.layer.cornerRadius = 40
        buttonPlusMinus.layer.cornerRadius = 40
        buttonPercent.layer.cornerRadius = 40
        buttonDivision.layer.cornerRadius = 40
        buttonX.layer.cornerRadius = 40
        buttonMinus.layer.cornerRadius = 40
        buttonPlus.layer.cornerRadius = 40
        buttonDecimal.layer.cornerRadius = 40
        buttonEquals.layer.cornerRadius = 40
    }
    
    func setupConstrains(){
        resultLabel.snp.makeConstraints{make in
            make.width.equalTo(view.snp.width).multipliedBy(0.9)
            make.centerX.equalTo(view.snp.centerX)
            make.bottom.equalTo(buttonDivision.snp.top).inset(-15)
        }
        
        buttonAC.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(button7.snp.top).inset(-15)
        }
        buttonPlusMinus.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonAC.snp.right).offset(10)
            make.bottom.equalTo(button8.snp.top).inset(-15)
        }
        buttonPercent.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonPlusMinus.snp.right).offset(10)
            make.bottom.equalTo(button9.snp.top).inset(-15)
        }
        buttonDivision.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(buttonPercent.snp.right).offset(10)
            make.bottom.equalTo(buttonX.snp.top).inset(-15)
        }
        
        
        button7.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(button4.snp.top).offset(-15)
        }
        button8.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(button7.snp.right).offset(10)
            make.bottom.equalTo(button5.snp.top).inset(-15)
        }
        button9.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(button8.snp.right).offset(10)
            make.bottom.equalTo(button6.snp.top).inset(-15)
        }
        buttonX.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(button9.snp.right).offset(10)
            make.bottom.equalTo(buttonMinus.snp.top).inset(-15)
        }
        
        
        button4.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(button1.snp.top).inset(-15)
        }
        button5.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(button4.snp.right).offset(10)
            make.bottom.equalTo(button2.snp.top).inset(-15)
        }
        button6.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(button5.snp.right).offset(10)
            make.bottom.equalTo(button3.snp.top).inset(-15)
        }
        buttonMinus.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(button6.snp.right).offset(10)
            make.bottom.equalTo(buttonPlus.snp.top).inset(-15)
        }
        
        
        button1.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(button0.snp.top).inset(-15)
        }
        button2.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(button1.snp.right).offset(10)
            make.bottom.equalTo(button0.snp.top).inset(-15)
        }
        button3.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(button2.snp.right).offset(10)
            make.bottom.equalTo(buttonDecimal.snp.top).inset(-15)
        }
        buttonPlus.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.left.equalTo(button3.snp.right).offset(10)
            make.bottom.equalTo(buttonEquals.snp.top).inset(-15)
        }
        
        button0.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(170)
            make.bottom.equalToSuperview().inset(50)
            make.left.equalToSuperview().offset(20)
        }
        
        buttonDecimal.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.bottom.equalToSuperview().inset(50)
            make.left.equalTo(button0.snp.right).offset(10)
        }
        buttonEquals.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.bottom.equalTo(view.snp.bottom).inset(50)
            make.left.equalTo(buttonDecimal.snp.right).offset(10)
        }
    }
    
}
