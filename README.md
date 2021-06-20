# MIMO_OFDM_Wireless_Comms

MIMO_OFDM_Wireless_Comms
This Library is for modulating, analyzing and simulating wireless communication systems. It is for the wireless communication systems course. It is coded in MATLAB. Includes:

•	MIMO_channel_coefficient: generates a correlated MIMO fading channel

•	OFDM: simulates the effect of ISI (ZP: zirro padding, CP: cyclic prefix) on channel BER performance of OFDM system with N=64 FFT and 16 carriers for 16-QAM in AWGN channel and multipath Rayleigh fading.

•	channel_estimation_MMSE: uses MMSE (Minimum mean square error) estimation method for channel estimation (h is the channel impulse response input)

•	channel_estimation_DFT: use DFT technique shown in the figure for channel estimation. (interp1 is the built in MATLAB function for linear or cubic spline interpolation depending on the input indicating "linear" or "spline" (the method, 4th input argument)


![Screen Shot 2021-06-19 at 10 42 11 PM](https://user-images.githubusercontent.com/46723995/122661201-a4aa9480-d155-11eb-94a6-15651eb9ed31.png)

(Figure, MIMO-OFDM Wireless Communications with MATLAB¢Á   Yong Soo Cho, Jaekwon Kim, Won Young Yang and Chung G. Kang
2010 John Wiley & Sons (Asia) Pte Ltd )

