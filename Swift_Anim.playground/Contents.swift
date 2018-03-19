//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
import PlaygroundSupport

let container = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
let view = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
view.backgroundColor = UIColor.red
view.center = container.center
view.layer.cornerRadius = 25.0
container.addSubview(view)

let rectView = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
rectView.backgroundColor = UIColor.white
rectView.center = container.center
rectView.layer.cornerRadius = 5.0
container.addSubview(rectView)

UIView.animate(withDuration: 2.0, animations: {()-> Void in
    view.backgroundColor = UIColor.orange
    let scaleTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    view.transform = scaleTransform
    
    let rotation = CGAffineTransform(rotationAngle: 3.14)
    rectView.transform = rotation
})

PlaygroundPage.current.liveView = container
PlaygroundPage.current.needsIndefiniteExecution = true
