/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsoptionswidgetfactory.h                                    *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/



class QgsOptionsPageWidget : QWidget
{
%Docstring
 Base class for widgets for pages included in the options dialog.
.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsoptionswidgetfactory.h"
%End
  public:

    QgsOptionsPageWidget( QWidget *parent /TransferThis/ = 0 );
%Docstring
 Constructor for QgsOptionsPageWidget.
%End

  public slots:

    virtual void apply() = 0;
%Docstring
 Called to permanently apply the settings shown in the options page (e.g. save them to
 QgsSettings objects). This is usually called when the options dialog is accepted.
%End

};

class QgsOptionsWidgetFactory : QObject
{
%Docstring
QGIS crashing when a plugin crashes/exits without deregistering a factory
%End

%TypeHeaderCode
#include "qgsoptionswidgetfactory.h"
%End
  public:

    QgsOptionsWidgetFactory();
%Docstring
Constructor
%End

    QgsOptionsWidgetFactory( const QString &title, const QIcon &icon );
%Docstring
Constructor
%End

    virtual QIcon icon() const;
%Docstring
 The icon that will be shown in the UI for the panel.
 :return: A QIcon for the panel icon.
 \see setIcon()
 :rtype: QIcon
%End

    void setIcon( const QIcon &icon );
%Docstring
 Set the icon to show in the interface for the factory object.
 \see icon()
%End

    virtual QString title() const;
%Docstring
 The title of the panel.
 \see setTitle()
 :rtype: str
%End

    void setTitle( const QString &title );
%Docstring
 Set the title for the interface.
 \see title()
%End

    virtual QgsOptionsPageWidget *createWidget( QWidget *parent = 0 ) const = 0 /Factory/;
%Docstring
 Factory function to create the widget on demand as needed by the options dialog.
 \param parent The parent of the widget.
 :return: A new widget to show as a page in the options dialog.
 :rtype: QgsOptionsPageWidget
%End

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsoptionswidgetfactory.h                                    *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
