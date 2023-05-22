//
//  TimeProgressViewModel.swift
//  StudyTime
//
//  Created by 村上航輔 on 2023/05/21.
//

import Foundation
import SwiftUI
import Combine

final class TimeProgressViewModel: ObservableObject {
    @Published var progressValue: CGFloat = 0.0
    var endValue: CGFloat
    private var cancellable: AnyCancellable?

    init(endValue: CGFloat) {
        self.endValue = endValue
    }

    func startTimer() {
        cancellable = Timer.publish(every: 0.1, on: .main, in: .default)
            .autoconnect()
            .sink { [weak self] _ in
                self?.countProgress()
            }
    }

    private func countProgress() {
        progressValue += (endValue - progressValue) * 0.15
        if endValue - progressValue <= 0.001 { cancellable?.cancel() }
    }
}

