package CommunicateActions {

    action def Communicate{
        doc /* Communicate with ground to send and recieve data packages */

        action uplink : Uplink;
        action downlink : Downlink;
        action maintain_connection : MaintainConnection;
    }

    action def Uplink {
        doc /* Transferr information from ground to satelite */
        action recive_data : ReciveData;
        action interperite_data : InterperiteData;
        action route_data_to_handler : RouteDataToHandler;
    }

    action def Downlink {
        doc /* Transferr information from satelite to ground */
        action aggrigate_data : AggrigateData;
        action transmit_data : TransmitData;
    }

    action def MaintainConnection {}

    action def ReciveData {
        doc /* Recive RF signals from ground to satelite and convert to data */
        action detect_rf_signals : DetectRFSignals;
        action amplify_signal : AmplifySignalRX;
        action filter_data_from_noise : FilterSignal;
        action demodulate_data : DemodulateData;
        action decode_data : DecodeData;
    }

    action def InterperiteData {}
    action def RouteDataToHandler {}
    action def AggrigateData {}

    action def DetectRFSignals {}
    action def AmplifySignalRX {}
    action def FilterSignal {}
    action def DemodulateData {}
    action def DecodeData {}

    action def TransmitData {
        doc /* Convert from data and send RF signals from satelite to ground */
        action encode_data : EncodeData;
        action modulate_data : ModulateData;
        action amplify_signal : AmplifySignalTX;
        action radiate_rf_signals : RadiateRFSignals;
    }

    action def EncodeData {}
    action def ModulateData {}
    action def AmplifySignalTX {}
    action def RadiateRFSignals {}
}