//
//  NavigationHelper.swift
//  GYMming
//
//  Created by Emre Özbağdatlı on 13.01.2023.
//

import UIKit

enum Page{
    case exercise
    case muscleProgress
}

struct NavigationHelper{
    static func push(to page: Page){
        let viewController: UIViewController
        switch page{
        case .exercise:
            viewController = ExerciseBuilder.generate()
        case .muscleProgress:
            viewController = MuscleProgressBuilder.generate()
        }
        show(viewController: viewController)
    }
}

private extension NavigationHelper {
    static func show(viewController: UIViewController, animated: Bool = true) {
        DispatchQueue.main.async {
            UIApplication.shared.rootNavigationController?.pushViewController(viewController, animated: animated)
        }
    }
}

extension UIApplication {
    var rootNavigationController: UINavigationController? {
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
        
        return sceneDelegate?.window?.rootViewController as? UINavigationController
    }
}
