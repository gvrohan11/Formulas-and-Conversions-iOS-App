//
//  StatisticsViewController.swift
//  Formulas_and_Conversions
//
//  Created by Rohan Venkat on 8/10/21.
//

import UIKit

class StatisticsViewController: UIViewController {

    @IBOutlet weak var statisticsScrollView: UIScrollView!
    @IBOutlet weak var statisticsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statisticsScrollView.maximumZoomScale = 4
        statisticsScrollView.minimumZoomScale = 1
        statisticsScrollView.delegate = self

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

extension StatisticsViewController : UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return statisticsImageView
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        if statisticsScrollView.zoomScale > 1 {
            if let image = statisticsImageView.image {
                let ratioW = statisticsImageView.frame.width / image.size.width
                let ratioH = statisticsImageView.frame.height / image.size.height
                
                let ratio = ratioW < ratioH ? ratioW : ratioH
                let newWidth = image.size.width * ratio
                let newHeight = image.size.height * ratio
                
                let conditionLeft = newWidth * scrollView.zoomScale > statisticsImageView.frame.width
                
                let left = 0.5 * (conditionLeft ? newWidth - statisticsImageView.frame.width : (statisticsScrollView.frame.width - statisticsScrollView.contentSize.width))
                
                let conditionTop = newHeight * statisticsScrollView.zoomScale > statisticsImageView.frame.height
                
                let top = 0.5 * (conditionTop ? newHeight - statisticsImageView.frame.height : (statisticsScrollView.frame.height - statisticsScrollView.contentSize.height))
                
                statisticsScrollView.contentInset = UIEdgeInsets(top: top, left: left, bottom: top, right: left)
            }
        } else {
            statisticsScrollView.contentInset = .zero
        }
    }
}
