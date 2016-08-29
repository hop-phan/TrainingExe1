//
//  ViewController.swift
//  TrainingExe1
//
//  Created by HopPD on 8/29/16.
//  Copyright © 2016 HopPD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //Khai bao mang String
    var mang : [String] = ["A", "B"]
    var arrayAge = [Int]()
    
    
    //Khai bao dictionary
    var userA = ["Name":"A", "Age" : "10", "Address": "Ha Noi" , "Phone" :"0123456789"]
    var userB = ["Name":"B", "Age" : "13", "Address": "Da nang" , "Phone" :"0123456788"]
    var userC = ["Name":"C", "Age" : "9", "Address": "Ho Chi Minh" , "Phone" :"9123456789"]
    var userD = ["Name":"D", "Age" : "2", "Address": "Ho Chi Minh" , "Phone" :"9123456789"]
    
    
    //khai bao mang Dictionary
    var arrayUser : [[String:String]] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        inRaManhinh()
    }
    
    func inRaManhinh(){
        
        arrayUser+=[userA, userB, userC, userD]
        
        print("Hello World \n")
        
        
        print("***************")
        print("*             *")
        print("*             *")
        print("*             *")
        print("*             *")
        print("*             *")
        print("*             *")
        print("*             *")
        print("*             *")
        print("*             *")
        print("***************")
        print (" \n \nPhan tu mang truoc khi them bao gom  A & B")
        
        for element in mang {
            print(element)
        }
        mang.append("C")
        
        
        print (" \nPhan tu mang sau  khi them bao gom  A & B & C")
        
        for element in mang {
            print(element)
        }
        //in ra ten cua userA dictionary
        print (" \nIn ra tên của userA")
        if let userName = userA["Name"]{
            print(userName)
        }
        else {
            print("fail")
        }
        
        let sophantu = arrayUser.count
        
        // Lấy ra mảng các tuổi của user trong dictionary
        for index in 1 ... sophantu {
            
            arrayAge.append(Int(arrayUser[index-1]["Age"]!)!)
        }
        
        // Sắp xếp và in ra
        print(" \nSắp xếp mảng dictionary theo tuổi")
        
        arrayAge.sortInPlace()
        for age in  arrayAge {
            for index in 1 ... sophantu {
                
                if  age == Int(arrayUser[index-1]["Age"]!) {
                    print(arrayUser[index-1])
                    
                }
            }
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

