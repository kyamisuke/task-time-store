//
//  Const.swift
//  StudyTime
//
//  Created by 村上航輔 on 2023/05/21.
//

import Foundation
import SwiftUI

class Util {
    static func isPreview() -> Bool {
        return ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1"
    }
}
