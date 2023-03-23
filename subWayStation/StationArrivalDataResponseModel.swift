//
//  StationArrivalDataResponseModel.swift
//  subWayStation
//
//  Created by 박경춘 on 2023/03/24.
//

import Foundation

struct StationArrivalDataResponseModel: Decodable {
    
    var realtimeArrivalList: [RealTimeArrival] = []
    
    struct RealTimeArrival: Decodable {
        let line: String
        let remainTime: String
        let currentStaion: String
        
        enum CodingKeys: String, CodingKey{
            case line = "trainLineNm"
            case remainTime = "arvlMsg2"
            case currentStaion = "arvlMsg3"
        }
    }
    
}
