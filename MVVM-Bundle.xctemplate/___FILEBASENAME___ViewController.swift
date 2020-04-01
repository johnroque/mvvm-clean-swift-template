//  ___FILEHEADER___

import UIKit
import RxSwift
import RxCocoa

protocol ___FILEBASENAME___Route {
    // sample: func routeToLogin
    func back(_ vc: ___FILEBASENAME___)
}

class ___FILEBASENAME___: UIViewController, Instantiatable {

    // MARK: - Outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
        setViewModelBindings()
    }
    
    // MARK: - Dependency injection
    struct Dependency {
        var viewModel: ___VARIABLE_productName___ViewModelInputs
    }
    
    var dependency: Dependency!
    var router: ___FILEBASENAME___Route?
    
    // MARK: Private properties
    private let disposeBag: DisposeBag = DisposeBag()
    
    deinit {
        print("--Deallocating \(self)")
    }

}

// MARK: - Initialize views
extension ___FILEBASENAME___ {
    
    private func initViews() {
        
    }
    
}

// MARK: - ViewModel Bindings
extension ___FILEBASENAME___ {
    
    private func setViewModelBindings() {
        
        let output = self.dependency.viewModel.getOutputs()
        
        output
            .loading
            .asDriver()
            .drive(onNext: { [unowned self] (loading) in
                loading ? self.showLoading() : self.hideLoading()
            })
            .disposed(by: self.disposeBag)
        
        output
            .error
            .asDriver()
            .drive(onNext: { [unowned self] (error) in
                
            })
            .disposed(by: self.disposeBag)
        
    }
    
}
