//
//  HeroStats.swift
//  jeremy-blahak-rattrapage-ios
//
//  Created by Jérémy Blahak on 06/10/2022.
//

import Foundation

struct HeroStats: Decodable {
    let localized_name: String
    let primary_attr: String
    let attack_type: String
    let legs: Int
    let img: String
    let base_health: Int

}
