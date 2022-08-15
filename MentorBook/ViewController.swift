//
//  ViewController.swift
//  MentorBook
//
//  Created by 長崎茉優 on 2022/08/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameLabel:UILabel!
    @IBOutlet var courseLabel:UILabel!
    @IBOutlet var imageView:UIImageView!
    
    var mentorArray: [Mentor] = []
    
    var index: Int = 0
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    func reset(){
      if index > 2{
            index = 0
        } else if index < 0 {
            index = 2
                }
            }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "WebS,WebD"))
        
        setUI()
    }
    
    @IBAction func mae(){
        index = index - 1
        reset()
        setUI()
    }
    
    @IBAction func tugi(){
        index = index + 1
        reset()
        setUI()
    }


}

