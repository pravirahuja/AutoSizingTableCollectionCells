//
//  ViewController.swift
//  TestSample
//
//  Created by Pravir  on 25/11/18.
//  Copyright © 2018 Pravir . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var arr: [String] = ["",
                         "3. ",
                         "4. ",
                         "5. ",
                         "6. ",
                         "7. ",
                         "8. ",
                         "9. ",
                         "1. Autoresizing is basically a collective term for the old way Apple introduced in order to enable developers to build dynamic layouts. The number one usecase to address here was screen rotation. Since when a screen would be rotated (or otherwise resized), the subviews in the screen would most likely hold an incorrect frame (position and size) in the newly sized superview. To address this, Apple introduced a series of enumerable properties (called Autoresizing Masks), that tell the superview to treat a subview in a particular way. Among these are",
                         "2. Look here"
                         ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            flowLayout.estimatedItemSize = CGSize(width: 1, height: 1)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.label.text = arr[indexPath.row]
        return cell
    }
}

