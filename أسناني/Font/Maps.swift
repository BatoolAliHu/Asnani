//
//  Maps.swift
//  Asnani
//
//  Created by Batool Hussain on 7/16/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import Foundation

struct Maps {
    let governorate: String
    let hospital1: String
    let hospital2: String
    
}


var map : [Maps] = [
    Maps(governorate: "حولي", hospital1: "مركز السالمية الغربي", hospital2: "مركز محمود حاجي حيدر"),
    Maps(governorate: "العاصمة", hospital1: "مركز الإحقاقي", hospital2: "مركز حمد الصقر"),
    Maps(governorate: "الفروانية", hospital1: "مركز عبدالله مبارك", hospital2: "مركز الفروانية الغربي"),
    Maps(governorate: "الأحمدي", hospital1: "مركز القرين التخصصي", hospital2: "مركز الفحيحيل التخصصي"),
    Maps(governorate: "الجهراء", hospital1: "مركز القصر", hospital2: "مركز الصليبية الجنوبي")   
]
