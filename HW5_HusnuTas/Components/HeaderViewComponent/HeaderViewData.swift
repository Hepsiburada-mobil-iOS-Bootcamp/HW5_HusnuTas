//
//  HeaderViewData.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import Foundation

class HeaderViewData {
    
    private(set) var labelPackData: LabelPackComponentData
    private(set) var actionButtonData: ActionButtonData
    
    init(labelPackData: LabelPackComponentData,
         actionButtonData: ActionButtonData) {
        self.labelPackData = labelPackData
        self.actionButtonData = actionButtonData
    }
    
}
