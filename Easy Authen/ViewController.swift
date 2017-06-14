//
//  ViewController.swift
//  Easy Authen
//
//  Created by Student08 on 6/13/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    // Implicit
    var strUser: String?  //ถ้าประกาศตัวแปร แบบนี้เป็นการไม่กำหนดค่าเริ่มต้นให้มัน
    var strPassword: String?  //ถ้าประกาศตัวแปร แบบนี้เป็นการไม่กำหนดค่าเริ่มต้นให้มัน
    
    
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    
    @IBAction func loginButton(_ sender: Any) {
        
 // ฉันจะทำการดึงข้อมูลจากเท็กฟิลด์
        strUser = userTextField.text
        strPassword = passwordTextField.text
        
        // การโชว์ user & passsword
        print("User ==> \(strUser!)")  //  การใส่เครื่องหมายตกใจเพื่อบอกว่าจะไม่มีช่องว่างแน่นอน
        print("Password ==> \(strPassword!)")
        
        // นับจำนวนสตริงเพื่อเช็คว่าเท็กบอกซ์ไม่เป็นช่องว่าง
        let intUser = strUser?.characters.count
        let intPass = strPassword?.characters.count
        
        print("intUser ==> \(intUser!)")
        print("intPass ==> \(intPass!)")
        
        // Call chackspace
        if checkSpace(myString: strUser!) {
            print("user OK")
        }   else {
            print("Blank User")
        }
        
        
    }//loginButton
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } //Main Method คือ เมธอดแรกในการทำงาน 
    
    
    func checkSpace(myString: String) -> Bool {
        let intString = myString.characters.count
        var result: Bool = true
        
        if intString == 0 {
           //Have Space คือ ความว่างเปล่า
            result = false
        }
        
        
        
        
        return true
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }  //ตัวจัดการหน่วยความจำ


} //Main  Class

