HADashboard energymeter widget
==============================

This is a widget based on HAsensor for `HADashboard <https://github.com/home-assistant/hadashboard>`__ for show differents background colours based on sensor value.

|widget1|

## How to use

-  Add haenergymeter dir to hadashboard widget directory
-  Edit hapush.py and add the widget in views inside translate_view: 

.. code:: python

    def translate_view(view):
      views = {
            "Hadevicetracker": "device_tracker",
            "Hagarage": "garage_door",
            "Hacover": "cover",
            "Halock": "lock",
            "Haalarmstatus": "alarm_control_panel",
            "Hainputboolean": "input_boolean",
            "Halux": "sensor",
            "Hascene": "scene",
            "Haswitch": "switch",
            "Hagroup": "group",
            "Hadimmer": "light",
            "Hahumidity": "sensor",
            "Hainputselect": "input_select",
            "Hamotion": "binary_sensor",
            "Habinary": "binary_sensor",
            "Hamode": "script",
            "Hatemp": "sensor",
            "Hasensor": "sensor",
            "Hameter": "sensor",
            "Haenergymeter" : "sensor"
          }

-  Use in your dashboard 

.. code:: html

    <li data-row="1" data-col="7" data-sizex="2" data-sizey="1">
      <div data-id="energy_usage" data-view="Haenergymeter" data-title="Consumo Total" data-unit="kWh" data-interval1="1" data-interval2="2" data-interval3="3"></div>
    </li>

.. |widget1| image:: https://raw.github.com/gonzalezcalleja/haenergymeter/master/doc/img/img1.png
.. |widget2| image:: https://raw.github.com/gonzalezcalleja/haenergymeter/master/doc/img/img2.png
.. |widget3| image:: https://raw.github.com/gonzalezcalleja/haenergymeter/master/doc/img/img4.png
.. |widget4| image:: https://raw.github.com/gonzalezcalleja/haenergymeter/master/doc/img/img5.png