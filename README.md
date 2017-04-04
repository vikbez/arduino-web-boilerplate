# Arduino web interface boilerplate

This boilerplate lets you speak to an usb-connected arduino from your web browser.  
This can be used to have a nice webapp that can handle arduino inputs/outputs.

I made this because existing examples were not simple, not auto-reloading, and not error-proof.

This boilerplate implements auto reconnection on both sides (server / client).


## installation

### server install
!!! This requires at least Python 3.5+ (see [pymata_aio page](https://github.com/MrYsLab/pymata-aio))

```bash
pip install pymata-aio
```

### arduino install

Open Arduino IDE and select File/Examples/Firmata/StandardFirmata. Connect your Arduino board to your computer, select the correct board type and port, and finally click the Upload button on the IDE.

## usage

```bash
./run.sh
```

A web server is ran on http://localhost:3000.  
You will be able to toggle the onboard arduino led from this page.

Interesting files are `run.sh` and `index.html`.  
The `pymata_iot.py` is just here for convenience, it's simply copied from [pymata_aio's repo](https://github.com/MrYsLab/pymata-aio).

Ctrl-C in terminal to shutoff everything.  
You can F5 the page in your browser, it will auto-reconnect.

## Stuff used to make this:

 * [Firmata for Arduino](https://github.com/firmata/arduino) is an Arduino firmware that implements Firmata protocol
 * [pymata_aio](https://github.com/MrYsLab/pymata-aio) is a Python asyncio client for the Firmata Protocol that supports websockets
