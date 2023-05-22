//
//  TimeGroupView.swift
//  StudyTime
//
//  Created by 村上航輔 on 2023/05/20.
//

import SwiftUI

struct TimeProgressGroupView: View {
    let radius: CGFloat = 250
    @EnvironmentObject var listeningModel: ListeningModel
    
    var body: some View {
        ZStack {
            TimeProgressView()
                .environmentObject(listeningModel)
                .padding()
                .frame(width: radius, height: radius)
            TimeTextView()
                .environmentObject(listeningModel)
        }
    }
    
//    func getArchiveRate() -> CGFloat {
//        return listeningModel.archive / listeningModel.target
//    }
}

struct TimeProgressGroupView_Previews: PreviewProvider {
    static var previews: some View {
        TimeProgressGroupView()
            .environmentObject(ListeningModel())
    }
}
