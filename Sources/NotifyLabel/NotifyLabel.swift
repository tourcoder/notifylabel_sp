// The Swift Programming Language
// https://docs.swift.org/swift-book
//
import Foundation
#if canImport(UIKit)
    import UIKit

    public class NotifyLabel: UILabel {
        public static func addLabel(into view: UIView, withTitle string: String, fontName: String, removedDelayTime delayTime: TimeInterval) -> NotifyLabel {
            let label = NotifyLabel()
            let size = CGSize(width: 120.0, height: 40.0)
            let point = CGPoint(x: view.bounds.size.width / 2, y: view.bounds.size.height / 2)
            label.frame = CGRect(origin: .zero, size: size)
            label.center = point
            label.backgroundColor = UIColor(white: 1.0, alpha: 0.8)
            label.font = UIFont(name: fontName, size: 16.0)
            label.text = string
            label.layer.masksToBounds = true
            label.layer.cornerRadius = size.height / 2
            label.layer.borderColor = UIColor(white: 0.0, alpha: 0.3).cgColor
            label.layer.borderWidth = 0.5
            label.adjustsFontSizeToFitWidth = true
            label.textAlignment = .center
            label.textColor = UIColor(white: 0.0, alpha: 0.6)
            Timer.scheduledTimer(withTimeInterval: delayTime, repeats: false) { _ in
                label.removeLabelFromView()
            }
            view.addSubview(label)
            return label
        }

        @objc func removeLabelFromView() {
            removeFromSuperview()
        }
    }

#endif
