//
//  ViewController10.swift
//  VP
//
//  Created by Student on 28/04/25.
//

import UIKit
import MapKit
import CoreLocation


class ViewController10: UIViewController, UITextFieldDelegate {
    

    @IBOutlet weak var notesTextView: UITextField!
    @IBOutlet weak var saveNotesButton: UIButton!
    @IBOutlet weak var mapView: MKMapView!
    

    
    
    
    
    
    
    var selectedDestination: String? // The selected destination, passed from previous pages
    var isBeachDestination: Bool = false // Flag to check if it's a beach destination
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize the essentials state for notes
        setupNotesView()
        setupMapView()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Setup Methods
    func setupNotesView() {
        // Set a placeholder or any initial text
        notesTextView.text = "Write your notes here..."
        notesTextView.textColor = .lightGray
        notesTextView.delegate = self
    }

    func setupMapView() {
        // Set map region based on selected destination
        if let destination = selectedDestination {
            setMapLocation(for: destination)
        }
    }
    
    
   

  

  
    
    
    
    
    @IBAction func saveNotesAction(_ sender: Any) {
        if let notes = notesTextView.text, !notes.isEmpty {
                    // Save notes (you can save this to UserDefaults, CoreData, etc.)
                    UserDefaults.standard.set(notes, forKey: "userNotes")

                    // Show confirmation message
                    let alert = UIAlertController(title: "Success", message: "Your notes have been saved!", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default))
                    present(alert, animated: true)
                } else {
                    // Show error alert if no notes are written
                    let alert = UIAlertController(title: "Oops!", message: "Please write some notes before saving.", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default))
                    present(alert, animated: true)
                }
            
    }
    // MARK: - Set the map location based on the selected destination
        func setMapLocation(for destination: String) {
            var locationCoordinate: CLLocationCoordinate2D?

            // Define locations for both Beach and Mountain destinations
            if isBeachDestination {
                // Beach destinations
                switch destination {
                case "Goa":
                    locationCoordinate = CLLocationCoordinate2D(latitude: 15.2993, longitude: 74.1240)
                case "Andaman":
                    locationCoordinate = CLLocationCoordinate2D(latitude: 11.7401, longitude: 92.6586)
                case "Kerala":
                    locationCoordinate = CLLocationCoordinate2D(latitude: 10.8505, longitude: 76.2711)
                case "Maldives":
                    locationCoordinate = CLLocationCoordinate2D(latitude: -3.2028, longitude: 73.2207)
                default:
                    locationCoordinate = CLLocationCoordinate2D(latitude: 20.5937, longitude: 78.9629) // Default location (India)
                }
            } else {
                // Mountain destinations
                switch destination {
                case "Manali":
                    locationCoordinate = CLLocationCoordinate2D(latitude: 32.2396, longitude: 77.1887)
                case "Munnar":
                    locationCoordinate = CLLocationCoordinate2D(latitude: 10.0889, longitude: 77.0591)
                case "Gulmarg":
                    locationCoordinate = CLLocationCoordinate2D(latitude: 34.05, longitude: 74.38)
                case "Shimla":
                    locationCoordinate = CLLocationCoordinate2D(latitude: 31.1048, longitude: 77.1734)
                case "Leh":
                    locationCoordinate = CLLocationCoordinate2D(latitude: 34.1526, longitude: 77.5787)
                default:
                    locationCoordinate = CLLocationCoordinate2D(latitude: 20.5937, longitude: 78.9629) // Default location (India)
                }
            }

              // Set the map region if we have valid coordinates
              if let coordinate = locationCoordinate {
                  let region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
                  mapView.setRegion(region, animated: true)
                  
                  // Add a pin annotation to the map at the location
                  let annotation = MKPointAnnotation()
                  annotation.coordinate = coordinate
                  annotation.title = destination
                  mapView.addAnnotation(annotation)
              }
          }
      }

extension ViewController10: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == .lightGray {
            textView.text = ""
            textView.textColor = .black
        }
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Write your notes here..."
            textView.textColor = .lightGray
        }
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


