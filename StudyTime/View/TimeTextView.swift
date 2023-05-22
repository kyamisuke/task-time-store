//
//  TimeTextView.swift
//  StudyTime
//
//  Created by 村上航輔 on 2023/05/21.
//

import SwiftUI

struct TimeTextView: View {
    @EnvironmentObject var listeingModel: ListeningModel
    
    var body: some View {
        Text("\(String(format: "%.1f", listeingModel.progressValue)) / \(Int(listeingModel.target))")
    }
}

struct TimeTextView_Previews: PreviewProvider {
    static var previews: some View {
        TimeTextView()
            .environmentObject(ListeningModel())
    }
}
