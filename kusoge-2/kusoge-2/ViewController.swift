//
//  ViewController.swift
//  kusoge-2
//
//  Created by YoshikiIto on 2016/12/06.
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

    @IBOutlet weak var cell00: UIButton!
    @IBOutlet weak var cell01: UIButton!
    @IBOutlet weak var cell02: UIButton!
    @IBOutlet weak var cell10: UIButton!
    @IBOutlet weak var cell11: UIButton!
    @IBOutlet weak var cell12: UIButton!
    @IBOutlet weak var cell20: UIButton!
    @IBOutlet weak var cell21: UIButton!
    @IBOutlet weak var cell22: UIButton!
    @IBOutlet weak var label00: UILabel!
    @IBOutlet weak var label01: UILabel!
    @IBOutlet weak var label02: UILabel!
    @IBOutlet weak var label10: UILabel!
    @IBOutlet weak var label11: UILabel!
    @IBOutlet weak var label12: UILabel!
    @IBOutlet weak var label20: UILabel!
    @IBOutlet weak var label21: UILabel!
    @IBOutlet weak var label22: UILabel!
    @IBOutlet weak var labelResult: UILabel!

    /*player 0, com 1*/
    var turn = 0
    
    @IBAction func btnRESET(_ sender: Any) {
        label00.text = ""
        label01.text = ""
        label02.text = ""
        label10.text = ""
        label11.text = ""
        label12.text = ""
        label20.text = ""
        label21.text = ""
        label22.text = ""
        labelResult.text = ""
    }
    
    @IBAction func bntRESET3(_ sender: Any) {
        label00.text = ""
        label01.text = ""
        label02.text = ""
        label10.text = ""
        label11.text = ""
        label12.text = ""
        label20.text = ""
        label21.text = ""
        label22.text = ""
        labelResult.text = ""
        com_tap()
    }
    @IBAction func tap00(_ sender: Any) {
        if (label00.text == "" && labelResult.text == "") {
            label00.text = "◯"
            hantei0()
            com_tap()
            hantei1()
        }
    }
    
    @IBAction func tap01(_ sender: Any) {
        if (label01.text == "" && labelResult.text == "") {
            label01.text = "◯"
            hantei0()
            com_tap()
            hantei1()
        }
    }
    
    
    @IBAction func tap02(_ sender: Any) {
        if (label02.text == "" && labelResult.text == "") {
            label02.text = "◯"
            hantei0()
            com_tap()
            hantei1()
        }
    }
    @IBAction func tap10(_ sender: Any) {
        if (label10.text == "" && labelResult.text == "") {
            label10.text = "◯"
            hantei0()
            com_tap()
            hantei1()
        }
    }
    @IBAction func tap11(_ sender: Any) {
        if (label11.text == "" && labelResult.text == "") {
            label11.text = "◯"
            hantei0()
            com_tap()
            hantei1()
        }
    }
    @IBAction func tap12(_ sender: Any) {
        if (label12.text == "" && labelResult.text == "") {
            label12.text = "◯"
            hantei0()
            com_tap()
            hantei1()
        }
    }
    @IBAction func tap20(_ sender: Any) {
        if (label20.text == "" && labelResult.text == "") {
            label20.text = "◯"
            hantei0()
            com_tap()
            hantei1()
        }
    }
    @IBAction func tap21(_ sender: Any) {
        if (label21.text == "" && labelResult.text == "") {
            label21.text = "◯"
            hantei0()
            com_tap()
            hantei1()
        }
    }
    @IBAction func tap22(_ sender: Any) {
        if (label22.text == "" && labelResult.text == "") {
            label22.text = "◯"
            hantei0()
            com_tap()
            hantei1()
        }
    }
    
    func com_tap() {
        var pos = arc4random() % 10
        
        while (setVal1(pos: Int(pos)) == false) {
            pos = arc4random() % 10
        }
    }
    
    func setVal1(pos:Int) -> Bool{
        var ret = false
        switch pos {
        case 0:
            if (label00.text == "") {
                label00.text = "✕"
                ret = true
            }
        case 1:
            if (label01.text == "") {
                label01.text = "✕"
                ret = true
            }
        case 2:
            if (label02.text == "") {
                label02.text = "✕"
                ret = true
            }
        case 3:
            if (label10.text == "") {
                label10.text = "✕"
                ret = true
            }
        case 4:
            if (label11.text == "") {
                label11.text = "✕"
                ret = true
            }
        case 5:
            if (label12.text == "") {
                label12.text = "✕"
                ret = true
            }
        case 6:
            if (label20.text == "") {
                label20.text = "✕"
                ret = true
            }
        case 7:
            if (label21.text == "") {
                label21.text = "✕"
                ret = true
            }
        case 8:
            if (label22.text == "") {
                label22.text = "✕"
                ret = true
            }
            
        default:
            ret = false
        }
        return ret
    }
    
    
    func hantei0() {
        if (label00.text == label01.text && label01.text == label02.text && label00.text != "") || (label10.text == label11.text && label11.text == label12.text && label10.text != "") || (label20.text == label21.text && label21.text == label22.text && label20.text != "") || (label00.text == label10.text && label10.text == label20.text && label00.text != "") || (label01.text == label11.text && label11.text == label21.text && label01.text != "") || (label02.text == label12.text && label12.text == label22.text && label02.text != "") || (label00.text == label11.text && label11.text == label22.text && label00.text != "") || (label20.text == label11.text && label11.text == label02.text && label20.text != "") {
            if (labelResult.text == "") {
                labelResult.text = "プレイヤーの勝ち"
            }
        }
    }
    
    func hantei1() {
        if (label00.text == label01.text && label01.text == label02.text && label00.text != "") || (label10.text == label11.text && label11.text == label12.text && label10.text != "") || (label20.text == label21.text && label21.text == label22.text && label20.text != "") || (label00.text == label10.text && label10.text == label20.text && label00.text != "") || (label01.text == label11.text && label11.text == label21.text && label01.text != "") || (label02.text == label12.text && label12.text == label22.text && label02.text != "") || (label00.text == label11.text && label11.text == label22.text && label00.text != "") || (label20.text == label11.text && label11.text == label02.text && label20.text != "") {
            if (labelResult.text == "") {
                labelResult.text = "iPhoneの勝ち"
            }
        }
    }
}

