//
//  SceneDelegate.swift
//  HobbyStreetAppPDP
//
//  Created by kimseongjun on 2022/12/05.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
   
    var window: UIWindow?
    var appCoordinator: AppCoordinator?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: windowScene)
        self.appCoordinator = AppCoordinator(window)
        appCoordinator?.start()
//        window = UIWindow(windowScene: windowScene) // SceneDelegate의 프로퍼티에 설정해줌
//        let tabbarController = TabbarController() // 맨 처음 보여줄 ViewController
//        let viewController = ViewController()
//        let pcsvc = PreferCocktailSelectionViewController()
//
//        window?.rootViewController = tabbarController//tabbarController//tabbarController
//        window?.makeKeyAndVisible()
  
    }
}

