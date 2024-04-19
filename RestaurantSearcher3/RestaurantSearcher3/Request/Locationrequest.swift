//
//  Locationrequest.swift
//  RestaurantSearcher3
//
//  Created by 渡邊 翔矢 on 2024/04/19.
//
import SwiftUI
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        // ユーザーに位置情報の利用許可を求める
        locationManager.requestWhenInUseAuthorization()
        // 位置情報の更新間隔を100mに設定
        locationManager.distanceFilter = 100.0
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            print("緯度: \(location.coordinate.latitude), 経度: \(location.coordinate.longitude)")
        }
    }
}
