# MIMO_OFDM_Wireless_Comms

MIMO_OFDM_Wireless_Comms
This Library is for modulating, analyzing and simulating wireless communication systems. It is for the wireless communication systems course. It is coded in MATLAB. Includes:

•	MIMO_channel_coefficient: generates a correlated MIMO fading channel

•	OFDM: simulates the effect of ISI (ZP: zirro padding, CP: cyclic prefix) on channel BER performance of OFDM system with N=64 FFT and 16 carriers for 16-QAM in AWGN channel and multipath Rayleigh fading.

•	channel estimation_MMSE: uses MMSE (Minimum mean square error) estimation method for channel estimation (h is the channel impulse response input)

•	channel estimation_DFT: use DFT technique shown in the figure for channel estimation. (interp1 is the built in MATLAB function for linear or cubic spline interpolation depending on the input indicating "linear" or "spline" (the method, 4th input argument)



