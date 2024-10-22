//
//  FoodItems.swift
//  Selene
//
//  Created by Apple on 28.6.24.
//
import UIKit

class Food: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    //Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    //Properties
    var foodItems: [FoodItem] = []
    
       
        
        override func viewDidLoad() {
            super.viewDidLoad()
            createFood()
            
          //Methods
            
            if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
                layout.itemSize = CGSize(width: (collectionView.frame.width - 10) / 2, height: 150)
                layout.minimumInteritemSpacing = 5
                layout.minimumLineSpacing = 5
            }
            
      
            collectionView.dataSource = self
            collectionView.delegate = self
            
           
            let nib = UINib(nibName: "FoodItemCell", bundle: nil)
            collectionView.register(nib, forCellWithReuseIdentifier: "FoodItemCell")
            
        }
        
     
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return foodItems.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            // Get the cell from the collection view
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodItemCell", for: indexPath) as! FoodItemCell
            
           
            let foodItem = foodItems[indexPath.row]
            cell.FoodImageView.image = UIImage(named: foodItem.image)
            cell.FoodNameLabel.text = foodItem.name
            return cell
        }
        
      
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         
            print("Selected item at index: \(indexPath.row)")
        }
    
    
    func createFood() {
        foodItems = [
            FoodItem(name: "Breakfast", image: "breakfast"),
            FoodItem(name: "Ramen", image: "ramen"),
            FoodItem(name: "Sandwiches", image: "sandwich"),
            FoodItem(name: "Mediterranean", image: "mediterran"),
            FoodItem(name: "Japanese", image: "sushi"),
            FoodItem(name: "Sushi", image: "sushi1"),
            FoodItem(name: "New Mexican", image: "mexica"),
            FoodItem(name: "Bar Food", image: "bar"),
            FoodItem(name: "Italian", image: "italia"),
            FoodItem(name: "Burgers", image: "hamburger")
        ]
    }
    
    }

    
