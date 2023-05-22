//
//  ListeningModel.swift
//  StudyTime
//
//  Created by 村上航輔 on 2023/05/21.
//

import SwiftUI
import Combine

class ListeningModel: ObservableObject {
    private var archive: CGFloat!
    @Published var target: CGFloat!
    @Published var progressValue: CGFloat = 0.0
    private var cancellable: AnyCancellable?
    var archiveRate: CGFloat {
        return progressValue / target
    }
    
    init() {
        if Util.isPreview() { // Preview表示ならダミーを渡す
            archive = 70
            target = 100
        } else {
            archive = CGFloat(UserDefaults.standard.float(forKey: "listening"))
            target = CGFloat(UserDefaults.standard.float(forKey: "listeningTarget"))
        }
        startTimer()
    }

    func startTimer() {
        cancellable = Timer.publish(every: 0.1, on: .main, in: .default)
            .autoconnect()
            .sink { [weak self] _ in
                self?.countProgress()
            }
    }

    private func countProgress() {
        progressValue += (archive - progressValue) * 0.15
        if archive - progressValue <= 0.001 { cancellable?.cancel() }
    }
}
