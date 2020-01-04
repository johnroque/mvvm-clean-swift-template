//  ___FILEHEADER___

import Foundation
import RxSwift
import RxCocoa

protocol ___FILEBASENAME___Inputs {
    // example: getUser
    func getOutputs() -> ___FILEBASENAME___Outputs
}

protocol ___FILEBASENAME___Outputs {
    var loading: BehaviorRelay<Bool> { get }
    var error: BehaviorRelay<Error?> { get }
}

class ___FILEBASENAME___: ___FILEBASENAME___Outputs {
    
    // MARK: - Dependency injection
    struct Dependency {
    }
    
    init(dependency: Dependency) {
        self.dependency = dependency
    }
    
    var loading: BehaviorRelay<Bool> = BehaviorRelay(value: false)
    var error: BehaviorRelay<Error?> = BehaviorRelay(value: nil)
    
    // MARK: - Private properties
    private let dependency: Dependency
    private let disposeBag: DisposeBag = DisposeBag()
    
    deinit {
        print("--Deallocating \(self)")
    }
    
}

extension ___FILEBASENAME___: ___FILEBASENAME___Inputs {
   
    func getOutputs() -> ___FILEBASENAME___Outputs {
        return self
    }
    
}
