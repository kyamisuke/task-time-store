//
//  TimeModel.swift
//  StudyTime
//
//  Created by 村上航輔 on 2023/05/20.
//

import Foundation
import SwiftUI

class TimeModel {
    static func saveListeningTime(minutes: Float) {
        UserDefaults.standard.set(minutes, forKey: "listening")
    }
    
    static func saveListeningTarget(minutes: Float) {
        UserDefaults.standard.set(minutes, forKey: "listeningTarget")
    }
}
