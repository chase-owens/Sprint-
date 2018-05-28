//
//  RunObject.swift
//  Sprint
//
//  Created by Chase Owens on 4/22/18.
//  Copyright © 2018 Chase Owens. All rights reserved.
//

import Foundation

struct Sprint {
    var distance: Int
    var time: Int
    var maxSpeed: Int
    var timeToMaxSpeed: Int
}

enum Metric {
    case yard
    case meter
}

class Run {
    var distance: Int
    var metric: Metric
    var name: String
    var pushUp: Bool
    var sprints:[Sprint]?
    
    init(distance: Int, metric: Metric, name: String, pushUp: Bool, sprints: [Sprint]?) {
        self.sprints = sprints
        self.pushUp = pushUp
        self.name = name
        self.metric = metric
        self.distance = distance
    }
}
