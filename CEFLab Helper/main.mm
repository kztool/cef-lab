//
//  main.m
//  CEFLab Helper
//
//  Created by 田硕 on 2019/1/19.
//  Copyright © 2019 kztool. All rights reserved.
//

#include "include/cef_app.h"
#include "include/wrapper/cef_library_loader.h"
#include "include/cef_sandbox_mac.h"

// Entry point function for sub-processes.
int main(int argc, char* argv[]) {
  // Initialize the macOS sandbox for this helper process.
  CefScopedSandboxContext sandbox_context;
  if (!sandbox_context.Initialize(argc, argv))
    return 1;
  
  // Load the CEF framework library at runtime instead of linking directly
  // as required by the macOS sandbox implementation.
  CefScopedLibraryLoader library_loader;
  if (!library_loader.LoadInHelper())
    return 1;
  
  // Provide CEF with command-line arguments.
  CefMainArgs main_args(argc, argv);
  
  // Execute the sub-process.
  return CefExecuteProcess(main_args, NULL, NULL);
}
