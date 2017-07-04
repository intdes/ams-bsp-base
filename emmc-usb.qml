import SAMBA 3.2
import SAMBA.Connection.Serial 3.2
import SAMBA.Device.SAMA5D4 3.2

SerialConnection {
	//port: "ttyACM0"
	//port: "COM85"
	//baudRate: 57600

	device: SAMA5D4Xplained {
	}

	onConnectionOpened: {
		// initialize SD/MMC applet
		initializeApplet("sdmmc")

		// write file
		applet.write(0, "atmel-xplained-ams-image-sama5d4-xplained-sd-ams.wic", false)
	}
}
