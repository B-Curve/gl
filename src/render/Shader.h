//
// Created by Brandon on 9/5/2020.
//

#ifndef GLTEST_SHADER_H
#define GLTEST_SHADER_H

#include <GL/glew.h>
#include <map>
#include <cstdio>
#include <string>
#include <cstring>
#include "../util/FileUtil.h"

enum ShaderType {
    S_Triangle,
};

class Shader {
public:
    inline static Shader from_type(ShaderType shaderType) {
        switch (shaderType) {
            case S_Triangle:
                return from_path("../assets/shaders/triangle");
            default:
                throw std::runtime_error("Invalid shader type.");
        }
    }

    inline static Shader from_path(const std::string &path) {
        return {path};
    }

    inline void bind() const {
        glUseProgram(pid);
    }

    void setBool(const std::string &name, bool value) const;
    void setInt(const std::string &name, int value) const;
    void setFloat(const std::string &name, float value) const;
private:
    Shader(const std::string &path) {
        unsigned int vertexShader;
        vertexShader = glCreateShader(GL_VERTEX_SHADER);

        std::string v_shader = load_file_to_string(path + ".vert");
        const char* v_src = v_shader.c_str();

        glShaderSource(vertexShader, 1, &v_src, nullptr);
        glCompileShader(vertexShader);

        unsigned int fragmentShader;
        fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);

        std::string f_shader = load_file_to_string(path + ".frag");
        const char* f_src = f_shader.c_str();

        glShaderSource(fragmentShader, 1, &f_src, nullptr);
        glCompileShader(fragmentShader);

        pid = glCreateProgram();

        glAttachShader(pid, vertexShader);
        glAttachShader(pid, fragmentShader);
        glLinkProgram(pid);

        glUseProgram(pid);

        glDeleteShader(vertexShader);
        glDeleteShader(fragmentShader);

        glUseProgram(0);
    }

    unsigned int pid;
};


#endif //GLTEST_SHADER_H
