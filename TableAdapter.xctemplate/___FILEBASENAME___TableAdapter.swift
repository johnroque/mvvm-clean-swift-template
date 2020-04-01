//  ___FILEHEADER___

import Foundation
import RxCocoa
import RxSwift

protocol ___FILEBASENAME___TableEvents {
    var cellTapped: ControlEvent<UserResponse> { get }
}

class ___FILEBASENAME___TableAdapter: NSObject, ___FILEBASENAME___TableEvents {
    
    let data: BehaviorRelay<[String]> = BehaviorRelay(value: [])
    weak var tableView: UITableView?
    
    init(forTable table: UITableView) {
        self.tableView = table
        
        super.init()
        
        data
            .asDriver()
            .drive(onNext: { [unowned self] _ in
                self.tableView?.reloadData()
            }).disposed(by: disposeBag)
        
        initTableView()
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

extension ___FILEBASENAME___TableAdapter {

    private func initTableView() {
        
    }
    
}
