//
//  QuoteViewModel.swift
//  QuoteZ
//
//  Created by M sai deepthi on 26/07/24.
//

import Foundation

class QuoteViewModel{
    var speakerData: Speaker?
    func numberOfRow() -> Int{
        speakerData?.quotes?.count ?? 0
    }
    var quotes: [String]{
        speakerData?.quotes ?? [String]()
    }
    var title: String{
        if let speakerData = speakerData{
            return speakerData.speakerName
        }
        return ""
    }
    init(speakerData: Speaker? = nil) {
        self.speakerData = speakerData
    }
}
