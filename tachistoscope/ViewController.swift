//
//  ViewController.swift
//  tachistoscope
//
//  Created by 小泉心之介 on 2016/06/03.
//  Copyright © 2016年 小泉心之介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var  teamMemberLabel: UILabel!
    
    let teamMemberArray: [String] = ["へーわ"," ","そーり"," ","のすけ"," ","タカキ"," ","シュン"," ","はしお"," "]
    
    var index: Int = 0
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func change(){
       NSTimer.scheduledTimerWithTimeInterval(1,
                    target: self,
                    selector: #selector(self.countUp),
                    userInfo: nil,
                    repeats: true )
                    
        }
    
    func countUp () {
        //それぞれのラベルに配列の要素を追加する
        
        teamMemberLabel.text = teamMemberArray[index]
        
        
        
        //indexの値を+1する
        
        
        
        index = index + 1
        
        
        
        //indexの値が5より多くなったら0に戻す
        
        if index > 5{
            
            index = 0
            

        
    }
    
    }

}



