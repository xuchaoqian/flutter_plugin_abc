cmake_minimum_required(VERSION 3.10.0)  # for example

add_library( flutter_plugin_abc

             # Sets the library as a shared library.
             SHARED

             # Provides a relative path to your source file(s).
             ../ios/Classes/native_add.cpp )