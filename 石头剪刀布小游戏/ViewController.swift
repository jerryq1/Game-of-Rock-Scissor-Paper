//
//  ViewController.swift
//  石头剪刀布小游戏
//
//  Created by jerry on 16/7/4.
//  Copyright © 2016年 jerry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var rsp = Rsp()
    
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    
    @IBAction func Rock(sender: AnyObject) {
        rsp.setStat(.Rock)
        yunxing()
    }
    
    @IBAction func Scissor(sender: AnyObject) {
        rsp.setStat(.Scissor)
        yunxing()
    }
    
    @IBAction func Paper(sender: AnyObject) {
        rsp.setStat(.Paper)
        yunxing()
    }
    
    @IBAction func reset(sender: AnyObject) {
        Label1.text = ""
        Label2.text = ""
    }
    func xianshi(stat3:Rsp.Stats,randomStat3:Rsp.Stats,result:Int){
        var statString = ""
        var randomStatString = ""
        var resultString = ""
        
        switch stat3{
        case .Rock:
            statString = "你出的是👊,"
        case .Scissor:
            statString = "你出的是✌️,"
        case .Paper:
            statString = "你出的是✋,"
        }
        
        switch randomStat3{
        case .Rock:
            randomStatString = "👾出的是👊"
        case .Scissor:
            randomStatString = "👾出的是✌️"
        case .Paper:
            randomStatString = "👾出的是✋"
        }
        
        switch result{
        case 0:
            resultString = "很遗憾，你奈何不了👾，你们打平了~"
        case 1:
            resultString = "卧槽，你居然打赢了👾!"
        case 2:
            resultString = "getdead，你被👾按在地上摩擦了...."
        default:
            print("Error2")
        }
        Label1.text = statString+randomStatString
        Label2.text = resultString
    }
    //这是一个显示方法，根据三个输入的三个变量得出三个结论并且显示在预先设定的label上
    
    func yunxing(){
        let stat = rsp.getStat()
        let randomStat = rsp.getRandomStat()
        let result = rsp.compare(stat, randomStat2: randomStat)
        xianshi(stat, randomStat3: randomStat, result: result)
    }
    //这将所有需要用到的方法调用然后系统运行
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

