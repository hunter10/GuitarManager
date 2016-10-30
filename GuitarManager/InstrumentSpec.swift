//
//  InstrumentSpec.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 10. 8..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

class InstrumentSpec
{
    var properties = [String:Any]()
    
    init(_ properties:[String:Any])
    {
        self.properties = properties
    }
    
    func getProperty(keyname:String) -> Any? {
        return properties[keyname]
    }
    
    func getProperty() -> [String:Any]? {
        return properties
    }
    
    func matches(_ otherSpec:InstrumentSpec) -> Bool {
        
        // 찾을거 기준으로 검색
        for (otherKey, otherData) in otherSpec.getProperty()!
        {
            //print("key:\(otherKey), data:\(otherData)")
            
            var result:Bool = true
            
            let orgData = getProperty(keyname: otherKey)
            //let otherData = otherSpec.getProperty(keyname: key1)
            if (orgData == nil)
            {
                //print("nil OrgData When key:\(key1)")
                result = false
            }
            else
            {
                switch otherData {
                case is Int:
                    if (orgData as! Int) != (otherData as! Int){
                        result = false }
                    
                case is Type:
                    if (orgData as! Type) != (otherData as! Type){
                        result = false }
                    
                case is Wood:
                    if (orgData as! Wood) != (otherData as! Wood){
                        result = false }
                    
                case is Builder:
                    if (orgData as! Builder) != (otherData as! Builder){
                        result = false }
                    
                case is InstrumentType:
                    if (orgData as! InstrumentType) != (otherData as! InstrumentType){
                        result = false }
                    
                case is String:
                    if (orgData as! String) != (otherData as! String) {
                        result = false }
                    
                default:
                    print("unkonw key:\(otherKey)")
                }
                
            }
            
            if result == false
            {
                //print("key:\(otherKey)..... orgData:\(orgData!), otherData:\(otherData)")
                return false;
            }
        }
        
        
        /*
        for (key, data) in properties
        {
            //print("key:\(key), data:\(data)")
         
            var result:Bool = true
            
            if data == nil
            {
                print("nil Data When key:\(key)")
            }
            
            let otherData = otherSpec.getProperty(keyname: key)
            if (otherData == nil)
            {
                //print("nil Data When key:\(key)")
            }
            else
            {
             
                switch data {
                case is Int:
                    if (data as! Int) != (otherData as? Int){
                        result = false }
                    
                case is Type:
                    if (data as! Type) != (otherData as! Type){
                        result = false }
                    
                case is Wood:
                    if (data as? Wood) != (otherData as? Wood){
                        result = false }
                    
                case is Builder:
                    if (data as! Builder) != (otherData as! Builder){
                        result = false }
                    
                case is InstrumentType:
                    if (data as? InstrumentType) != (otherData as? InstrumentType){
                        result = false }
                    
                case is String:
                    if (data as! String) != (otherData as! String) {
                        result = false }
                
                default:
                    print("unkonw key:\(key)")
                }
            }
            
            if result == false
            {
                //print("key:\(key)..... orgData:\(data), otherData:\(otherData)")
                return false;
            }
 
        }
        */
 
 
        print()
        return true
    }
    
    
    func showPrint()->String
    {
        var result = ""
        for (keyname, data) in properties
        {
            result += "     \(keyname) : \(data)\n"
        }
        
        return result
    }
    
}
