//
//  APIConstant.swift
//  WioTerminal
//
//  Created by Quang Nguyen on 11/16/21.
//

import Foundation

class APIConstant {
    
    //MARK: - domain
    static var subDomain = "wioterminal"
    static var baseDomain = "https://\(subDomain).azureiotcentral.com/api"
    static var authorizationString = "SharedAccessSignature sr=05c490cd-8baf-4b72-94cd-72b20ae5205c&sig=RxXDS0OsUcNhMFHjGgeIkCT7WtYV09YGzA2kFWvMLt4%3D&skn=token&se=1670054841225"
    
    // MARK: - device
//    static var deviceId = "Device01"
//    static var deviceTemplateId = "dtmi:modelDefinition:st86hdxjc:ecap5fsxee"
    
    static func getBody(number: Int, time: String, day: Int) -> String {
        var timeString = ""
        
        if time == TelemetryViewModel.times[0] {
            timeString = "S"
        } else if time == TelemetryViewModel.times[1] {
            timeString = "M"
        } else {
            timeString = "H"
        }
        
        return "SELECT MAX(temp), AVG(temp), MAX(humi), MAX(light) FROM %@ WHERE WITHIN_WINDOW(P\(day)D) AND temp > 0 GROUP BY WINDOW(PT\(number)\(timeString)) ORDER BY $ts ASC"
    }
    
    static func getBodyAccel(number: Int, time: String, day: Int) -> String {
        var timeString = ""
        
        if time == TelemetryViewModel.times[0] {
            timeString = "S"
        } else if time == TelemetryViewModel.times[1] {
            timeString = "M"
        } else {
            timeString = "H"
        }
        
        return "SELECT MAX(accelX), MAX(accelY), MAX(accelZ) FROM %@ WHERE WITHIN_WINDOW(P\(day)D) AND temp > 0 GROUP BY WINDOW(PT\(number)\(timeString)) ORDER BY $ts ASC"
    }
    
    static func getBodyLocation(location: Int, number: Int = 30, time: String = TelemetryViewModel.times[1], day: Int = 7) -> String {
        var timeString = ""
        
        if time == TelemetryViewModel.times[0] {
            timeString = "S"
        } else if time == TelemetryViewModel.times[1] {
            timeString = "M"
        } else {
            timeString = "H"
        }
        
        return "SELECT MAX(temp), MAX(humi), MAX(location) FROM %@ WHERE WITHIN_WINDOW(P\(day)D) AND location = \(location) GROUP BY WINDOW(PT\(number)\(timeString)) ORDER BY $ts ASC"
    }
}

struct Path {
    static let getDeviceTemplate = "/deviceTemplates"
    static let getTelemetry = "/devices/%@/telemetry"
    static let postQuery = "/query"
    static let postBuzzerCommand = "/devices/%@/commands/ringBuzzer"
    static let listDevices = "/devices"
}

enum Method: String {
    case GET
    case POST
    case PUT
    case DELETE
}

extension Notification.Name {
    static let changeDevice = Notification.Name("changeDevice")
}
