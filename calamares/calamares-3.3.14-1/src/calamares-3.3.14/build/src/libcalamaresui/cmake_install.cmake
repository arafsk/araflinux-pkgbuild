# Install script for directory: /home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}/usr/lib/libcalamaresui.so.3.3.14"
      "$ENV{DESTDIR}/usr/lib/libcalamaresui.so.3.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/lib/libcalamaresui.so.3.3.14;/usr/lib/libcalamaresui.so.3.3")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/lib" TYPE SHARED_LIBRARY FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/libcalamaresui.so.3.3.14"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/libcalamaresui.so.3.3"
    )
  foreach(file
      "$ENV{DESTDIR}/usr/lib/libcalamaresui.so.3.3.14"
      "$ENV{DESTDIR}/usr/lib/libcalamaresui.so.3.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/lib/libcalamaresui.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/lib" TYPE SHARED_LIBRARY FILES "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/libcalamaresui.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/Branding.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/ViewManager.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/modulesystem" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/modulesystem/CppJobModule.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/modulesystem/ModuleFactory.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/modulesystem/ModuleManager.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/modulesystem/ProcessJobModule.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/modulesystem/PythonJobModule.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/modulesystem/ViewModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/utils" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/utils/Gui.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/utils/ImageRegistry.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/utils/Paste.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/utils/Qml.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/utils/QtCompat.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/viewpages" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/viewpages/BlankViewStep.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/viewpages/ExecutionViewStep.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/viewpages/QmlViewStep.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/viewpages/Slideshow.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/viewpages/ViewStep.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/widgets" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/widgets/ClickableLabel.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/widgets/ErrorDialog.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/widgets/FixedAspectRatioLabel.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/widgets/LogWidget.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/widgets/PrettyRadioButton.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/widgets/TranslationFix.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/widgets/WaitingWidget.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamaresui/widgets/waitingspinnerwidget.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/src/libcalamaresui/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
