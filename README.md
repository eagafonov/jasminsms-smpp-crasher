# Sample SMPP server to Crash JasminSMS

This demo server emulates (buggy???) SMSC/SMPP server which replies with submitsm_resp containing custom Command Status

Server listens SMPP at 0.0.0.0:8007. It accepts any SystemID and passwords.

# Rationale

Some SMSS returns uses reserved values of Command Code to specify some special conditions while processing
SubmitSM PDU (like blocked sender address, for example)

JasminSMS does not handle gracefully if SMPP server returns unsupported Command Code in submitsm_resp


## Run server


    #> git clone  --recursive https://github.com/eagafonov/jasminsms-smpp-crasher
    #> cd jasminsms-smpp-crasher
    #> make install-requirements
    #> make run-jasmin-crasher

## Autopsy

The main python file (jasminsms_crasher.py) is a slighlty modified version of smpp.twisted's test server (https://github.com/mozes/smpp.twisted/blob/master/smpp/twisted/tests/smsc_simulator.py)
    

# Credits

Thanks to authors and contributors of:

- smpp.pdu
- smpp.twisted
- twisted
- python
