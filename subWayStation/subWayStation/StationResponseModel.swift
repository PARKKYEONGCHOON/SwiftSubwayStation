//
//  StationResponseModel.swift
//  subWayStation
//
//  Created by 박경춘 on 2023/03/24.
//

import Foundation

struct StationResponseModel: Decodable{
    
    var stations: [Station] { searchInfo.row }
    
    private let searchInfo: SearchInfoBySubwayNameServiceModel
    
    enum CodingKeys: String, CodingKey{
        case searchInfo = "SearchInfoBySubwayNameService"
    }
    
    struct SearchInfoBySubwayNameServiceModel: Decodable {
        var row: [Station] = []
    }
    
}

struct Station: Decodable {
    let stationName: String
    let lineNumber: String
    
    enum CodingKeys: String, CodingKey {
        case stationName = "STATION_NM"
        case lineNumber = "LINE_NUM"
    }
    
}


