//
// Created by Brandon on 9/5/2020.
//

#include "Shader.h"

void Shader::setBool(const std::string &name, bool value) const {
    glUniform1i(glGetUniformLocation(pid, name.c_str()), (int)value);
}

void Shader::setInt(const std::string &name, int value) const {
    glUniform1i(glGetUniformLocation(pid, name.c_str()), value);
}

void Shader::setFloat(const std::string &name, float value) const {
    glUniform1f(glGetUniformLocation(pid, name.c_str()), value);
}
