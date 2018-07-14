//
//  TableCell.swift
//  MemeMe V2
//
//  Created by Phizer Cost on 7/12/18.
//  Copyright © 2018 Phizer Cost. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    
    @IBOutlet weak var imageMeme: UIImageView!
    
    //@IBOutlet weak var textMeme: UILabel!
    
   // func setMeme(text: String, image: UIImage){
    func setMeme(image: UIImage){
        imageMeme.image = image
        //textMeme.text = text
    }
    
}
