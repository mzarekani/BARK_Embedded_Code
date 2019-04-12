# BARK_Embedded_Code
The advance in ease of manufacturing and affordability of smart devices has created a large demand for their presence within homes. From smart refrigerators to baby monitors, every facet of home living can be evolved to wireless touch screen control. However, more elaborate home technologies come at a larger cost and greater appeal, which makes smart homes a more susceptible target to burglary. This poses the question: Why not use a well equipped smart device to not only protect these valuables in your home, but also provide piece of mind for the safety of your family? The B.A.R.K (Bluetooth Anti Robber Kit) home security system provides an easy to use interface to monitor the presence of intruders in your home, as well as immediately alert you of any suspicious behavior. This Bluetooth Smart equipped system keeps you up to date with your home's security via the B.A.R.K Android app and accompanying B.A.R.K. website in real time, whether you are at home or across the globe.

B.A.R.K makes use of many technologies to provide home security. The system is controlled via the Silicon Labs Blue Gecko, which will provide low power operation. The Blue Gecko interfaces with 2 infrared proximity sensors to detect movement in a particular area. These sensors will be interfaced using the Blue Gecko's on-board ADC, as the sensors are an analog output. The system also incorporates a security light that will be mounted to a PWM controlled servo to shine the light of justice down on any perpetrators in the home. Finally, the system's on-board LCD display will allow for quick checks on system status and recorded incidents.


In order to communicate the state of the security system to the homeowner, one available interface will be the B.A.R.K Android application. This interface will be most valuable to the user if they are currently in the home. The application will connect to the device via Bluetooth Low Energy and give the user many options and feedback. One of the most important features will be immediate alerts to the phone if an intruder is detected. This will be seen by the phone through the system's "Security" Bluetooth service. There will also be Bluetooth services providing operational state information regarding the system's status. The system will also be able to be controlled through the app. Such functionality will include toggling system power and controlling the position of the light.


A second interface that will be provided is the B.A.R.K website, which is useful for when the user is not home and able to connect to the system using the app. The website will be hosted by the Intel Edison, which is a powerful embedded Linux device that provides Bluetooth Smart functionality. In this scenario, the Edison will act as the BLE client, gathering data from the system. This data will then be updated on the website in real time to show the status of the device and logs on activity. The user will also be able to send commands to the device to control similar functions as the Android app.
