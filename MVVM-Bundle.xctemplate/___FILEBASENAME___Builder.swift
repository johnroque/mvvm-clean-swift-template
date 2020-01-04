//  ___FILEHEADER___

import Foundation

class ___FILEBASENAME___ {
    
    static func build() -> ___VARIABLE_productName___ViewController {
        
        let vc = ___VARIABLE_productName___ViewController.instantiateWithNib()
        
        let viewModel = ___VARIABLE_productName___ViewModel(dependency: ___VARIABLE_productName___ViewModel.Dependency())
        vc.dependency = ___VARIABLE_productName___ViewController.Dependency(viewModel: viewModel)
        
        return vc
        
    }
    
}
