/** \ingroup core
 * Class used to render an Atlas, iterating over geometry features.
 * prepareForFeature() modifies the atlas map's extent to zoom on the given feature.
 * This class is used for printing, exporting to PDF and images.
 * @note This class should not be created directly. For the atlas to function correctly
 * the atlasComposition() property for QgsComposition should be used to retrieve a
 * QgsAtlasComposition which is automatically created and attached to the composition.
 */
class QgsAtlasComposition : QObject
{
%TypeHeaderCode
#include <qgsatlascomposition.h>
%End

public:
    QgsAtlasComposition( QgsComposition* composition );
    ~QgsAtlasComposition();

    /** Returns whether the atlas generation is enabled
     * @returns true if atlas is enabled
     * @see setEnabled
     */
    bool enabled() const;

    /** Sets whether the atlas is enabled
     * @param enabled set to true to enable to atlas
     * @see enabled
     */
    void setEnabled( bool enabled );

    /** Returns true if the atlas is set to hide the coverage layer
     * @returns true if coverage layer is hidden
     * @see setHideCoverage
     */
    bool hideCoverage() const;

    /** Sets whether the coverage layer should be hidden in map items in the composition
     * @param hide set to true to hide the coverage layer
     * @see hideCoverage
     */
    void setHideCoverage( bool hide );

    /** Returns the filename expression used for generating output filenames for each
     * atlas page.
     * @returns filename pattern
     * @see setFilenamePattern
     * @see filenamePatternErrorString
     * @note This property has no effect when exporting to PDF if singleFile() is true
     */
    QString filenamePattern() const;

    /** Sets the filename expression used for generating output filenames for each
     * atlas page.
     * @returns true if filename expression could be successful set, false if expression is invalid
     * @param pattern expression to use for output filenames
     * @see filenamePattern
     * @see filenamePatternErrorString
     * @note This method has no effect when exporting to PDF if singleFile() is true
     */
    bool setFilenamePattern( const QString& pattern );

    /** Returns an error string from parsing the filename expression.
     * @returns filename pattern parser error
     * @see setFilenamePattern
     * @see filenamePattern
     */
    QString filenamePatternErrorString() const;

    /** Returns the coverage layer used for the atlas features
     * @returns atlas coverage layer
     * @see setCoverageLayer
     */
    QgsVectorLayer* coverageLayer() const;

    /** Sets the coverage layer to use for the atlas features
     * @param layer vector coverage layer
     * @see coverageLayer
     */
    void setCoverageLayer( QgsVectorLayer* layer );

    /** Returns the expression used for calculating the page name.
     * @returns expression string, or field name from coverage layer
     * @see setPageNameExpression
     * @see nameForPage
     * @note added in QGIS 2.12
     */
    QString pageNameExpression() const;

    /** Sets the expression used for calculating the page name.
     * @param pageNameExpression expression string, or field name from coverage layer
     * @see pageNameExpression
     * @note added in QGIS 2.12
     */
    void setPageNameExpression( const QString& pageNameExpression );

    /** Returns the calculated name for a specified atlas page number.
     * @param pageNumber number of page, where 0 = first page
     * @returns page name
     * @see pageNameExpression
     * @note added in QGIS 2.12
     */
    QString nameForPage( int pageNumber ) const;

    /** Returns whether the atlas will be exported to a single file. This is only
     * applicable for PDF exports.
     * @returns true if atlas will be exported to a single file
     * @see setSingleFile
     * @note This property is only used for PDF exports.
     */
    bool singleFile() const;

    /** Sets whether the atlas should be exported to a single file. This is only
     * applicable for PDF exports.
     * @param single set to true to export atlas to a single file.
     * @see singleFile
     * @note This method is only used for PDF exports.
     */
    void setSingleFile( bool single );

    bool sortFeatures() const;
    void setSortFeatures( bool doSort );

    bool sortAscending() const;
    void setSortAscending( bool ascending );

    bool filterFeatures() const;
    void setFilterFeatures( bool doFilter );

    QString featureFilter() const;
    void setFeatureFilter( const QString& expression );

    /** Returns an error string from parsing the feature filter expression.
     * @returns filename pattern parser error
     * @see setFilenamePattern
     * @see filenamePattern
     */
    QString featureFilterErrorString() const;

    QString sortKeyAttributeName() const;
    void setSortKeyAttributeName( const QString& fieldName );

    /** Returns the current list of predefined scales for the atlas. This is used
     * for maps which are set to the predefined atlas scaling mode.
     * @returns a vector of doubles representing predefined scales
     * @see setPredefinedScales
     * @see QgsComposerMap::atlasScalingMode
     */
    const QVector<qreal>& predefinedScales() const;

    /** Sets the list of predefined scales for the atlas. This is used
     * for maps which are set to the predefined atlas scaling mode.
     * @param scales a vector of doubles representing predefined scales
     * @see predefinedScales
     * @see QgsComposerMap::atlasScalingMode
     */
    void setPredefinedScales( const QVector<qreal>& scales );

    /** Begins the rendering. Returns true if successful, false if no matching atlas
      features found.*/
    bool beginRender();
    /** Ends the rendering. Restores original extent */
    void endRender();

    /** Returns the number of features in the coverage layer */
    int numFeatures() const;

    /** Prepare the atlas map for the given feature. Sets the extent and context variables
     * @param i feature number
     * @param updateMaps set to true to redraw maps and recalculate their extent
     * @returns true if feature was successfully prepared
     */
    bool prepareForFeature( const int i, const bool updateMaps = true );

    /** Prepare the atlas map for the given feature. Sets the extent and context variables
     * @returns true if feature was successfully prepared
     */
    bool prepareForFeature( const QgsFeature * feat );

    /** Returns the current filename. Must be called after prepareForFeature() */
    QString currentFilename() const;

    void writeXml( QDomElement& elem, QDomDocument& doc ) const;

    /** Reads general atlas settings from xml
     * @param elem a QDomElement holding the atlas properties.
     * @param doc QDomDocument for the source xml.
     * @see readXMLMapSettings
     * @note This method should be called before restoring composer item properties
     */
    void readXml( const QDomElement& elem, const QDomDocument& doc );

    /** Reads old (pre 2.2) map related atlas settings from xml
     * @param elem a QDomElement holding the atlas map properties.
     * @param doc QDomDocument for the source xml.
     * @see readXMLMapSettings
     * @note This method should be called after restoring composer item properties
     * @note added in version 2.5
     */
    void readXmlMapSettings( const QDomElement& elem, const QDomDocument& doc );

    QgsComposition* composition();

    /** Requeries the current atlas coverage layer and applies filtering and sorting. Returns
     * number of matching features. Must be called after prepareForFeature()
     */
    int updateFeatures();

    /** Returns the current atlas feature. Must be called after prepareForFeature().
     * @note added in QGIS 2.12
     */
    QgsFeature feature() const;

    /** Returns the name of the page for the current atlas feature. Must be called after prepareForFeature().
     * @note added in QGIS 2.12
     */
    QString currentPageName() const;

    /** Returns the current feature number, where a value of 0 corresponds to the first feature.
     * @note added in QGIS 2.12
     */
    int currentFeatureNumber() const;

    /** Recalculates the bounds of an atlas driven map */
    void prepareMap( QgsComposerMap* map );

    /** Returns the current atlas geometry in the given projection system (default to the coverage layer's CRS) */
    QgsGeometry currentGeometry( const QgsCoordinateReferenceSystem& projectedTo = QgsCoordinateReferenceSystem() ) const;

  public slots:

    /** Refreshes the current atlas feature, by refetching its attributes from the vector layer provider
     * @note added in QGIS 2.5
     */
    void refreshFeature();

    void nextFeature();
    void prevFeature();
    void lastFeature();
    void firstFeature();

  signals:
    /** Emitted when one of the parameters changes */
    void parameterChanged();

    /** Emitted when atlas is enabled or disabled */
    void toggled( bool );

    /** Is emitted when the atlas has an updated status bar message for the composer window*/
    void statusMsgChanged( const QString& message );

    /** Is emitted when the coverage layer for an atlas changes*/
    void coverageLayerChanged( QgsVectorLayer* layer );

    /** Is emitted when atlas rendering has begun*/
    void renderBegun();

    /** Is emitted when atlas rendering has ended*/
    void renderEnded();

    /** Is emitted when the current atlas feature changes*/
    void featureChanged( QgsFeature* feature );

    /** Is emitted when the number of features for the atlas changes.
     * @note added in QGIS 2.12
     */
    void numberFeaturesChanged( int numFeatures );
};
