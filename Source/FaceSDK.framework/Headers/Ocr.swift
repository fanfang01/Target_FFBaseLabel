//
//  Ocr.swift
//  FaceSdk
//
//  Created by 余藩 on 2017/6/6.
//  Copyright © 2017年 Personal. All rights reserved.
//

import UIKit
import SwiftyJSON

public class UserInfo: NSObject {
    
    public var address: String = ""
    
    public var birthday:String = ""
    
    public var certid:String = ""
    
    public var fork:String = ""
    
    public var identyId:String = ""
    
    public var issue_authority:String = ""
    
    public var name:String = ""
    
    public var sex:String = ""
    
    public var type:Int = 0
    
    public var vaild_priod:String = ""
    
    init(json:JSON) {
        address = json["address"].stringValue
        birthday = json["birthday"].stringValue
        certid = json["certid"].stringValue
        fork = json["fork"].stringValue
        identyId = json["identyId"].stringValue
        issue_authority = json["issue_authority"].stringValue
        name = json["name"].stringValue
        sex = json["sex"].stringValue
        type = json["type"].intValue
        vaild_priod = json["vaild_priod"].stringValue
    }
}



public class Ocr: NSObject {

    static public let shared: Ocr = {
        return Ocr()
    }()
    
    var validateSDK: Bool = false
    
    public func validateSDKService() {
        OcrService().validateSDKService()
    }
    
    public func canGetSDKService()->Bool {
        return Ocr.shared.validateSDK
    }
    
    /// 身份证图形信息识别接口
    ///
    /// - Parameters:
    ///   - type: 身份证正反照 0:人像面 1:国徽面 不传默认为 0
    ///   - photoStr: 身份证图片数据 imageData base64EncodedString
    ///   - timeOut: 超时回调
    ///   - success: 成功回调 返回 UserInfo
    ///   - failure: 失败回到
    
    public func IdentifyIDCard(_ type:Int, photoStr:String,
                               timeOut : (()->Void)? = nil,
                               success : @escaping (_ userInfo: UserInfo) -> Void,
                               failure : @escaping (Error?, _ msg:String?) -> Void){
        OcrService().IdentifyIDCard(type, attachment: photoStr, timeOut: timeOut, success: success, failure: failure)
    }
}
