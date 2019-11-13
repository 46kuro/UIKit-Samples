//
//  ViewController.swift
//  UIKit-Samples
//
//  Created by Shinji Kurosawa on 2019/11/11.
//  Copyright © 2019 Shinji Kurosawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    var style: NSMutableParagraphStyle {
        let style = NSMutableParagraphStyle() 
        style.alignment = .center
        style.lineBreakMode = .byTruncatingTail
        return style
    }
    
    var isButton1Short: Bool = false
    var isButton2Short: Bool = true
    var button1Text: String {
        isButton1Short ? "短いテキスト" : "めっちゃ長いテキストめっちゃ長いテキストめっちゃ長いテキストめっちゃ長いテキストめっちゃ長いテキスト"
    }
    var button2Text: String {
        isButton2Short ? "短いテキスト" : "めっちゃ長いテキストめっちゃ長いテキストめっちゃ長いテキストめっちゃ長いテキストめっちゃ長いテキスト"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button1.setAttributedTitle(NSAttributedString(string: button1Text, attributes: [ .paragraphStyle: style ]), for: .normal)
        button1.addTarget(self, action: #selector(didTapButton1), for: .touchUpInside)
        
        button2.setAttributedTitle(NSAttributedString(string: button2Text, attributes: [ .paragraphStyle: style ]), for: .normal)
        button2.addTarget(self, action: #selector(didTapButton2), for: .touchUpInside)
    }
    
    @objc func didTapButton1(_sender: UIButton) {
        isButton1Short.toggle()
        let string = NSAttributedString(string: button1Text, attributes: [ .paragraphStyle: style ])
        button1.setAttributedTitle(string, for: .normal)
    }
    
    @objc func didTapButton2(_sender: UIButton) {
        isButton2Short.toggle()
        let string = NSAttributedString(string: button2Text, attributes: [ .paragraphStyle: style ])
        button2.setAttributedTitle(string, for: .normal)
    }
}

