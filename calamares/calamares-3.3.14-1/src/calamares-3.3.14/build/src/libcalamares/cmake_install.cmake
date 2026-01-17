# Install script for directory: /home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares

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
      "$ENV{DESTDIR}/usr/lib/libcalamares.so.3.3.14"
      "$ENV{DESTDIR}/usr/lib/libcalamares.so.3.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/lib/libcalamares.so.3.3.14;/usr/lib/libcalamares.so.3.3")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/lib" TYPE SHARED_LIBRARY FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/libcalamares.so.3.3.14"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/libcalamares.so.3.3"
    )
  foreach(file
      "$ENV{DESTDIR}/usr/lib/libcalamares.so.3.3.14"
      "$ENV{DESTDIR}/usr/lib/libcalamares.so.3.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/lib/libcalamares.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/lib" TYPE SHARED_LIBRARY FILES "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/libcalamares.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  
    file( MAKE_DIRECTORY "$ENV{DESTDIR}//usr/lib/calamares" )
    execute_process( COMMAND "/usr/bin/cmake" -E create_symlink ../libcalamares.so.3.3.14 libcalamares.so WORKING_DIRECTORY "$ENV{DESTDIR}//usr/lib/calamares" )

endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/src/libcalamares/CalamaresConfig.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/src/libcalamares/CalamaresVersion.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/CalamaresAbout.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/CppJob.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/DllMacro.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/GlobalStorage.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/Job.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/JobExample.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/JobQueue.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/ProcessJob.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/Settings.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/geoip" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/geoip/GeoIPFixed.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/geoip/GeoIPJSON.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/geoip/GeoIPTests.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/geoip/GeoIPXML.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/geoip/Handler.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/geoip/Interface.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/locale" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/locale/Global.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/locale/Lookup.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/locale/TimeZone.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/locale/TranslatableConfiguration.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/locale/TranslatableString.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/locale/Translation.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/locale/TranslationsModel.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/modulesystem" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/modulesystem/Actions.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/modulesystem/Config.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/modulesystem/Descriptor.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/modulesystem/InstanceKey.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/modulesystem/Module.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/modulesystem/Preset.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/modulesystem/Requirement.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/modulesystem/RequirementsChecker.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/modulesystem/RequirementsModel.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/network" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/network/Manager.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/network/Tests.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/partition" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/partition/AutoMount.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/partition/FileSystem.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/partition/Global.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/partition/KPMHelper.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/partition/KPMManager.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/partition/Mount.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/partition/PartitionIterator.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/partition/PartitionQuery.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/partition/PartitionSize.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/partition/Sync.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/utils" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/CommandList.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/Dirs.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/Entropy.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/Logger.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/NamedEnum.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/NamedSuffix.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/Permissions.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/PluginFactory.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/RAII.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/Retranslator.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/Runner.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/String.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/StringExpander.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/System.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/Traits.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/UMask.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/Units.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/Variant.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/Yaml.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/utils/moc-warnings.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/compat" TYPE FILE FILES
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/compat/CheckBox.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/compat/Mutex.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/compat/Size.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/compat/Variant.h"
    "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/compat/Xml.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/packages" TYPE FILE FILES "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/src/libcalamares/packages/Globals.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/sk/Documents/Github/araflinux-pkgbuild/calamares/calamares-3.3.14-1/src/calamares-3.3.14/build/src/libcalamares/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
