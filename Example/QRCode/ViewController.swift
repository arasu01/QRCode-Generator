//
//  ViewController.swift
//  QRCode
//
//  Created by Arasuvel T on 25/01/19.
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bwImageView: UIImageView?
    @IBOutlet weak var colorImageView: UIImageView?
    @IBOutlet weak var inputTextField: UITextField?
    @IBOutlet weak var generateButton: UIButton?

    let swiftLeeOrangeColor = UIColor(red:0.93, green:0.31, blue:0.23, alpha:1.00)
//    let swiftLeeLogo = UIImage(named: "swiftlee_qr_logo.png")!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let imageView = UIImageView(image: UIImage(ciImage: qrURLImage))
//        imageView.contentMode = .center
//        imageView.layer.backgroundColor = UIColor.white.cgColor
//        self.view = imageView
        
        
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        } else {
            // Fallback on earlier versions
        }
    }

    @IBAction func generateButtonPressed(_sender: Any) {
        let text = inputTextField?.text
        let bwImage = UIImage(ciImage: QRCodeGenerator.generateQRImage(string: text!)!)
        bwImageView?.image = bwImage
        
        let colorImage = UIImage(ciImage: QRCodeGenerator.generateQRImage(string: text!, using: swiftLeeOrangeColor)!)
        colorImageView?.image = colorImage
    }
    

}

