//
//  ViewController.swift
//  RGBcolors
//
//  Created by 123 on 2019/01/31.
//  Copyright © 2019 123. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var redSlinder: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var TableView: UITableView!
    
    var r = 128
    var g = 128
    var b = 128
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    func check(_ checkColor: Int)-> Int{
        var color = checkColor
        if color < 0{
            color = 0
        }else if color > 255{
            color = 255
        }
        return color
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "RGBcolors")
        
        var red = r
        var green = g
        var blue = b
    
        switch indexPath.row {
        case 1:
            red = check(r-20)
        case 2:
            red = check(r-10)
        case 3:
            red = check(r+10)
        case 4:
            red = check(r+20)
        case 5:
            green = check(g-20)
        case 6:
            green = check(g-10)
        case 7:
            green = check(g+10)
        case 8:
            green = check(g+20)
        case 9:
            blue = check(b-20)
        case 10:
            blue = check(b-10)
        case 11:
            blue = check(b+10)
        case 12:
            blue = check(b+20)
        default:
            break // do nothing
        }
        
        let cellColor = UIColor(displayP3Red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: 1)
        
        cell.backgroundColor = cellColor
        cell.textLabel?.text = "Red:\(red) Green:\(green) Blue:\(blue)"
        cell.detailTextLabel?.text = "similercolor"
        
        return cell
        
    }
    
    @IBAction func redValueChanged(_ sender: Any) {
        r = Int(redSlinder.value)
        TableView.reloadData()
    }
    
    @IBAction func grennValueChanged(_ sender: Any) {
        g = Int(greenSlider.value)
        TableView.reloadData()
    }
    
    @IBAction func blueValueChanged(_ sender: Any) {
        b = Int(blueSlider.value)
        TableView.reloadData()
    }
    
}
























