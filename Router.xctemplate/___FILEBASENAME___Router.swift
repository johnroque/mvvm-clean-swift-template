//  ___FILEHEADER___

import Foundation
import UIKit

protocol ___FILEBASENAME___Delegate: AnyObject {
	func dettach(_ coordinator: ___FILEBASENAME___)
}


class ___FILEBASENAME___: CoordinatorType {

	weak var delegate: ___FILEBASENAME___Delegate?

    var childRouters: [RouterType] = []
     var navigation: UINavigationController
     
     init(navigation: UINavigationController) {
         self.navigation = navigation
     }
     
     func start() {
     }
     
     deinit {
         print("--Deallocating \(self)")
     }
    
}
