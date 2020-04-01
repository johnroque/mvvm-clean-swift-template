//  ___FILEHEADER___

import Foundation
import RxCocoa
import RxSwift

protocol ___FILEBASENAME___CollectionEvents {
    var cellTapped: ControlEvent<UserResponse> { get }
}

class ___FILEBASENAME___CollectionAdapter: NSObject, ___FILEBASENAME___CollectionEvents {
    
    let data: BehaviorRelay<[String]> = BehaviorRelay(value: [])
    weak var collectionView: UICollectionView?
    
    init(forCollectionView collectionView: UICollectionView) {
        self.collectionView = collectionView
        
        super.init()
        
        data
        .asDriver()
        .drive(onNext: { [unowned self] _ in
            self.collectionView?.reloadData()
        }).disposed(by: disposeBag)
        
        initCollectionView()
    }
    
    // MARK: - Events
    private let _cellTapped: PublishRelay<String> = PublishRelay()
    var cellTapped: ControlEvent<String> {
        return ControlEvent(events: _cellTapped)
    }
    
    // MARK: - Private
    private var disposeBag: DisposeBag = DisposeBag()
    
    // MARK: - Deinit
    deinit {
        print("--Deallocating \(self)")
    }
    
}

extension ___FILEBASENAME___CollectionAdapter {

    private func initCollectionView() {
        
    }
    
}
