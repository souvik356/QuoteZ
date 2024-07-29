//
//  SpeakerViewModel.swift
//  QuoteZ
//
//  Created by M sai deepthi on 26/07/24.
//

import Foundation

class SpeakerViewModel{
    var speakers: [Speaker]?
     func getSpeakerData(){
        speakers = DataManager.getData()
    }
    func numberOfRows() -> Int{
        return speakers?.count ?? 0
    }
    func speaker(at index: Int) -> Speaker? {
        if let speakers = speakers{
            return speakers[index]
        }else{
            return nil
        }
    }
}
