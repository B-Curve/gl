//
// Created by Brandon on 9/6/2020.
//

#include "FileUtil.h"

std::string load_file_to_string(const std::string &filepath) {
    return load_file_to_string(filepath, nullptr);
}

std::string load_file_to_string(const std::string &filepath, const char* fileType) {
    std::ifstream file(filepath);
    std::string temp;

    if (!file) {
        if (!fileType) {
            std::cerr << "Unable to open file [" << filepath << "]." << std::endl;
        } else {
            std::cerr << "Unable to open " << fileType << " file [" << filepath << "]." << std::endl;
        }

        return "";
    }

    std::string content;

    while (std::getline(file, temp, '\n')) {
        content += (temp + '\n');
    }

    file.close();
    return content;
}
