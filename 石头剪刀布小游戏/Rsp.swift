//
//  Rsp.swift
//  石头剪刀布小游戏
//
//  Created by jerry on 16/7/4.
//  Copyright © 2016年 jerry. All rights reserved.
//

import Foundation

struct Rsp {
    
    var stat:Stats!
    //定义当前选项为枚举里面的其中一个选项，不为空
    
    
    
    enum Stats{
        case Rock
        case Scissor
        case Paper
    }
    //定义枚举，列出枚举所包含的内容
    
    mutating func setStat(stat1:Stats){
        stat = stat1
    }
    //定义方法，设置当前选项
    
    func getStat()->Stats{
        return stat
    }
    //定义方法，返回当前选项
    
    func getRandomStat()->Stats{
        var randomStat:Stats!
        //定义机器选项为枚举里面的其中一个选项，不为空
        let randomNumber = arc4random_uniform(3)
        switch randomNumber{
        case 0:
            randomStat = .Rock
        case 1:
            randomStat = .Scissor
        case 2:
            randomStat = .Paper
        default:
            print("Error1")
        }
        return randomStat
    }
    //定义方法，返回一个电脑随机选项
    
    func compare(stat2:Stats,randomStat2:Stats)->Int{
        var result = 0
        
        switch stat2{
        case .Rock:
            switch randomStat2{
            case .Rock:
                result = 0
            case .Scissor:
                result = 1
            case .Paper:
                result = 2
            }
        case .Scissor:
            switch randomStat2{
            case .Rock:
                result = 2
            case .Scissor:
                result = 0
            case .Paper:
                result = 1
            }
        case .Paper:
            switch randomStat2{
            case .Rock:
                result = 1
            case .Scissor:
                result = 2
            case .Paper:
                result = 0
            }
        }
        return result
    }
    /*这里是一个对比方法，输入人机选项得出对比结论，设置结果有三种：
    0.打平
    1.人赢
    2.机器赢
    */
    
}