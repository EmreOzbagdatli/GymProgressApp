//
//  ExerciseProg.swift
//  GYMming
//
//  Created by Emre Özbağdatlı on 13.01.2023.
//

import UIKit

final class ExerciseProg: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
        
    }
    
    required init?(coder:NSCoder) {
        super .init(coder: coder)
        self.configureView()
    }
 
    private func configureView(){
        guard let view = self.loadViewFromNib(nibName: "ExerciseProg") else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
}
