package CommunicateActions {

    action def Communicate{
        doc /* Communicate with ground to send and recieve data packages */

        action uplink : Uplink;
        action downlink : Downlink;
        action maintain_connection;
    }

    action def Uplink {
        doc /* Transferr information from ground to satelite */
        action recive_data : ReciveData;
        action interperite_data;
        action route_data_to_handler;
    }

    action def Downlink {
        doc /* Transferr information from satelite to ground */
        action aggrigate_data;
        action transmit_data : TransmitData;
    }

    action def ReciveData {
        doc /* Recive RF signals from ground to satelite and convert to data */
        action detect_rf_signals;
        action amplify_signal;
        action distinguish_data_from_noise;
        action demodulate_data;
        action decode_data;
    }

    action def TransmitData {
        doc /* Convert from data and send RF signals from satelite to ground */
        action encode_data;
        action modulate_data;
        action amplify_signal;
        action radiate_rf_signals;
    }
}