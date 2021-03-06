//
//  AppStartManager.swift
//  GBShop
//
//  Created by Михаил Киржнер on 14.07.2022.
//

import UIKit

var requestFactory: RequestFactory?

final class AppStartManager {
    var window: UIWindow?
    var windowScene: UIWindowScene

    init(window: UIWindow?, windowScene: UIWindowScene) {
        self.window = window
        self.windowScene = windowScene
    }

    func start() {
        let rootVC = controllerBuilder()
        let navVC = configuredNavigationController
        navVC.viewControllers = [rootVC]

        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()

        requestFactory = RequestFactory()
    }

    private lazy var configuredNavigationController: UINavigationController = {
        let navVC = UINavigationController()
        return navVC
    }()

    func controllerBuilder() -> UIViewController {
        let vc = BasketViewController()
        return vc
    }
}
