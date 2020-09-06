//
// Created by Brandon on 9/6/2020.
//

#ifndef GLTEST_FILEUTIL_H
#define GLTEST_FILEUTIL_H

#include <string>
#include <fstream>
#include <iostream>

std::string load_file_to_string(const std::string &filepath);

std::string load_file_to_string(const std::string &filepath, const char* fileType);

#endif //GLTEST_FILEUTIL_H
