//
//  Converter.swift
//  Formulas_and_Conversions
//
//  Created by Rohan Venkat on 8/9/22.
//

import Foundation

class Converter {
    
    private var inputValue: Double = 0.0
    
    private var inputUnit: String = ""
    
    private var outputUnit: String = ""
    
    private var conversion: String = ""
    
    /*
    // empty initializer
    public init() {
        inputValueue = 0.0
        inputUnitnit = ""
        outputUnitnit = ""
    }
    */
    
    // full constructor
    public init(inputVal: Double, inputU: String, outputU: String, conversionSetting: String) {
        inputValue = inputVal
        inputUnit = inputU
        outputUnit = outputU
        conversion = conversionSetting
    }
    
    func convert() -> Double {
        
        var returnVal : Double = 0.0
        
        if (conversion == "length") {
            if (inputUnit == "Kilometer") {
                if (outputUnit == "Kilometer") {
                    return inputValue
                } else if (outputUnit == "Meter") {
                    return inputValue * 1000
                } else if (outputUnit == "Centimeter") {
                    return inputValue * 1000 * 100
                } else if (outputUnit == "Millimeter") {
                    return inputValue * 1000 * 100 * 10
                } else if (outputUnit == "Mile") {
                    return inputValue / 1.609344
                } else if (outputUnit == "Yard") {
                    return (inputValue / 1.609344) * 1760
                } else if (outputUnit == "Foot") {
                    return ((inputValue / 1.609344) * 1760) * 3
                } else if (outputUnit == "Inch") {
                    return (((inputValue / 1.609344) * 1760) * 3) * 12
                }
            } else if (inputUnit == "Meter") {
                if (outputUnit == "Kilometer") {
                    return inputValue / 1000
                } else if (outputUnit == "Meter") {
                    return inputValue
                } else if (outputUnit == "Centimeter") {
                    return inputValue * 100
                } else if (outputUnit == "Millimeter") {
                    return inputValue * 100 * 10
                } else if (outputUnit == "Mile") {
                    return inputValue / 1609.344
                } else if (outputUnit == "Yard") {
                    return (inputValue / 1609.344) * 1760
                } else if (outputUnit == "Foot") {
                    return ((inputValue / 1609.344) * 1760) * 3
                } else if (outputUnit == "Inch") {
                    return (((inputValue / 1609.344) * 1760) * 3) * 12
                }
            } else if (inputUnit == "Centimeter") {
                if (outputUnit == "Kilometer") {
                    return inputValue / 100000
                } else if (outputUnit == "Meter") {
                    return inputValue / 100
                } else if (outputUnit == "Centimeter") {
                    return inputValue
                } else if (outputUnit == "Millimeter") {
                    return inputValue * 10
                } else if (outputUnit == "Mile") {
                    return inputValue / 160934.4
                } else if (outputUnit == "Yard") {
                    return (inputValue / 160934.4) * 1760
                } else if (outputUnit == "Foot") {
                    return ((inputValue / 160934.4) * 1760) * 3
                } else if (outputUnit == "Inch") {
                    return (((inputValue / 160934.4) * 1760) * 3) * 12
                }
            } else if (inputUnit == "Millimeter") {
                if (outputUnit == "Kilometer") {
                    return inputValue / 1000000
                } else if (outputUnit == "Meter") {
                    return inputValue / 1000
                } else if (outputUnit == "Centimeter") {
                    return inputValue / 10
                } else if (outputUnit == "Millimeter") {
                    return inputValue
                } else if (outputUnit == "Mile") {
                    return inputValue / 1609344
                } else if (outputUnit == "Yard") {
                    return (inputValue / 1609344) * 1760
                } else if (outputUnit == "Foot") {
                    return ((inputValue / 1609344) * 1760) * 3
                } else if (outputUnit == "Inch") {
                    return (((inputValue / 1609344) * 1760) * 3) * 12
                }
            } else if (inputUnit == "Mile") {
                if (outputUnit == "Kilometer") {
                    return inputValue * 1.609344
                } else if (outputUnit == "Meter") {
                    return inputValue * 1.609344 * 1000
                } else if (outputUnit == "Centimeter") {
                    return inputValue * 1.609344 * 1000 * 100
                } else if (outputUnit == "Millimeter") {
                    return inputValue * 1.609344 * 1000 * 100 * 10
                } else if (outputUnit == "Mile") {
                    return inputValue
                } else if (outputUnit == "Yard") {
                    return inputValue * 1760
                } else if (outputUnit == "Foot") {
                    return inputValue * 1760 * 3
                } else if (outputUnit == "Inch") {
                    return inputValue * 1760 * 3 * 12
                }
            } else if (inputUnit == "Yard") {
                if (outputUnit == "Kilometer") {
                    return (inputValue * 1.609344) / 1760
                } else if (outputUnit == "Meter") {
                    return ((inputValue * 1.609344) / 1760) * 1000
                } else if (outputUnit == "Centimeter") {
                    return (((inputValue * 1.609344) / 1760) * 1000) * 100
                } else if (outputUnit == "Millimeter") {
                    return ((((inputValue * 1.609344) / 1760) * 1000) * 100) * 10
                } else if (outputUnit == "Mile") {
                    return inputValue / 1760
                } else if (outputUnit == "Yard") {
                    return inputValue
                } else if (outputUnit == "Foot") {
                    return inputValue * 3
                } else if (outputUnit == "Inch") {
                    return inputValue * 3 * 12
                }
            } else if (inputUnit == "Foot") {
                if (outputUnit == "Kilometer") {
                    return (inputValue * 1.609344) / 5280
                } else if (outputUnit == "Meter") {
                    return ((inputValue * 1.609344) / 5280) * 1000
                } else if (outputUnit == "Centimeter") {
                    return (((inputValue * 1.609344) / 5280) * 1000) * 100
                } else if (outputUnit == "Millimeter") {
                    return ((((inputValue * 1.609344) / 5280) * 1000) * 100) * 10
                } else if (outputUnit == "Mile") {
                    return inputValue / 5280
                } else if (outputUnit == "Yard") {
                    return inputValue / 3
                } else if (outputUnit == "Foot") {
                    return inputValue
                } else if (outputUnit == "Inch") {
                    return inputValue * 12
                }
            } else if (inputUnit == "Inch") {
                if (outputUnit == "Kilometer") {
                    return (inputValue * 1.609344) / 63360
                } else if (outputUnit == "Meter") {
                    return ((inputValue * 1.609344) / 63360) * 1000
                } else if (outputUnit == "Centimeter") {
                    return (((inputValue * 1.609344) / 63360) * 1000) * 100
                } else if (outputUnit == "Millimeter") {
                    return ((((inputValue * 1.609344) / 63360) * 1000) * 100) * 10
                } else if (outputUnit == "Mile") {
                    return inputValue / 63360
                } else if (outputUnit == "Yard") {
                    return inputValue / 36
                } else if (outputUnit == "Foot") {
                    return inputValue / 12
                } else if (outputUnit == "Inch") {
                    return inputValue
                }
            }
            
        } else if (conversion == "weightmass") {
            
        } else if (conversion == "capacity") {
            
        } else if (conversion == "temperature") {
            
        } else if (conversion == "time") {
            
        }
        
        return returnVal
    }
    
}
