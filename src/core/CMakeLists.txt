############################################################
# sources

SET(QGIS_CORE_SRCS
  gps/context.c
  gps/gmath.c
  gps/info.c
  gps/parse.c
  gps/qgsgpsconnection.cpp
  gps/qgsgpsconnectionregistry.cpp
  gps/qgsgpsdconnection.cpp
  gps/qgsgpsdetector.cpp
  gps/qgsnmeaconnection.cpp
  gps/sentence.c
  gps/time.c
  gps/tok.c

  symbology-ng/qgs25drenderer.cpp
  symbology-ng/qgsarrowsymbollayer.cpp
  symbology-ng/qgscategorizedsymbolrenderer.cpp
  symbology-ng/qgscolorbrewerpalette.cpp
  symbology-ng/qgscptcityarchive.cpp
  symbology-ng/qgsellipsesymbollayer.cpp
  symbology-ng/qgsfillsymbollayer.cpp
  symbology-ng/qgsgeometrygeneratorsymbollayer.cpp
  symbology-ng/qgsgraduatedsymbolrenderer.cpp
  symbology-ng/qgsheatmaprenderer.cpp
  symbology-ng/qgsinvertedpolygonrenderer.cpp
  symbology-ng/qgslegendsymbolitem.cpp
  symbology-ng/qgslinesymbollayer.cpp
  symbology-ng/qgsmarkersymbollayer.cpp
  symbology-ng/qgsnullsymbolrenderer.cpp
  symbology-ng/qgspointclusterrenderer.cpp
  symbology-ng/qgspointdisplacementrenderer.cpp
  symbology-ng/qgspointdistancerenderer.cpp
  symbology-ng/qgsrenderer.cpp
  symbology-ng/qgsrendererregistry.cpp
  symbology-ng/qgsrulebasedrenderer.cpp
  symbology-ng/qgssinglesymbolrenderer.cpp
  symbology-ng/qgsstyle.cpp
  symbology-ng/qgssvgcache.cpp
  symbology-ng/qgssymbollayer.cpp
  symbology-ng/qgssymbollayerregistry.cpp
  symbology-ng/qgssymbollayerutils.cpp
  symbology-ng/qgssymbologyconversion.cpp
  symbology-ng/qgssymbol.cpp
  symbology-ng/qgsvectorfieldsymbollayer.cpp

  simplify/effectivearea.cpp

  diagram/qgsdiagram.cpp
  diagram/qgshistogramdiagram.cpp
  diagram/qgspiediagram.cpp
  diagram/qgstextdiagram.cpp

  effects/qgsblureffect.cpp
  effects/qgscoloreffect.cpp
  effects/qgseffectstack.cpp
  effects/qgsgloweffect.cpp
  effects/qgsimageoperation.cpp
  effects/qgspainteffect.cpp
  effects/qgspainteffectregistry.cpp
  effects/qgsshadoweffect.cpp
  effects/qgstransformeffect.cpp

  layertree/qgslayertreegroup.cpp
  layertree/qgslayertreelayer.cpp
  layertree/qgslayertreemodel.cpp
  layertree/qgslayertreemodellegendnode.cpp
  layertree/qgslayertreenode.cpp
  layertree/qgslayertreeregistrybridge.cpp
  layertree/qgslayertreeutils.cpp

  auth/qgsauthcertutils.cpp
  auth/qgsauthconfig.cpp
  auth/qgsauthcrypto.cpp
  auth/qgsauthmanager.cpp
  auth/qgsauthmethodmetadata.cpp
  auth/qgsauthmethodregistry.cpp

  qgis.cpp
  qgsapplication.cpp
  qgsaction.cpp
  qgsactionmanager.cpp
  qgsaggregatecalculator.cpp
  qgsattributetableconfig.cpp
  qgsattributeeditorelement.cpp
  qgsbearingutils.cpp
  qgsbrowsermodel.cpp
  qgscachedfeatureiterator.cpp
  qgscacheindex.cpp
  qgscacheindexfeatureid.cpp
  qgsclipper.cpp
  qgscolorramp.cpp
  qgscolorscheme.cpp
  qgscolorschemeregistry.cpp
  qgsconditionalstyle.cpp
  qgscontexthelp.cpp
  qgscoordinatereferencesystem.cpp
  qgscoordinatetransform.cpp
  qgscoordinateutils.cpp
  qgscredentials.cpp
  qgscrscache.cpp
  qgsdartmeasurement.cpp
  qgsdatadefined.cpp
  qgsdataitem.cpp
  qgsdataitemprovider.cpp
  qgsdataitemproviderregistry.cpp
  qgsdatasourceuri.cpp
  qgsdataprovider.cpp
  qgsdatetimestatisticalsummary.cpp
  qgsdatumtransformstore.cpp
  qgsdbfilterproxymodel.cpp
  qgsdiagramrenderer.cpp
  qgsdistancearea.cpp
  qgseditformconfig.cpp
  qgserror.cpp
  qgsexpression.cpp
  qgsexpressioncontext.cpp
  qgsexpressionfieldbuffer.cpp
  qgsfeature.cpp
  qgsfeatureiterator.cpp
  qgsfeaturerequest.cpp
  qgsfeaturestore.cpp
  qgsfield.cpp
  qgsfields.cpp
  qgsfontutils.cpp
  qgsgeometrycache.cpp
  qgsgeometrysimplifier.cpp
  qgsgeometryvalidator.cpp
  qgsgml.cpp
  qgsgmlschema.cpp
  qgshistogram.cpp
  qgsinterval.cpp
  qgsjsonutils.cpp
  qgslabelfeature.cpp
  qgslabelingengine.cpp
  qgslabelsearchtree.cpp
  qgslayerdefinition.cpp
  qgslegendrenderer.cpp
  qgslegendsettings.cpp
  qgslocalec.cpp
  qgslogger.cpp
  qgsmaphittest.cpp
  qgsmaplayer.cpp
  qgsmaplayerlegend.cpp
  qgsmaplayermodel.cpp
  qgsmaplayerproxymodel.cpp
  qgsmaplayerregistry.cpp
  qgsmaplayerstylemanager.cpp
  qgsmaprenderercache.cpp
  qgsmaprenderercustompainterjob.cpp
  qgsmaprendererjob.cpp
  qgsmaprendererparalleljob.cpp
  qgsmaprenderersequentialjob.cpp
  qgsmapsettings.cpp
  qgsmaptopixel.cpp
  qgsmaptopixelgeometrysimplifier.cpp
  qgsmessagelog.cpp
  qgsmessageoutput.cpp
  qgsmimedatautils.cpp
  qgsmultirenderchecker.cpp
  qgsnetworkaccessmanager.cpp
  qgsnetworkdiskcache.cpp
  qgsnetworkcontentfetcher.cpp
  qgsnetworkreplyparser.cpp
  qgsobjectcustomproperties.cpp
  qgsofflineediting.cpp
  qgsogcutils.cpp
  qgsogrutils.cpp
  qgsoptionalexpression.cpp
  qgsowsconnection.cpp
  qgspaintenginehack.cpp
  qgspainting.cpp
  qgspallabeling.cpp
  qgspluginlayer.cpp
  qgspluginlayerregistry.cpp
  qgspoint.cpp
  qgspointlocator.cpp
  qgsproject.cpp
  qgsprojectbadlayerhandler.cpp
  qgsprojectfiletransform.cpp
  qgssnappingconfig.cpp
  qgsprojectproperty.cpp
  qgsprojectversion.cpp
  qgsprovidermetadata.cpp
  qgsproviderregistry.cpp
  qgspythonrunner.cpp
  qgsrectangle.cpp
  qgsrelation.cpp
  qgsrelationmanager.cpp
  qgsrenderchecker.cpp
  qgsrendercontext.cpp
  qgsrulebasedlabeling.cpp
  qgsrunprocess.cpp
  qgsruntimeprofiler.cpp
  qgsscalecalculator.cpp
  qgsscaleexpression.cpp
  qgsscaleutils.cpp
  qgssimplifymethod.cpp
  qgsslconnect.cpp
  qgssnapper.cpp
  qgssnappingutils.cpp
  qgsspatialindex.cpp
  qgssqlexpressioncompiler.cpp
  qgssqliteexpressioncompiler.cpp
  qgssqlstatement.cpp
  qgsstatisticalsummary.cpp
  qgsstringstatisticalsummary.cpp
  qgsstringutils.cpp
  qgstextlabelfeature.cpp
  qgstextrenderer.cpp
  qgstolerance.cpp
  qgstracer.cpp
  qgstransaction.cpp
  qgstransactiongroup.cpp
  qgsunittypes.cpp
  qgsvectordataprovider.cpp
  qgsvectorfilewriter.cpp
  qgsvectorlayer.cpp
  qgsvectorlayercache.cpp
  qgsvectorlayerdiagramprovider.cpp
  qgsvectorlayereditbuffer.cpp
  qgsvectorlayereditpassthrough.cpp
  qgsvectorlayereditutils.cpp
  qgsvectorlayerfeatureiterator.cpp
  qgsvectorlayerimport.cpp
  qgsvectorlayerjoinbuffer.cpp
  qgsvectorlayerlabeling.cpp
  qgsvectorlayerlabelprovider.cpp
  qgsvectorlayerrenderer.cpp
  qgsvectorlayerundocommand.cpp
  qgsvectorsimplifymethod.cpp
  qgsvirtuallayerdefinition.cpp
  qgsvirtuallayerdefinitionutils.cpp
  qgsmapthemecollection.cpp
  qgsxmlutils.cpp

  composer/qgsaddremoveitemcommand.cpp
  composer/qgsaddremovemultiframecommand.cpp
  composer/qgsatlascomposition.cpp
  composer/qgscomposerarrow.cpp
  composer/qgscomposerattributetablemodelv2.cpp
  composer/qgscomposerattributetablev2.cpp
  composer/qgscomposereffect.cpp
  composer/qgscomposerframe.cpp
  composer/qgscomposerhtml.cpp
  composer/qgscomposeritem.cpp
  composer/qgscomposeritemcommand.cpp
  composer/qgscomposeritemgroup.cpp
  composer/qgscomposerlabel.cpp
  composer/qgscomposerlegend.cpp
  composer/qgscomposerlegenditem.cpp
  composer/qgscomposerlegendstyle.cpp
  composer/qgscomposermap.cpp
  composer/qgscomposermapgrid.cpp
  composer/qgscomposermapitem.cpp
  composer/qgscomposermapoverview.cpp
  composer/qgscomposermodel.cpp
  composer/qgscomposermousehandles.cpp
  composer/qgscomposermultiframe.cpp
  composer/qgscomposermultiframecommand.cpp
  composer/qgscomposerobject.cpp
  composer/qgscomposerpicture.cpp
  composer/qgscomposerscalebar.cpp
  composer/qgscomposershape.cpp
  composer/qgscomposernodesitem.cpp
  composer/qgscomposerpolygon.cpp
  composer/qgscomposerpolyline.cpp
  composer/qgscomposertablecolumn.cpp
  composer/qgscomposertablev2.cpp
  composer/qgscomposertexttable.cpp
  composer/qgscomposerutils.cpp
  composer/qgscomposition.cpp
  composer/qgsdoubleboxscalebarstyle.cpp
  composer/qgsgroupungroupitemscommand.cpp
  composer/qgsnumericscalebarstyle.cpp
  composer/qgspaperitem.cpp
  composer/qgsscalebarstyle.cpp
  composer/qgssingleboxscalebarstyle.cpp
  composer/qgsticksscalebarstyle.cpp

  dxf/qgsdxfexport.cpp
  dxf/qgsdxfpaintdevice.cpp
  dxf/qgsdxfpaintengine.cpp
  dxf/qgsdxfpallabeling.cpp

  pal/costcalculator.cpp
  pal/feature.cpp
  pal/geomfunction.cpp
  pal/labelposition.cpp
  pal/layer.cpp
  pal/pal.cpp
  pal/palstat.cpp
  pal/pointset.cpp
  pal/priorityqueue.cpp
  pal/problem.cpp
  pal/rtree.hpp
  pal/util.cpp

  raster/qgscliptominmaxenhancement.cpp
  raster/qgscolorrampshader.cpp
  raster/qgscontrastenhancement.cpp
  raster/qgscontrastenhancementfunction.cpp
  raster/qgslinearminmaxenhancement.cpp
  raster/qgslinearminmaxenhancementwithclip.cpp
  raster/qgsraster.cpp
  raster/qgsrasterblock.cpp
  raster/qgsrasterchecker.cpp
  raster/qgsrasterdataprovider.cpp
  raster/qgsrasteridentifyresult.cpp
  raster/qgsrasterinterface.cpp
  raster/qgsrasteriterator.cpp
  raster/qgsrasterlayer.cpp
  raster/qgsrasterlayerrenderer.cpp
  raster/qgsrasternuller.cpp
  raster/qgsrasterpipe.cpp
  raster/qgsrasterprojector.cpp
  raster/qgsrasterrange.cpp
  raster/qgsrastershader.cpp
  raster/qgsrastershaderfunction.cpp
  raster/qgsrastertransparency.cpp

  raster/qgsbilinearrasterresampler.cpp
  raster/qgsbrightnesscontrastfilter.cpp
  raster/qgscubicrasterresampler.cpp
  raster/qgshuesaturationfilter.cpp
  raster/qgsmultibandcolorrenderer.cpp
  raster/qgspalettedrasterrenderer.cpp
  raster/qgsrasterdrawer.cpp
  raster/qgsrasterfilewriter.cpp
  raster/qgsrasterrenderer.cpp
  raster/qgsrasterrendererregistry.cpp
  raster/qgsrasterresamplefilter.cpp
  raster/qgssinglebandcolordatarenderer.cpp
  raster/qgssinglebandgrayrenderer.cpp
  raster/qgssinglebandpseudocolorrenderer.cpp
  raster/qgshillshaderenderer.cpp

  geometry/qgsabstractgeometry.cpp
  geometry/qgscircularstring.cpp
  geometry/qgscompoundcurve.cpp
  geometry/qgscurvepolygon.cpp
  geometry/qgscurve.cpp
  geometry/qgsgeometry.cpp
  geometry/qgsgeometrycollection.cpp
  geometry/qgsgeometryeditutils.cpp
  geometry/qgsgeometryfactory.cpp
  geometry/qgsgeometryutils.cpp
  geometry/qgsgeos.cpp
  geometry/qgsinternalgeometryengine.cpp
  geometry/qgslinestring.cpp
  geometry/qgsmulticurve.cpp
  geometry/qgsmultilinestring.cpp
  geometry/qgsmultipoint.cpp
  geometry/qgsmultipolygon.cpp
  geometry/qgsmultisurface.cpp
  geometry/qgspointv2.cpp
  geometry/qgspolygon.cpp
  geometry/qgswkbptr.cpp
  geometry/qgswkbtypes.cpp

  ${CMAKE_CURRENT_BINARY_DIR}/qgscontexthelp_texts.cpp
  ${CMAKE_CURRENT_BINARY_DIR}/qgsexpression_texts.cpp
)


FILE(GLOB JSON_HELP_FILES "${CMAKE_SOURCE_DIR}/resources/function_help/json/*")
IF(NOT USING_NINJA)
  STRING(REPLACE "$" "$$" JSON_HELP_FILES "${JSON_HELP_FILES}")
ENDIF(NOT USING_NINJA)
STRING(REPLACE "\(" "\\(" JSON_HELP_FILES "${JSON_HELP_FILES}")
STRING(REPLACE "\)" "\\)" JSON_HELP_FILES "${JSON_HELP_FILES}")
ADD_CUSTOM_COMMAND(OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/qgsexpression_texts.cpp
  COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/process_function_template.py ${CMAKE_CURRENT_BINARY_DIR}/qgsexpression_texts.cpp.temp
  COMMAND ${CMAKE_COMMAND} -DSRC=${CMAKE_CURRENT_BINARY_DIR}/qgsexpression_texts.cpp.temp -DDST=${CMAKE_CURRENT_BINARY_DIR}/qgsexpression_texts.cpp -P ${CMAKE_SOURCE_DIR}/cmake/CopyIfChanged.cmake
  DEPENDS ${JSON_HELP_FILES}
  WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
)

FILE(GLOB CONTEXT_HELP_FILES "${CMAKE_SOURCE_DIR}/resources/context_help/*")
ADD_CUSTOM_COMMAND(OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/qgscontexthelp_texts.cpp
  COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/process_contexthelp.py ${CMAKE_CURRENT_BINARY_DIR}/qgscontexthelp_texts.cpp.temp
  COMMAND ${CMAKE_COMMAND} -DSRC=${CMAKE_CURRENT_BINARY_DIR}/qgscontexthelp_texts.cpp.temp -DDST=${CMAKE_CURRENT_BINARY_DIR}/qgscontexthelp_texts.cpp -P ${CMAKE_SOURCE_DIR}/cmake/CopyIfChanged.cmake
  DEPENDS ${CONTEXT_HELP_FILES}
  WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
)

IF(ENABLE_MODELTEST)
  SET(MODELTEST_SRCS
    ../../tests/qt_modeltest/modeltest.cpp
    ../../tests/qt_modeltest/dynamictreemodel.cpp
  )
  SET(MODELTEST_MOC_HDRS
    ../../tests/qt_modeltest/modeltest.h
    ../../tests/qt_modeltest/dynamictreemodel.h
  )
  QT5_WRAP_CPP(MODELTEST_MOC_SRCS ${MODELTEST_MOC_HDRS})
  SET(QGIS_CORE_SRCS ${QGIS_CORE_SRCS}
    ${MODELTEST_SRCS} ${MODELTEST_MOC_SRCS}
  )
ENDIF(ENABLE_MODELTEST)

IF (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  # spatialindex headers produce warnings
  SET_SOURCE_FILES_PROPERTIES(qgsspatialindex.cpp PROPERTIES COMPILE_FLAGS -Wno-overloaded-virtual)
ENDIF (CMAKE_CXX_COMPILER_ID MATCHES "Clang")

IF (WITH_INTERNAL_QEXTSERIALPORT)
  SET(QGIS_CORE_SRCS ${QGIS_CORE_SRCS}
    gps/qextserialport/qextserialport.cpp
    gps/qextserialport/qextserialenumerator.cpp
  )
  IF(WIN32)
    SET(QGIS_CORE_SRCS ${QGIS_CORE_SRCS}
      gps/qextserialport/win_qextserialport.cpp
    )
    ADD_DEFINITIONS(-D_TTY_WIN_)
  ELSE(WIN32)
    SET(QGIS_CORE_SRCS ${QGIS_CORE_SRCS}
      gps/qextserialport/posix_qextserialport.cpp
    )
    ADD_DEFINITIONS(-D_TTY_POSIX_)
  ENDIF(WIN32)
ELSE (WITH_INTERNAL_QEXTSERIALPORT)
  INCLUDE_DIRECTORIES(${QEXTSERIALPORT_INCLUDE_DIR})
ENDIF (WITH_INTERNAL_QEXTSERIALPORT)

IF (QT_MOBILITY_LOCATION_FOUND OR Qt5Positioning_FOUND)
  SET(QGIS_CORE_SRCS ${QGIS_CORE_SRCS}
    gps/qgsqtlocationconnection.cpp
  )
ENDIF (QT_MOBILITY_LOCATION_FOUND OR Qt5Positioning_FOUND)

ADD_FLEX_FILES(QGIS_CORE_SRCS qgsexpressionlexer.ll qgssqlstatementlexer.ll)
ADD_BISON_FILES(QGIS_CORE_SRCS qgsexpressionparser.yy qgssqlstatementparser.yy)

IF(NOT MSVC)
  SET_SOURCE_FILES_PROPERTIES(qgsexpressionparser.cpp qgssqlstatementparser.cpp PROPERTIES COMPILE_FLAGS -w)
ELSE(NOT MSVC)
  # -wd4702 unreachable code
  SET_SOURCE_FILES_PROPERTIES(
    geometry/qgsgeos.cpp
    pal/feature.cpp
    pal/pointset.cpp
    PROPERTIES COMPILE_FLAGS -wd4702)
ENDIF(NOT MSVC)

SET(QGIS_CORE_MOC_HDRS
  qgsapplication.h
  qgsbrowsermodel.h
  qgscontexthelp.h
  qgscoordinatereferencesystem.h
  qgscredentials.h
  qgsdataitem.h
  qgsdataprovider.h
  qgsdbfilterproxymodel.h
  qgsfeature.h
  qgsfeedback.h
  qgsfield.h
  qgsgeometryvalidator.h
  qgsgml.h
  qgsgmlschema.h
  qgsmaplayer.h
  qgsmaplayerlegend.h
  qgsmaplayermodel.h
  qgsmaplayerproxymodel.h
  qgsmaplayerregistry.h
  qgsmaplayerstylemanager.h
  qgsmaprenderercache.h
  qgsmaprenderercustompainterjob.h
  qgsmaprendererjob.h
  qgsmaprendererparalleljob.h
  qgsmaprenderersequentialjob.h
  qgsmessagelog.h
  qgsmessageoutput.h
  qgsnetworkaccessmanager.h
  qgsnetworkdiskcache.h
  qgsnetworkcontentfetcher.h
  qgsnetworkreplyparser.h
  qgsofflineediting.h
  qgsowsconnection.h
  qgspluginlayer.h
  qgspoint.h
  qgspointlocator.h
  qgsproject.h
  qgsrelationmanager.h
  qgsrunprocess.h
  qgssnappingutils.h
  qgstracer.h
  qgstransaction.h
  qgstransactiongroup.h
  qgsunittypes.h
  qgsvectordataprovider.h
  qgsvectorlayercache.h
  qgsvectorlayereditbuffer.h
  qgsvectorlayereditpassthrough.h
  qgsvectorlayer.h
  qgsvectorlayerjoinbuffer.h
  qgsmapthemecollection.h
  qgswebpage.h
  qgswebview.h

  auth/qgsauthmanager.h
  auth/qgsauthmethod.h

  composer/qgsaddremoveitemcommand.h
  composer/qgsatlascomposition.h
  composer/qgscomposerarrow.h
  composer/qgscomposerattributetablemodelv2.h
  composer/qgscomposerattributetablev2.h
  composer/qgscomposereffect.h
  composer/qgscomposerframe.h
  composer/qgscomposerhtml.h
  composer/qgscomposeritemgroup.h
  composer/qgscomposeritem.h
  composer/qgscomposerlabel.h
  composer/qgscomposerlegend.h
  composer/qgscomposermapgrid.h
  composer/qgscomposermap.h
  composer/qgscomposermapitem.h
  composer/qgscomposermapoverview.h
  composer/qgscomposermodel.h
  composer/qgscomposermousehandles.h
  composer/qgscomposermultiframe.h
  composer/qgscomposerobject.h
  composer/qgscomposerpicture.h
  composer/qgscomposerscalebar.h
  composer/qgscomposershape.h
  composer/qgscomposernodesitem.h
  composer/qgscomposerpolygon.h
  composer/qgscomposerpolyline.h
  composer/qgscomposertablecolumn.h
  composer/qgscomposertablev2.h
  composer/qgscomposertexttable.h
  composer/qgscomposition.h
  composer/qgsgroupungroupitemscommand.h
  composer/qgspaperitem.h

  raster/qgsrasterlayer.h
  raster/qgsrasterdataprovider.h

  gps/qgsgpsconnection.h
  gps/qgsgpsdetector.h
  gps/qgsnmeaconnection.h
  gps/qgsgpsdconnection.h

  symbology-ng/qgscptcityarchive.h
  symbology-ng/qgssvgcache.h
  symbology-ng/qgsstyle.h

  layertree/qgslayertreegroup.h
  layertree/qgslayertreelayer.h
  layertree/qgslayertreemodel.h
  layertree/qgslayertreemodellegendnode.h
  layertree/qgslayertreenode.h
  layertree/qgslayertreeregistrybridge.h
)

IF (NOT WITH_QTWEBKIT)
  SET(QGIS_CORE_MOC_HDRS ${QGIS_CORE_MOC_HDRS}
    qgswebframe.h
  )
ENDIF(NOT WITH_QTWEBKIT)

# TODO - update for Qt5
#SET(QGIS_CORE_MOC_HDRS ${QGIS_CORE_MOC_HDRS}
#    qgshttptransaction.h
#)

IF (WITH_INTERNAL_QEXTSERIALPORT)
  SET(QGIS_CORE_MOC_HDRS ${QGIS_CORE_MOC_HDRS}
    gps/qextserialport/qextserialport.h
    gps/qextserialport/qextserialenumerator.h
  )
ENDIF (WITH_INTERNAL_QEXTSERIALPORT)

IF (QT_MOBILITY_LOCATION_FOUND OR Qt5Positioning_FOUND)
  SET(QGIS_CORE_MOC_HDRS ${QGIS_CORE_MOC_HDRS}
    gps/qgsqtlocationconnection.h
  )
ENDIF (QT_MOBILITY_LOCATION_FOUND OR Qt5Positioning_FOUND)

QT5_WRAP_CPP(QGIS_CORE_MOC_SRCS ${QGIS_CORE_MOC_HDRS})

IF(MSVC)
  SET_SOURCE_FILES_PROPERTIES(${QGIS_CORE_MOC_SRCS} PROPERTIES COMPILE_FLAGS "/wd4512 /wd4996" )
ELSE(MSVC)
  SET_SOURCE_FILES_PROPERTIES(${QGIS_CORE_MOC_SRCS} PROPERTIES COMPILE_FLAGS "-Wno-deprecated-declarations" )
  IF ("${CMAKE_CXX_COMPILER_ID}" MATCHES "Clang" AND (CMAKE_BUILD_TYPE MATCHES Release OR CMAKE_BUILD_TYPE MATCHES RelWithDebInfo))
    SET_SOURCE_FILES_PROPERTIES(${CMAKE_CURRENT_BINARY_DIR}/qgsexpression_texts.cpp PROPERTIES COMPILE_FLAGS "-O1")
  ENDIF ()
ENDIF(MSVC)

# install headers
# install qgsconfig.h and plugin.h here so they can get into
# the OS X framework target

SET(QGIS_CORE_HDRS
  ${CMAKE_BINARY_DIR}/qgsconfig.h
  ../plugins/qgisplugin.h

  qgis.h
  qgsaction.h
  qgsactionmanager.h
  qgsaggregatecalculator.h
  qgsannotation.h
  qgsattributetableconfig.h
  qgsattributeeditorelement.h
  qgsbearingutils.h
  qgscachedfeatureiterator.h
  qgscacheindex.h
  qgscacheindexfeatureid.h
  qgsclipper.h
  qgscolorramp.h
  qgscolorscheme.h
  qgscolorschemeregistry.h
  qgsconnectionpool.h
  qgscontexthelp.h
  qgsconditionalstyle.h
  qgscoordinatetransform.h
  qgscoordinateutils.h
  qgscrscache.h
  qgscsexception.h
  qgsdartmeasurement.h
  qgsdatadefined.h
  qgsdataitem.h
  qgsdataitemprovider.h
  qgsdataitemproviderregistry.h
  qgsdatasourceuri.h
  qgsdatetimestatisticalsummary.h
  qgsdatumtransformstore.h
  qgsdbfilterproxymodel.h
  qgsdiagramrenderer.h
  qgsdistancearea.h
  qgseditformconfig.h
  qgseditorwidgetconfig.h
  qgseditorwidgetsetup.h
  qgsfeaturefilterprovider.h
  qgserror.h
  qgsexception.h
  qgsexpression.h
  qgsexpressioncontext.h
  qgsexpressioncontextgenerator.h
  qgsexpressionfieldbuffer.h
  qgsfeatureiterator.h
  qgsfeaturerequest.h
  qgsfeaturestore.h
  qgsfields.h
  qgsfontutils.h
  qgsgeometrycache.h
  qgshistogram.h
  qgsindexedfeature.h
  qgsinterval.h
  qgsjsonutils.h
  qgslayerdefinition.h
  qgslabelfeature.h
  qgslabelingengine.h
  qgslabelsearchtree.h
  qgslegendrenderer.h
  qgslegendsettings.h
  qgslogger.h
  qgsmaphittest.h
  qgsmaplayerdependency.h
  qgsmaplayerrenderer.h
  qgsmaplayerstylemanager.h
  qgsmapsettings.h
  qgsmaptopixel.h
  qgsmaptopixelgeometrysimplifier.h
  qgsmapunitscale.h
  qgsmimedatautils.h
  qgsmultirenderchecker.h
  qgsobjectcustomproperties.h
  qgsogcutils.h
  qgsoptional.h
  qgsoptionalexpression.h
  qgsowsconnection.h
  qgspaintenginehack.h
  qgspainting.h
  qgspallabeling.h
  qgspluginlayerregistry.h
  qgspointlocator.h
  qgsprojectbadlayerhandler.h
  qgsprojectfiletransform.h
  qgsprojectproperty.h
  qgssnappingconfig.h
  qgsprojectversion.h
  qgsprovidermetadata.h
  qgsproviderregistry.h
  qgspythonrunner.h
  qgsrectangle.h
  qgsrelation.h
  qgsrenderchecker.h
  qgsrendercontext.h
  qgsruntimeprofiler.h
  qgsscalecalculator.h
  qgsscaleexpression.h
  qgsscaleutils.h
  qgssimplifymethod.h
  qgssnapper.h
  qgssnappingconfig.h
  qgssnappingutils.h
  qgsspatialindex.h
  qgssqlexpressioncompiler.h
  qgsstatisticalsummary.h
  qgsstringstatisticalsummary.h
  qgsstringutils.h
  qgstestutils.h
  qgstextlabelfeature.h
  qgstextrenderer.h
  qgstextrenderer_p.h
  qgstolerance.h
  qgstracer.h

  qgsvectordataprovider.h
  qgsvectorlayercache.h
  qgsvectorfilewriter.h
  qgsvectorlayerdiagramprovider.h
  qgsvectorlayereditutils.h
  qgsvectorlayerfeatureiterator.h
  qgsvectorlayerimport.h
  qgsvectorlayerlabelprovider.h
  qgsvectorlayerrenderer.h
  qgsvectorlayerundocommand.h
  qgsvectorsimplifymethod.h
  qgsmapthemecollection.h
  qgsxmlutils.h
  qgswebpage.h
  qgswebframe.h
  qgswebview.h
  qgslocalec.h

  auth/qgsauthcertutils.h
  auth/qgsauthconfig.h
  auth/qgsauthcrypto.h
  auth/qgsauthmanager.h
  auth/qgsauthmethod.h
  auth/qgsauthmethodmetadata.h
  auth/qgsauthmethodregistry.h

  diagram/qgsdiagram.h
  diagram/qgspiediagram.h
  diagram/qgstextdiagram.h
  diagram/qgshistogramdiagram.h

  effects/qgsimageoperation.h
  effects/qgspainteffect.h
  effects/qgseffectstack.h
  effects/qgsblureffect.h
  effects/qgsshadoweffect.h
  effects/qgsgloweffect.h
  effects/qgspainteffectregistry.h
  effects/qgstransformeffect.h
  effects/qgscoloreffect.h

  composer/qgsaddremovemultiframecommand.h
  composer/qgscomposerarrow.h
  composer/qgscomposerframe.h
  composer/qgscomposeritemcommand.h
  composer/qgscomposerlegenditem.h
  composer/qgscomposerlegendstyle.h
  composer/qgscomposermultiframecommand.h
  composer/qgscomposertexttable.h
  composer/qgsdoubleboxscalebarstyle.h
  composer/qgsnumericscalebarstyle.h
  composer/qgspaperitem.h
  composer/qgsscalebarstyle.h
  composer/qgssingleboxscalebarstyle.h
  composer/qgsticksscalebarstyle.h

  raster/qgsbilinearrasterresampler.h
  raster/qgsbrightnesscontrastfilter.h
  raster/qgscliptominmaxenhancement.h
  raster/qgscolorrampshader.h
  raster/qgscontrastenhancement.h
  raster/qgscontrastenhancementfunction.h
  raster/qgscubicrasterresampler.h
  raster/qgshuesaturationfilter.h
  raster/qgslinearminmaxenhancement.h
  raster/qgslinearminmaxenhancementwithclip.h
  raster/qgsmultibandcolorrenderer.h
  raster/qgspalettedrasterrenderer.h
  raster/qgsraster.h
  raster/qgsrasterbandstats.h
  raster/qgsrasterblock.h
  raster/qgsrasterchecker.h
  raster/qgsrasterdrawer.h
  raster/qgsrasterfilewriter.h
  raster/qgsrasterhistogram.h
  raster/qgsrasteridentifyresult.h
  raster/qgsrasterinterface.h
  raster/qgsrasteriterator.h
  raster/qgsrasternuller.h
  raster/qgsrasterpipe.h
  raster/qgsrasterprojector.h
  raster/qgsrasterpyramid.h
  raster/qgsrasterrange.h
  raster/qgsrasterrenderer.h
  raster/qgsrasterresamplefilter.h
  raster/qgsrasterresampler.h
  raster/qgsrastershader.h
  raster/qgsrastershaderfunction.h
  raster/qgsrastertransparency.h
  raster/qgsrasterviewport.h
  raster/qgssinglebandcolordatarenderer.h
  raster/qgssinglebandgrayrenderer.h
  raster/qgssinglebandpseudocolorrenderer.h
  raster/qgshillshaderenderer.h

  symbology-ng/qgs25drenderer.h
  symbology-ng/qgscategorizedsymbolrenderer.h
  symbology-ng/qgscolorbrewerpalette.h
  symbology-ng/qgsellipsesymbollayer.h
  symbology-ng/qgsfillsymbollayer.h
  symbology-ng/qgsgraduatedsymbolrenderer.h
  symbology-ng/qgslegendsymbolitem.h
  symbology-ng/qgslinesymbollayer.h
  symbology-ng/qgsmarkersymbollayer.h
  symbology-ng/qgspointclusterrenderer.h
  symbology-ng/qgspointdisplacementrenderer.h
  symbology-ng/qgspointdistancerenderer.h
  symbology-ng/qgsrenderer.h
  symbology-ng/qgsrendererregistry.h
  symbology-ng/qgsrulebasedrenderer.h
  symbology-ng/qgssinglesymbolrenderer.h
  symbology-ng/qgsheatmaprenderer.h
  symbology-ng/qgsinvertedpolygonrenderer.h
  symbology-ng/qgsnullsymbolrenderer.h
  symbology-ng/qgssymbollayer.h
  symbology-ng/qgssymbollayerregistry.h
  symbology-ng/qgssymbollayerutils.h
  symbology-ng/qgssymbologyconversion.h
  symbology-ng/qgssymbol.h
  symbology-ng/qgsvectorfieldsymbollayer.h
  symbology-ng/qgsgeometrygeneratorsymbollayer.h

  layertree/qgslayertree.h
  layertree/qgslayertreeutils.h

  geometry/qgsabstractgeometry.h
  geometry/qgscircularstring.h
  geometry/qgscompoundcurve.h
  geometry/qgscurvepolygon.h
  geometry/qgscurve.h
  geometry/qgsgeometrycollection.h
  geometry/qgsgeometryeditutils.h
  geometry/qgsgeometryengine.h
  geometry/qgsgeometryfactory.h
  geometry/qgsgeometry.h
  geometry/qgsgeometryutils.h
  geometry/qgsgeos.h
  geometry/qgsinternalgeometryengine.h
  geometry/qgslinestring.h
  geometry/qgsmulticurve.h
  geometry/qgsmultilinestring.h
  geometry/qgsmultipoint.h
  geometry/qgsmultipolygon.h
  geometry/qgsmultisurface.h
  geometry/qgspointv2.h
  geometry/qgspolygon.h
  geometry/qgssurface.h
  geometry/qgswkbptr.h
  geometry/qgswkbtypes.h
)

IF (QT_MOBILITY_LOCATION_FOUND OR Qt5Positioning_FOUND)
  SET(QGIS_CORE_HDRS ${QGIS_CORE_HDRS}
    gps/qgsqtlocationconnection.h
    gps/qgsgpsconnectionregistry.h
  )
ENDIF (QT_MOBILITY_LOCATION_FOUND OR Qt5Positioning_FOUND)

INCLUDE_DIRECTORIES(
  ${CMAKE_CURRENT_SOURCE_DIR}
  auth
  composer
  dxf
  effects
  geometry
  layertree
  pal
  raster
  renderer
  symbology-ng
  gps/qextserialport
)
INCLUDE_DIRECTORIES(SYSTEM
  ${SPATIALINDEX_INCLUDE_DIR}
  ${PROJ_INCLUDE_DIR}
  ${GEOS_INCLUDE_DIR}
  ${GDAL_INCLUDE_DIR}
  ${EXPAT_INCLUDE_DIR}
  ${SQLITE3_INCLUDE_DIR}
  ${SPATIALITE_INCLUDE_DIR}
  ${QCA_INCLUDE_DIR}
)

REMOVE_DEFINITIONS("-DCORE_EXPORT=${DLLIMPORT}")
ADD_DEFINITIONS("\"-DCORE_EXPORT=${DLLEXPORT}\"")


#for PAL classes
IF (WIN32)
    ADD_DEFINITIONS("-D_HAVE_WINDOWS_H_")
ELSE (WIN32)
    ADD_DEFINITIONS("-D_HAVE_PTHREAD_")
ENDIF (WIN32)

# Test data dir for QgsRenderChecker
ADD_DEFINITIONS(-DTEST_DATA_DIR="\\"${TEST_DATA_DIR}\\"")

#############################################################
# qgis_core library

ADD_LIBRARY(qgis_core SHARED ${QGIS_CORE_SRCS} ${QGIS_CORE_MOC_SRCS} ${QGIS_CORE_HDRS} ${QGIS_CORE_MOC_HDRS})

IF(ENABLE_MODELTEST)
  TARGET_LINK_LIBRARIES(qgis_core ${QT_QTTEST_LIBRARY})
ENDIF(ENABLE_MODELTEST)

IF(NOT APPLE)
  INSTALL(FILES ${QGIS_CORE_HDRS} ${QGIS_CORE_MOC_HDRS} DESTINATION ${QGIS_INCLUDE_DIR})
ELSE(NOT APPLE)
  SET_TARGET_PROPERTIES(qgis_core PROPERTIES
    CLEAN_DIRECT_OUTPUT 1
    FRAMEWORK 1
    FRAMEWORK_VERSION "${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}"
    MACOSX_FRAMEWORK_INFO_PLIST "${CMAKE_SOURCE_DIR}/mac/framework.info.plist.in"
    MACOSX_FRAMEWORK_SHORT_VERSION_STRING ${COMPLETE_VERSION}
    MACOSX_FRAMEWORK_IDENTIFIER org.qgis.qgis3_core
    BUILD_WITH_INSTALL_RPATH TRUE
    PUBLIC_HEADER "${QGIS_CORE_HDRS};${QGIS_CORE_MOC_HDRS}"
    LINK_FLAGS "${CMAKE_SHARED_LINKER_FLAGS}"
  )
ENDIF(NOT APPLE)

#generate unversioned libs for android
IF (NOT ANDROID)
  SET_TARGET_PROPERTIES(qgis_core PROPERTIES
    VERSION ${COMPLETE_VERSION}
    SOVERSION ${COMPLETE_VERSION}
    )
ENDIF (NOT ANDROID)

# make sure to create qgsversion.h before compiling
ADD_DEPENDENCIES(qgis_core version)

# because of htonl
IF (WIN32)
  FIND_LIBRARY(SETUPAPI_LIBRARY NAMES setupapi PATHS $ENV{LIB})
  TARGET_LINK_LIBRARIES(qgis_core wsock32 ${SETUPAPI_LIBRARY})
ENDIF (WIN32)

IF(APPLE)
  TARGET_LINK_LIBRARIES(qgis_core "-framework CoreFoundation -framework IOKit")
ENDIF(APPLE)

IF (NOT WITH_INTERNAL_QEXTSERIALPORT)
  TARGET_LINK_LIBRARIES(qgis_core ${QEXTSERIALPORT_LIBRARY})
ENDIF (NOT WITH_INTERNAL_QEXTSERIALPORT)

IF (QT_MOBILITY_LOCATION_FOUND)
  TARGET_LINK_LIBRARIES(qgis_core ${QT_MOBILITY_LOCATION_LIBRARY})
ENDIF (QT_MOBILITY_LOCATION_FOUND)

TARGET_LINK_LIBRARIES(qgis_core
  ${QT_QTMAIN_LIBRARY}
  ${QT_QTXML_LIBRARY}
  ${QT_QTCORE_LIBRARY}
  ${QT_QTGUI_LIBRARY}
  ${QT_QTNETWORK_LIBRARY}
  ${QT_QTSVG_LIBRARY}
  ${QT_QTWEBKIT_LIBRARY}
  ${QT_QTSQL_LIBRARY}
  ${QCA_LIBRARY}

  ${PROJ_LIBRARY}
  ${GEOS_LIBRARY}
  ${GDAL_LIBRARY}
  ${SPATIALINDEX_LIBRARY}
  ${EXPAT_LIBRARY}
  ${SQLITE3_LIBRARY}
  ${SPATIALITE_LIBRARY}
)

IF (Qt5Positioning_FOUND)
  TARGET_LINK_LIBRARIES(qgis_core
    Qt5::Positioning
  )
ENDIF (Qt5Positioning_FOUND)

# install

INSTALL(TARGETS qgis_core
  RUNTIME DESTINATION ${QGIS_BIN_DIR}
  LIBRARY DESTINATION ${QGIS_LIB_DIR}
  ARCHIVE DESTINATION ${QGIS_LIB_DIR}
  FRAMEWORK DESTINATION ${QGIS_FW_SUBDIR}
  PUBLIC_HEADER DESTINATION ${QGIS_INCLUDE_DIR})

# Mac dev frameworks

IF (APPLE AND QGIS_MACAPP_INSTALL_DEV)
  INSTALL(TARGETS qgis_core FRAMEWORK DESTINATION ${QGIS_MACAPP_DEV_PREFIX})
  INSTALL(CODE "EXECUTE_PROCESS(COMMAND install_name_tool -id \"${QGIS_MACAPP_DEV_PREFIX}/qgis_core.framework/Versions/${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}/qgis_core\" \"$ENV{DESTDIR}${QGIS_MACAPP_DEV_PREFIX}/qgis_core.framework/qgis_core\")")
ENDIF (APPLE AND QGIS_MACAPP_INSTALL_DEV)
