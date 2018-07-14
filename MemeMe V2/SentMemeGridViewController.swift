//
//  SentMemeGridViewController.swift
//  MemeMe V2
//
//  Created by Phizer Cost on 7/13/18.
//  Copyright © 2018 Phizer Cost. All rights reserved.
//

import UIKit

class SentMemeGridViewController: UICollectionViewController {
    
    var memes = [Meme]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
        
        collectionView?.reloadData()
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeMeCell", for: indexPath) as! MemeGridCell
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        // Set the image
        cell.image?.image = meme.memedImage
        // Set text
        cell.text?.text =  "\(meme.topText) - \(meme.bottomText)"
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailController.meme = self.memes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
    } 
    
}

