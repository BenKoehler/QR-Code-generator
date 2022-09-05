add_library(libQrCodeGenerator STATIC EXCLUDE_FROM_ALL ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/QR-Code-generator/cpp/qrcodegen.cpp)
ConfigureCompileOptions(libQrCodeGenerator PRIVATE)
target_include_directories(libQrCodeGenerator SYSTEM PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/QR-Code-generator/cpp)

function(link_qr_code_generator target MOD)
    target_link_libraries(${target} ${MOD} libQrCodeGenerator)
endfunction()
