//
//  ViewController.swift
//  kusoge_1
//
//  Created by YoshikiIto on 2016/12/05.
//  Copyright © 2016年 YoshikiIto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelResult.text = "めをさがせ！"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBOutlet weak var btnSTART: UIButton!
    @IBOutlet weak var btn00: UIButton!
    @IBOutlet weak var btn01: UIButton!
    @IBOutlet weak var btn02: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn20: UIButton!
    @IBOutlet weak var btn21: UIButton!
    @IBOutlet weak var btn22: UIButton!
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

    @IBAction func tapSTART(_ sender: Any) {
        reset()
        let rand = arc4random_uniform(9)
        switch rand {
        case 0:
            label00.text = "め"
        case 1:
            label01.text = "め"
        case 2:
            label02.text = "め"
        case 3:
            label10.text = "め"
        case 4:
            label11.text = "め"
        case 5:
            label12.text = "め"
        case 6:
            label20.text = "め"
        case 7:
            label21.text = "め"
        case 8:
            label22.text = "め"
        default:
            label10.text = "め"
        }
        
        
    }
    
    @IBAction func tapBtn00(_ sender: Any) {
        if (label00.text == "ぬ" && labelResult.text != "正解") {
            labelResult.text = "不正解"
        }
        if (label00.text == "め") {
            labelResult.text = "正解"
        }
    }
    
    @IBAction func tapBtn01(_ sender: Any) {
        if (label01.text == "ぬ" && labelResult.text != "正解") {
            labelResult.text = "不正解"
        }
        if (label01.text == "め") {
            labelResult.text = "正解"
        }
    }
    
    @IBAction func tapBtn02(_ sender: Any) {
        if (label02.text == "ぬ" && labelResult.text != "正解") {
            labelResult.text = "不正解"
        }
        if (label02.text == "め") {
            labelResult.text = "正解"
        }
    }
    
    @IBAction func tapBtn10(_ sender: Any) {
        if (label10.text == "ぬ" && labelResult.text != "正解") {
            labelResult.text = "不正解"
        }
        if (label10.text == "め") {
            labelResult.text = "正解"
        }
    }
    
    @IBAction func tapBtn11(_ sender: Any) {
        if (label11.text == "ぬ" && labelResult.text != "正解") {
            labelResult.text = "不正解"
        }
        if (label11.text == "め") {
            labelResult.text = "正解"
        }
    }
    
    @IBAction func tapBtn12(_ sender: Any) {
        if (label12.text == "ぬ" && labelResult.text != "正解") {
            labelResult.text = "不正解"
        }
        if (label12.text == "め") {
            labelResult.text = "正解"
        }
    }
    
    @IBAction func tapBtn20(_ sender: Any) {
        if (label20.text == "ぬ" && labelResult.text != "正解") {
            labelResult.text = "不正解"
        }
        if (label20.text == "め") {
            labelResult.text = "正解"
        }
    }
    
    @IBAction func tapBtn21(_ sender: Any) {
        if (label21.text == "ぬ" && labelResult.text != "正解") {
            labelResult.text = "不正解"
        }
        if (label21.text == "め") {
            labelResult.text = "正解"
        }
    }
    
    @IBAction func tapBtn22(_ sender: Any) {
        if (label22.text == "ぬ" && labelResult.text != "正解") {
            labelResult.text = "不正解"
        }
        if (label22.text == "め") {
            labelResult.text = "正解"
        }
    }
    
    func reset() {
        label00.text = "ぬ"
        label01.text = "ぬ"
        label02.text = "ぬ"
        label10.text = "ぬ"
        label11.text = "ぬ"
        label12.text = "ぬ"
        label20.text = "ぬ"
        label21.text = "ぬ"
        label22.text = "ぬ"
        labelResult.text = "めをさがせ！"
    }
}

