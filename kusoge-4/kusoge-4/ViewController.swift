//
//  ViewController.swift
//  kusoge-4
//
//  Created by YoshikiIto on 2016/12/09.
//  Copyright © 2016年 YoshikiIto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var label0: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!

    var val0 = 7, val1 = 7, val2 = 7
    var timer0 = Timer()
    var timer1 = Timer()
    var timer2 = Timer()
    var isRunning0 = false, isRunning1 = false, isRunning2 = false
    
    @IBAction func tapLabel0(_ sender: Any) {
        if isRunning0 {
            timer0.invalidate()
            isRunning0 = false
        }
    }
    @IBAction func tapLabel1(_ sender: Any) {
        if isRunning1 {
            timer1.invalidate()
            isRunning1 = false
        }
    }
    @IBAction func tapLabel2(_ sender: Any) {
        if isRunning2 {
            timer2.invalidate()
            isRunning2 = false
        }
    }


    @IBAction func tapStart(_ sender: Any) {
        timer0 = Timer.scheduledTimer(timeInterval: 0.031, target: self, selector: #selector(ViewController.update0), userInfo: nil, repeats: true)
        timer1 = Timer.scheduledTimer(timeInterval: 0.033, target: self, selector: #selector(ViewController.update1), userInfo: nil, repeats: true)
        timer2 = Timer.scheduledTimer(timeInterval: 0.032, target: self, selector: #selector(ViewController.update2), userInfo: nil, repeats: true)
        isRunning0 = true
        isRunning1 = true
        isRunning2 = true
    }
    
    func update0() {
        val0 = (val0 + 1) % 10
        label0.text = String(val0)
    }
    func update1() {
        val1 = (val1 + 1) % 10
        label1.text = String(val1)
    }
    func update2() {
        val2 = (val2 + 1) % 10
        label2.text = String(val2)
    }
    

}

