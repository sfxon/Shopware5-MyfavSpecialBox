<?php

namespace MyfavSpecialBox\Bootstrap;

use Shopware\Components\Emotion\ComponentInstaller;

class EmotionElementInstaller
{
    /**
     * @var ComponentInstaller
     */
    private $emotionComponentInstaller;

    /**
     * @var string
     */
    private $pluginName;

    /**
     * @param string $pluginName
     * @param ComponentInstaller $emotionComponentInstaller
     */
    public function __construct($pluginName, ComponentInstaller $emotionComponentInstaller)
    {
        $this->emotionComponentInstaller = $emotionComponentInstaller;
        $this->pluginName = $pluginName;
    }

    public function install()
    {
        $boxElement = $this->emotionComponentInstaller->createOrUpdate(
            $this->pluginName,
            'MyfavSpecialBox',
            [
                'name' => 'Special-Box',
                'xtype' => 'emotion-components-myfavspecialbox',
                'template' => 'myfavspecialbox',
                'cls' => 'emotion-myfavspecialbox-element',
                'description' => 'Mindfavs Special-Box für Einkaufswelten.'
            ]
        );

        $boxElement = $this->createMainFields($boxElement);
    }

    /**
    * Haupt-Felder erstellen.
    */
    private function createMainFields($boxElement) {
        $allowBlank = true;
        $imageCount = 6;

        $boxElement->createTextField([
            'name' => 'title_box',
            'fieldLabel' => 'Boxen-Titel ',
            'supportText' => 'Titeltext der Box',
            'allowBlank' => $allowBlank
        ]);

        for($i = 0; $i < $imageCount; $i++) {
            $this->createSubFields($boxElement, $i);
        }

        return $boxElement;
    }

    private function createSubFields($boxElement, $id) {
        $allowBlank = true;

        $boxElement->createMediaField([
            'name' => 'image_' . $id,
            'fieldLabel' => 'Bild ' . $id,
            'supportText' => 'Bild',
            'allowBlank' => $allowBlank
        ]);

        $boxElement->createTextField([
            'name' => 'image_text' . $id,
            'fieldLabel' => 'Text '  . $id,
            'supportText' => 'Text in der Box',
            'allowBlank' => $allowBlank
        ]);
                
        $boxElement->createTextField([
            'name' => 'dst_url' . $id,
            'fieldLabel' => 'Ziel-URL ' . $id,
            'supportText' => 'URL, die aufgerufen werden soll, wenn der Kunde den Titeltext anklickt.',
            'allowBlank' => $allowBlank
        ]);
                
        $boxElement->createTextField([
            'name' => 'text_color' . $id,
            'fieldLabel' => 'Text-Farbe ' . $id,
            'supportText' => 'Text Farbe der Box',
            'allowBlank' => $allowBlank
        ]);
                
        $boxElement->createTextField([
            'name' => 'text_background_color' . $id,
            'fieldLabel' => 'Text-Hintergrund-Farbe ' . $id,
            'supportText' => 'Hintergrund Farbe des Textes in der Box.',
            'allowBlank' => $allowBlank
        ]);
    }
}