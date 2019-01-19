//
//  utils.hpp
//  CEFLab
//
//  Created by 田硕 on 2019/1/19.
//  Copyright © 2019 kztool. All rights reserved.
//

#ifndef utils_h
#define utils_h


#include <set>
#include <string>

#include "include/cef_browser.h"
#include "include/cef_request.h"
#include "include/wrapper/cef_message_router.h"
#include "include/wrapper/cef_resource_manager.h"

namespace utils {
  
  std::string GetDataURI(const std::string& data, const std::string& mime_type);
  
  std::string GetErrorString(cef_errorcode_t code);
  
  void Alert(CefRefPtr<CefBrowser> browser, const std::string& message);

}

#endif /* utils_hpp */
