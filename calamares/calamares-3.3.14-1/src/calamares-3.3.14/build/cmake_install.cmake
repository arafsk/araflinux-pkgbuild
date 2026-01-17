# Install script for directory: /home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/lang/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/3rdparty/kdsingleapplication/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/3rdparty/pybind11/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/src/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/lib/cmake/Calamares/CalamaresTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}/usr/lib/cmake/Calamares/CalamaresTargets.cmake"
         "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/CMakeFiles/Export/db4397c3bfc7a5892366cfeaedbdf673/CalamaresTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}/usr/lib/cmake/Calamares/CalamaresTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}/usr/lib/cmake/Calamares/CalamaresTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/lib/cmake/Calamares/CalamaresTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/lib/cmake/Calamares" TYPE FILE FILES "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/CMakeFiles/Export/db4397c3bfc7a5892366cfeaedbdf673/CalamaresTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/usr/lib/cmake/Calamares/CalamaresTargets-release.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "/usr/lib/cmake/Calamares" TYPE FILE FILES "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/CMakeFiles/Export/db4397c3bfc7a5892366cfeaedbdf673/CalamaresTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/lib/cmake/Calamares/CalamaresConfig.cmake;/usr/lib/cmake/Calamares/CalamaresConfigVersion.cmake;/usr/lib/cmake/Calamares/CalamaresAddBrandingSubdirectory.cmake;/usr/lib/cmake/Calamares/CalamaresAddLibrary.cmake;/usr/lib/cmake/Calamares/CalamaresAddModuleSubdirectory.cmake;/usr/lib/cmake/Calamares/CalamaresAddPlugin.cmake;/usr/lib/cmake/Calamares/CalamaresAddTest.cmake;/usr/lib/cmake/Calamares/CalamaresAddTranslations.cmake;/usr/lib/cmake/Calamares/CalamaresAutomoc.cmake;/usr/lib/cmake/Calamares/CalamaresCheckModuleSelection.cmake;/usr/lib/cmake/Calamares/CMakeColors.cmake;/usr/lib/cmake/Calamares/FindYAMLCPP.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/lib/cmake/Calamares" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/CalamaresConfig.cmake"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/CalamaresConfigVersion.cmake"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/CMakeModules/CalamaresAddBrandingSubdirectory.cmake"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/CMakeModules/CalamaresAddLibrary.cmake"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/CMakeModules/CalamaresAddModuleSubdirectory.cmake"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/CMakeModules/CalamaresAddPlugin.cmake"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/CMakeModules/CalamaresAddTest.cmake"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/CMakeModules/CalamaresAddTranslations.cmake"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/CMakeModules/CalamaresAutomoc.cmake"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/CMakeModules/CalamaresCheckModuleSelection.cmake"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/CMakeModules/CMakeColors.cmake"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/CMakeModules/FindYAMLCPP.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/polkit-1/actions/com.github.calamares.calamares.policy")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/polkit-1/actions" TYPE FILE FILES "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/com.github.calamares.calamares.policy")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/applications" TYPE FILE FILES "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/calamares.desktop")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man8" TYPE FILE FILES "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/man/calamares.8")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
