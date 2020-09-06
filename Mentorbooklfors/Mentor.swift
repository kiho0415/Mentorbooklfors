//
//  Mentor.swift
//  Mentorbooklfors
//
//  Created by 森田貴帆 on 2020/09/06.
//  Copyright © 2020 森田貴帆. All rights reserved.
//

import UIKit

class Mentor{
    var name: String!
    var course: String!
    var imageName: String! //画像の名前
    
    //初期化　引数で上の3つをもらって設定
    init(name: String, course: String, imageName: String){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    //画像をUIImageに変換するメソッド
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
