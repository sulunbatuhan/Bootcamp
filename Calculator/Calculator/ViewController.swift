//
//  ViewController.swift
//  Calculator
//
//  Created by batuhan on 26.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblGosterim: UILabel!
    @IBOutlet weak var lblSonuc: UILabel!
    
    var math :String = ""
    var sayi1 :Double?
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func ClearAll(_ sender: UIButton) {
        
        lblSonuc.text = ""
        lblGosterim.text = ""
    }
    
    
    @IBAction func topla(_ sender: UIButton) {
        
        sayi1 = Double(lblGosterim.text!)
        lblGosterim.text = ""
        lblSonuc.text = "+"
        math = "+"
        
    }
    
    @IBAction func cikar(_ sender: UIButton) {
        
       
        sayi1 = Double(lblGosterim.text!)
        
        lblGosterim.text = ""
        lblSonuc.text = "-"
        math = "-"
    }
    
    
    @IBAction func carp(_ sender: UIButton) {
        
        sayi1 = Double(lblGosterim.text!)
        lblGosterim.text = ""
       lblSonuc.text = "*"
        math = "*"
    }
    
    
    @IBAction func Bolme(_ sender: UIButton) {
        
        sayi1 = Double(lblGosterim.text!)
        lblGosterim.text = ""
       lblSonuc.text = "/"
        math = "/"
        
        
    }
    @IBAction func mutlakValue(_ sender: UIButton) {
        sayi1 = Double(lblGosterim.text!)
       
        print(abs(sayi1!))
      
    }
    
    @IBAction func Sonuc(_ sender: UIButton) {
        
    let sayi2 = Double(lblGosterim.text!)
    sonuc(math: math, sayi1: sayi1!, sayi2: sayi2!)
        
        
        
        
    }
    
    
    
    
    
    //Number
    
    @IBAction func numZero(_ sender: UIButton) {
        lblGosterim.text = lblGosterim.text! + "0"
        
    }
    @IBAction func numOne(_ sender: UIButton) {
        lblGosterim.text = lblGosterim.text! + "1"
        
    }
    @IBAction func numTwo(_ sender: UIButton) {
        lblGosterim.text = lblGosterim.text! + "2"
        
    }
    @IBAction func numThree(_ sender: UIButton) {
      lblGosterim.text = lblGosterim.text! + "3"
        
    }
    @IBAction func numFour(_ sender: UIButton) {
     lblGosterim.text = lblGosterim.text! + "4"
  }
    @IBAction func numFive(_ sender: UIButton) {
       lblGosterim.text = lblGosterim.text! + "5"
    }
    @IBAction func numSix(_ sender: UIButton) {
        lblGosterim.text = lblGosterim.text! + "6"
    }
    @IBAction func numSeven(_ sender: UIButton) {
        lblGosterim.text = lblGosterim.text! + "7"
    }
    @IBAction func numEight(_ sender: UIButton) {
        lblGosterim.text = lblGosterim.text! + "8"
    }
    @IBAction func numNine(_ sender: UIButton) {
        lblGosterim.text = lblGosterim.text! + "9"
    }
    @IBAction func numDoubleZero(_ sender: UIButton) {
        lblGosterim.text = lblGosterim.text! + "00"
        
    }
    
    
    
    //Math
    
    func ToplamaIslemi(sayi1 : Double,sayi2 : Double)-> Double{
        let sonuc = sayi1 + sayi2
       
        return sonuc
    }
    
    
    func CikarmaIslemi(sayi1 : Double,sayi2 : Double)-> Double{
        var sonuc = sayi1 - sayi2
       
        return sonuc
    }
    
    
    func BolmeIslemi(sayi1 : Double,sayi2 : Double)-> Double{
        let sonuc = sayi1 / sayi2
     
        return sonuc
    }
    
    
    func CarpmaIslemi(sayi1 : Double,sayi2 : Double)-> Double{
        let sonuc = sayi1 * sayi2
      
        
        return sonuc
    }
    
    
    
    
    
    
    
    func sonuc(math : String,sayi1 : Double,sayi2 : Double){
     
        var Final : Double
       
        
        switch math {
        case "+" :
            Final = ToplamaIslemi(sayi1: Double(sayi1), sayi2: sayi2)
            lblSonuc.text = String(Final)
       
        case "-" :
            Final = CikarmaIslemi(sayi1: Double(sayi1), sayi2: sayi2)
            lblSonuc.text = String(Final)
        case "*" :
            Final = CarpmaIslemi(sayi1: Double(sayi1), sayi2: sayi2)
            lblSonuc.text = String(Final)
        case "/" :
            Final = BolmeIslemi(sayi1: Double(sayi1), sayi2: sayi2)
            lblSonuc.text = String(Final)
       default:
            print(111111)
        }
        
        
        
        
    }
   
    
    
    
}

