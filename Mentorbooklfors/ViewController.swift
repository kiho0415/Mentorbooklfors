//
//  ViewController.swift
//  Mentorbooklfors
//
//  Created by 森田貴帆 on 2020/09/06.
//  Copyright © 2020 森田貴帆. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var mentorArray:[Mentor] = []
    
    @IBOutlet var courselabel: UILabel!
    @IBOutlet var nicknamelabel: UILabel!
    @IBOutlet var pic: UIImageView!
    var index: Int = 0
    
    override func didReceiveMemoryWarning() {
        self.didReceiveMemoryWarning()
    }
    
    func setUI(){
        
        if index > 2{
            index = 0
        }else if index < 0{
            index = 2
        }
        pic.image = mentorArray[index].getImage()
        nicknamelabel.text = mentorArray[index].name
        courselabel.text = mentorArray[index].course
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "ハム", course: "iPhone", imageName: "ハム.jpg"))
        mentorArray.append(Mentor(name: "エダマメ", course: "Android", imageName: "まめ.jpg"))
        mentorArray.append(Mentor(name: "ブルズアイ", course: "Unity", imageName: "ブル.jpg"))
        setUI()
    }
    
    @IBAction func next() {
        index = index + 1
        setUI()
    }
    @IBAction func back() {
        index = index - 1
        setUI()
    }

}

