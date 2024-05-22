//
//  Face.swift
//  FaceDemo
//
//  Created by 余藩 on 2017/5/18.
//  Copyright © 2017年 Personal. All rights reserved.
//

import UIKit

/// 人脸调用返回码
///
/// - success: 成功
/// - cancel: 取消
/// - failure: 失败

public enum Code:Int {
    case success = 0
    case cancel = 1
    case failure = 2
}

public class Face: NSObject {
    
    static public let shared: Face = {
        return Face()
    }()
    
    var orderNo:String = ""
    
    var vdUuid:String = ""
    
    var uuid:String = ""
    
    var currentViewController: UIViewController?
   
    var delegate: WBFaceVerifyCustomerServiceDelegate?
    
    public var app_id :String = ""
    
    public var app_scret:String = ""
    
    /// 刷脸调用 成功 失败，返回回调
//    public var getFaceServiceComoleteHandle: ((_ orderNo:String? , _ msg: String, _ code: Int)->Void)?
//
//    public func checkManAuth(_ vdUuid:String,
//                             timeOut : @escaping ()->Void,
//                             success : @escaping() -> Void,
//                             failure : @escaping (_ msg:String?) -> Void) {
//
//        FaceService().validateFace(vdUuid, timeOut: timeOut, success: success, failure: failure)
//    }
}

