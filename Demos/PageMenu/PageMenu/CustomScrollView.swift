//
//  CustomScrollView.swift
//  PageMenu
//
//  Created by Pranav Kasetti on 17/08/2017.
//  Copyright © 2017 Center for Advanced Public Safety. All rights reserved.
//

import UIKit

class CustomScrollView : UIScrollView, UIGestureRecognizerDelegate {
  
  override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
    gestureRecognizer.cancelsTouchesInView = false
    return true
  }
  
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
    guard let delegate = self.delegate as? CAPSPageMenu else { return true }
    return (delegate.gestureDelegate?.gestureRecognizerShouldRecognizeSimultaneouslyWith(gestureRecognizer, otherGestureRecognizer: otherGestureRecognizer))!
  }
}
