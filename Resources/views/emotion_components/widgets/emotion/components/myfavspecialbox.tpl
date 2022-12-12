{block name="widgets_emotion_components_myfavspecialbox_element"}
    <div class="myfav-special-box-container">
        <div class="myfavspecialbox" id="mv-emotion-obj-{$Data.objectId}">
            <div class="myfav-special-box-left">
                <div class="myfav-specialbox-left-big">
                    <a href="{$Data.dst_url0}">
                        <img src="{$Data.image_0}" alt="{$Data.image_text0}" />
                        <span class="box-text-0">{$Data.image_text0}</span>
                    </a>
                </div>
                <div class="myfav-special-box-left-small-container">
                    <div class="myfav-special-box-left-small-left">
                        <a href="{$Data.dst_url1}">
                            <img src="{$Data.image_1}" alt="{$Data.image_text1}" />
                            <span class="box-text-1">{$Data.image_text1}</span>
                        </a>
                    </div>
                    <div class="myfav-special-box-left-small-right">
                        <a href="{$Data.dst_url2}">
                            <img src="{$Data.image_2}" alt="{$Data.image_text2}" />
                            <span class="box-text-2">{$Data.image_text2}</span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="myfav-special-box-right">
                <div class="myfav-special-box-right-small-container">
                    <div class="myfav-special-box-right-small-left">
                        <a href="{$Data.dst_url3}">
                            <img src="{$Data.image_3}" alt="{$Data.image_text3}" />
                            <span class="box-text-3">{$Data.image_text3}</span>
                        </a>
                    </div>
                    <div class="myfav-special-box-right-small-right">
                        <a href="{$Data.dst_url4}">
                            <img src="{$Data.image_4}" alt="{$Data.image_text4}" />
                            <span class="box-text-4">{$Data.image_text4}</span>
                        </a>
                    </div>
                </div>
                <div class="myfav-specialbox-right-big">
                    <a href="{$Data.dst_url5}">
                        <img src="{$Data.image_5}" alt="{$Data.image_text5}" />
                        <span class="box-text-5">{$Data.image_text5}</span>
                    </a>
                </div>
            </div>
        </div>
    <style>
        #mv-emotion-obj-{$Data.objectId} .box-text-0 {literal}{{/literal}
                color: {$Data.text_color0};
                background-color: {$Data.text_background_color0};
        {literal}}{/literal}

        #mv-emotion-obj-{$Data.objectId} .box-text-1 {literal}{{/literal}
                color: {$Data.text_color1};
                background-color: {$Data.text_background_color1};
        {literal}}{/literal}

        #mv-emotion-obj-{$Data.objectId} .box-text-2 {literal}{{/literal}
                color: {$Data.text_color2};
                background-color: {$Data.text_background_color2};
        {literal}}{/literal}

        #mv-emotion-obj-{$Data.objectId} .box-text-3 {literal}{{/literal}
                color: {$Data.text_color3};
                background-color: {$Data.text_background_color3};
        {literal}}{/literal}

        #mv-emotion-obj-{$Data.objectId} .box-text-4 {literal}{{/literal}
                color: {$Data.text_color4};
                background-color: {$Data.text_background_color4};
        {literal}}{/literal}

        #mv-emotion-obj-{$Data.objectId} .box-text-5 {literal}{{/literal}
                color: {$Data.text_color5};
                background-color: {$Data.text_background_color5};
        {literal}}{/literal}
    </style>
{/block}