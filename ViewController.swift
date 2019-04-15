//
//  ViewController.swift
//  AulaMapKit
//
//  Created by student on 12/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()
    var userLocation = CLLocation()
    
    //mapView do mainStory
    @IBOutlet weak var mapView: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //chamando a funcao para o pop up
        
        setUpLocationManager()
        
        mapView.showsUserLocation = true
        
        //da zoom da localizacao
        
        mapView.setUserTrackingMode(.follow, animated: true)
        
        
        
    }
    
    
    //Primeira funcao: funcao que adiciona precisao, e pede autorizacao para usar o mapa.
    
    func setUpLocationManager(){
        
        //pegar a melhor precisao para localizacao. att: quanto maior acuracia mais bateria gasta
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        
        //pede autorizacao para usar a localizacao
        
        locationManager.requestWhenInUseAuthorization() //pede so uma vez a permissao
        
        
        //para sempre atualizar sua localizacao
        
        locationManager.startUpdatingLocation()
        
        addGesture()
        
        
    }
    
    //Quarta funcao
    
    func addGesture(){
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(addAnnotation(gesture:)))
        
        longPress.minimumPressDuration = 1.0
        
        mapView.addGestureRecognizer(longPress)
        
        
    }
    
    
    //Segunda funcao: pega a localizacao do usuario
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        //checando se o array esta vazio
        
        if locations.count > 0 {
            
            // desempacotando
            
            if let location = locations.last {
                
                
                userLocation = location
                print ("A localizaca do usuario é: \(userLocation.coordinate)")
                
            }
            
        }
        
    }
    
    //Terceira funcao: reconhece qualquer gesto realizado na tela do dispositivo att: parametro tem q ser ui gesture recognizer
    
    func addAnnotation(gesture: UIGestureRecognizer){
        
        //constante que recebe o toque realizado na tela do dispositivo
        
        let touchPoint = gesture.location(in: mapView)
        
        //pega a localizacao
        
        let newCoordinate: CLLocationCoordinate2D = mapView.convert(touchPoint, toCoordinateFrom: mapView)
        
        //criando ponto de annotation
        
        let newAnnotation = MKPointAnnotation()
        
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "HackaTruck"
        
        newAnnotation.subtitle = String(describing: "Latitude \(newCoordinate.latitude) / Longitude \(newCoordinate.longitude)")
        
        mapView.addAnnotation(newAnnotation)
        
    }

}


