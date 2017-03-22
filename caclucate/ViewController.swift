//
//  ViewController.swift
//  caclucate
//
//  Created by lxb on 2017/3/22.
//  Copyright © 2017年 吕汐. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numText1: UITextField?
    var numText2: UITextField?
    var resultLabel: UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupSubViews()
    }
    
    func setupSubViews()->(){
        
        // 两个textFiled
        let tf1 = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30))
        tf1.borderStyle = .roundedRect
        tf1.text = "0"
        
        view.addSubview(tf1)
        
        let tf2 = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30))
        tf2.borderStyle = .roundedRect
        tf2.text = "0"
        
        view.addSubview(tf2)
        
        // 记录属性
        numText1 = tf1
        numText2 = tf2

        
        // 2.三个label
        let l1 = UILabel(frame: CGRect(x: 120, y: 20, width: 20, height: 30))
        l1.text = "+"
        l1.textAlignment = .center
        
        view.addSubview(l1)
        
        let l2 = UILabel(frame: CGRect(x: 240, y: 20, width: 20, height: 30))
        l2.text = "="
        l2.textAlignment = .center
        
        view.addSubview(l2)
        
        let l3 = UILabel(frame: CGRect(x: 240, y: 20, width: 60, height: 30))
        l3.text = "0"
        l3.textAlignment = .center
        
        view.addSubview(l3)
        
        //记录属性
        resultLabel = l3
        
        // 3.一个button
        let button = UIButton()
        button.setTitle("计算", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    
    ///结果的计算
    func btnClick(){
        
        print(#function)
        print("\(numText1?.text) --- \(numText2?.text)")
        
        // 将文本框的内容转换为数值
        guard let mumber1 = Int(numText1?.text ?? ""),
            let number2 = Int(numText2?.text ?? "")else{
                
                print("必须输入数字才能计算")
                
                return
        }
        
        
        //处理结果
        resultLabel?.text =  "\(mumber1 + number2)"
    }

}

