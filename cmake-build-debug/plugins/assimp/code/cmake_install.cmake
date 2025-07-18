# Install script for directory: /Users/cukesheep/flare/plugins/assimp/code

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libassimp6.0.2-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/cukesheep/flare/cmake-build-debug/plugins/assimp/lib/libassimpd.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimpd.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimpd.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimpd.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "assimp-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp" TYPE FILE FILES
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/anim.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/aabb.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/ai_assert.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/camera.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/color4.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/color4.inl"
    "/Users/cukesheep/flare/cmake-build-debug/plugins/assimp/code/../include/assimp/config.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/ColladaMetaData.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/commonMetaData.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/defs.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/cfileio.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/light.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/material.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/material.inl"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/matrix3x3.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/matrix3x3.inl"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/matrix4x4.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/matrix4x4.inl"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/mesh.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/ObjMaterial.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/pbrmaterial.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/GltfMaterial.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/postprocess.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/quaternion.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/quaternion.inl"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/scene.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/metadata.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/texture.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/types.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/vector2.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/vector2.inl"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/vector3.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/vector3.inl"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/version.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/cimport.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/AssertHandler.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/importerdesc.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/Importer.hpp"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/DefaultLogger.hpp"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/ProgressHandler.hpp"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/IOStream.hpp"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/IOSystem.hpp"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/Logger.hpp"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/LogStream.hpp"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/NullLogger.hpp"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/cexport.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/Exporter.hpp"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/DefaultIOStream.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/DefaultIOSystem.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/ZipArchiveIOSystem.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/SceneCombiner.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/fast_atof.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/qnan.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/BaseImporter.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/Hash.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/MemoryIOWrapper.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/ParsingUtils.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/StreamReader.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/StreamWriter.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/StringComparison.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/StringUtils.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/SGSpatialSort.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/GenericProperty.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/SpatialSort.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/SkeletonMeshBuilder.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/SmallVector.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/SmoothingGroups.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/SmoothingGroups.inl"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/StandardShapes.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/RemoveComments.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/Subdivision.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/Vertex.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/LineSplitter.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/TinyFormatter.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/Profiler.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/LogAux.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/Bitmap.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/XMLTools.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/IOStreamBuffer.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/CreateAnimMesh.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/XmlParser.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/BlobIOSystem.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/MathFunctions.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/Exceptional.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/ByteSwapper.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/Base64.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "assimp-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp/Compiler" TYPE FILE FILES
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/Compiler/pushpack1.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/Compiler/poppack1.h"
    "/Users/cukesheep/flare/plugins/assimp/code/../include/assimp/Compiler/pstdint.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/cukesheep/flare/cmake-build-debug/plugins/assimp/code/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
