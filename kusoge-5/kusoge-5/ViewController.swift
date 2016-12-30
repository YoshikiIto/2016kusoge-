//
//  ViewController.swift
//  kusoge-5
//
//  Created by YoshikiIto on 2016/12/30.
//  Copyright © 2016年 YoshikiIto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var countNum = 10
    var timer = Timer()
    var isRunning = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var card00: UIButton!
    @IBOutlet weak var label00: UILabel!
    @IBOutlet weak var labelTimer: UILabel!
    
    @IBAction func click00(_ sender: Any) {
        if (isRunning == true) {
            label00.text = String(Int(label00.text!)!+1)
        }
    }
    
    @IBAction func clickSTART(_ sender: Any) {
        
        if (countNum == 10 && isRunning == false) {
            isRunning = true
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func clickRESET(_ sender: Any) {
        label00.text = "0"
        countNum = 10
        labelTimer.text = "10"
        timer.invalidate()
        isRunning = false
    }
    
    func update() {
        countNum -= 1
        labelTimer.text = String(countNum)
        if (countNum == 0) {
            isRunning = false
            timer.invalidate()
        }
    }
    
    
}

