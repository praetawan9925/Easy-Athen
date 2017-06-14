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
    let dicUser = ["master": "1234", "doramon": "5678", "nobita": "1234"]
    
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    
    @IBAction func loginButton(_ sender: Any) {
        
     messageLabel.text = ""
        
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
        if checkSpace(myString: strUser!) && checkSpace(myString: strPassword!){
            
            // No space
            print("No Space")
            showMessage(strMessage: "User and Password OK")
            checkUserAndPass(strUser: strUser!, strPassword: strPassword!)
        }   else {
            
            //Have space
            print("Have Space")
            showMessage(strMessage: "Please fill Every Bank")
        }
        
        
        
        
        
    }//loginButton
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    } //Main Method คือ เมธอดแรกในการทำงาน 
    func checkUserAndPass(strUser: String, strPassword: String) -> Void {
        
        //Check User
        if let testUser = dicUser[strUser] {
            print("testUser ==> \(testUser)")
        } else {
          print("testUser nil")
          showMessage(strMessage: "No" + strUser + "in my database")
        }
    }
    
    
    func showMessage(strMessage: String) -> Void {
        messageLabel.text = strMessage
    }
    
    func checkSpace(myString: String) -> Bool {
        let intString = myString.characters.count
        var result: Bool = true
        
        if intString == 0 {
           //Have Space คือ ความว่างเปล่า
            result = false
        }
        
        
        
        
        return result
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }  //ตัวจัดการหน่วยความจำ

    
    

} //Main  Class

