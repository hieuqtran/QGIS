########################################################
# Files

SET (SPATIALQUERY_SRCS
     qgsspatialqueryplugin.cpp
     qgsspatialquerydialog.cpp
     qgsspatialquery.cpp
     qgsreaderfeatures.cpp
     qgsrubberselectid.cpp
     qgsgeometrycoordinatetransform.cpp
     qgsmngprogressbar.cpp
)

SET (SPATIALQUERY_MOC_HDRS
     qgsspatialqueryplugin.h
     qgsspatialquerydialog.h
)

SET( SPATIALQUERY_UIS qgsspatialquerydialogbase.ui)

SET (SPATIALQUERY_RCCS qgsspatialquerydialogbase.qrc)

########################################################
# Build

QT5_WRAP_UI (SPATIALQUERY_UIS_H  ${SPATIALQUERY_UIS})

QT5_WRAP_CPP (SPATIALQUERY_MOC_SRCS  ${SPATIALQUERY_MOC_HDRS})

QT5_ADD_RESOURCES (SPATIALQUERY_RCC_SRCS ${SPATIALQUERY_RCCS})

ADD_LIBRARY (spatialqueryplugin MODULE ${SPATIALQUERY_SRCS} ${SPATIALQUERY_MOC_SRCS} ${SPATIALQUERY_RCC_SRCS} ${SPATIALQUERY_UIS_H})

INCLUDE_DIRECTORIES(SYSTEM
     ${GEOS_INCLUDE_DIR}
)

INCLUDE_DIRECTORIES(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}/../../ui/
  ../../core
  ../../core/geometry
  ../../core/raster
  ../../gui
  ..
  ${CMAKE_BINARY_DIR}/src/core
  ${CMAKE_BINARY_DIR}/src/gui
)

TARGET_LINK_LIBRARIES(spatialqueryplugin
  qgis_core
  qgis_gui
)


########################################################
# Install

INSTALL(TARGETS spatialqueryplugin
  RUNTIME DESTINATION ${QGIS_PLUGIN_DIR}
  LIBRARY DESTINATION ${QGIS_PLUGIN_DIR})
