

import UIKit

class FourthViewController: UIViewController {

    var (yellowCircle, greenCircle, blueCircle, redCircle) =
    (UIView(), UIView(), UIView(), UIView())
    var whiteCircle = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        whiteCircle = UIView(frame: CGRect(x: 100, y: 100, width: 380, height: 380))
        whiteCircle.layer.cornerRadius = whiteCircle.frame.width/2
        whiteCircle.center = view.center
        whiteCircle.backgroundColor = .white
        
        createFigure()
        
        self.whiteCircle.clipsToBounds = true
        self.view.addSubview(whiteCircle)
}
    
    
    func createFigure(){
     
        let width = 250
        let height = 250
        var indexColor = 0
        let array = [yellowCircle, greenCircle, blueCircle, redCircle]
        let arrayColor = [UIColor.yellow, UIColor.green, UIColor.blue, UIColor.red]
        for (index,value) in array.enumerated(){
            var viewValue = value
            switch index{
            case 0: viewValue = UIView(frame: CGRect(x: 170, y: -40, width: width, height: height))
            case 1: viewValue = UIView(frame: CGRect(x: 170, y: 170, width: width, height: height))
            case 2: viewValue = UIView(frame: CGRect(x: -40, y: 170, width: width, height: height))
            case 3: viewValue = UIView(frame: CGRect(x: -40, y: -40, width: width, height: height))
            default: break
            }
            viewValue.backgroundColor = arrayColor[index]
            indexColor += 1
            viewValue.layer.cornerRadius = viewValue.frame.width/2
            self.whiteCircle.addSubview(viewValue)
            self.whiteCircle.bringSubviewToFront(viewValue)
            
        }
        
        
    }

}
