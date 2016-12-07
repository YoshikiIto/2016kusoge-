//
//  ViewController.swift
//  kusoge-3
//
//  Created by YoshikiIto on 2016/12/07.
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

    var timer = Timer()
    var countNum = 0
    var isRunning = false
    
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var labelStatus: UILabel!

    @IBAction func tapStart(_ sender: Any) {
        if (isRunning == false) {
            labelTime.text = "00:00.00"
            labelStatus.text = "Running..."
            isRunning = true
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
            isRunning = true

        }

    }
    
    @IBAction func tapStop(_ sender: Any) {
        if (isRunning == true) {
            timer.invalidate()
            //labelStatus.text = "Ready..."
            isRunning = false
            let ms = countNum % 100
            let s = (countNum - ms) / 100 % 60
            let m = (countNum - s - ms) / 6000 % 3600
            labelTime.text = String(format: "%02d:%02d.%02d", m, s, ms)
            judgeResult()
            print(countNum)
            countNum = 0
        }
    }
    
    func update() {
        countNum += 1
        //timeFormat(countNum: countNum)
    }
    
    func judgeResult() {
        if (countNum == 1000) {
            labelStatus.text = "Perfect!"
        } else if (990 <= countNum && countNum <= 1010) {
            labelStatus.text = "Wonderful!"
        } else if (900 <= countNum && countNum <= 1100) {
            labelStatus.text = "Good"
        } else {
            labelStatus.text = "Too bad..."
        }
    }
}

