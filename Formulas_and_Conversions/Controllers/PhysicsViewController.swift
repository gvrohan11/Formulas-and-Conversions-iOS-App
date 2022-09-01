//
//  PhysicsViewController.swift
//  Formulas_and_Conversions
//
//  Created by Rohan Venkat on 8/10/21.
//

import UIKit

class PhysicsViewController: UIViewController {
    
    @IBOutlet weak var physicsScrollView: UIScrollView!
    @IBOutlet weak var physicsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        physicsScrollView.maximumZoomScale = 4
        physicsScrollView.minimumZoomScale = 1
        physicsScrollView.delegate = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension PhysicsViewController : UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return physicsImageView
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        if physicsScrollView.zoomScale > 1 {
            if let image = physicsImageView.image {
                let ratioW = physicsImageView.frame.width / image.size.width
                let ratioH = physicsImageView.frame.height / image.size.height
                
                let ratio = ratioW < ratioH ? ratioW : ratioH
                let newWidth = image.size.width * ratio
                let newHeight = image.size.height * ratio
                
                let conditionLeft = newWidth * scrollView.zoomScale > physicsImageView.frame.width
                
                let left = 0.5 * (conditionLeft ? newWidth - physicsImageView.frame.width : (physicsScrollView.frame.width - physicsScrollView.contentSize.width))
                
                let conditionTop = newHeight * physicsScrollView.zoomScale > physicsImageView.frame.height
                
                let top = 0.5 * (conditionTop ? newHeight - physicsImageView.frame.height : (physicsScrollView.frame.height - physicsScrollView.contentSize.height))
                
                physicsScrollView.contentInset = UIEdgeInsets(top: top, left: left, bottom: top, right: left)
            }
        } else {
            physicsScrollView.contentInset = .zero
        }
    }
}

