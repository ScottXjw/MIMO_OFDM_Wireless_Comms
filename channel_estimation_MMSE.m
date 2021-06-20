function H_MMSE = MMSE_CE(Y,Xp,pilot_loc,Nfft,Nps,h,SNR)

% Inputs:
%       Y         = Frequency-domain received signal
%       Xp        = Pilot signal
%       pilot_loc = Pilot location
%       Nfft      = FFT size
%       Nps       = Pilot spacing
%       h         = Channel impulse response
%       ts        = Sampling time
%       SNR       = Signal-to-Noise Ratio[dB]
% output:
%      H_MMSE     = MMSE channel estimate


%H = fft(h,N);
snr = 10^(SNR*0.1);
Np=Nfft/Nps; % ��Ƶ����
k=1:Np; 
H_tilde = Y(1,pilot_loc(k))./Xp(k);  % LS estimate
k=0:length(h)-1; %k_ts = k*ts; 
hh = h*h'; 
tmp = h.*conj(h).*k; %tmp = h.*conj(h).*k_ts;
r = sum(tmp)/hh;    r2 = tmp*k.'/hh; %r2 = tmp*k_ts.'/hh;
tau_rms = sqrt(r2-r^2);     % rms delay
df = 1/Nfft;  %1/(ts*Nfft);
j2pi_tau_df = j*2*pi*tau_rms*df;
K1 = repmat([0:Nfft-1].',1,Np); % K1�Ĵ�СΪNfft*Np��ÿһ�о�Ϊ0:Nfft-1
K2 = repmat([0:Np-1],Nfft,1); % K2�Ĵ�СΪNfft*Np��ÿһ�о�Ϊ0:Np-1
rf = 1./(1+j2pi_tau_df*(K1-K2*Nps)); % ʽ6.16
K3 = repmat([0:Np-1].',1,Np); % K3�Ĵ�СΪNp*Np��ÿһ�о�Ϊ0:Np-1
K4 = repmat([0:Np-1],Np,1); % K4�Ĵ�СΪNp*Np��ÿһ�о�Ϊ0:Np-1
rf2 = 1./(1+j2pi_tau_df*Nps*(K3-K4)); % ʽ6.17
Rhp = rf;
Rpp = rf2 + eye(length(H_tilde),length(H_tilde))/snr;
H_MMSE = transpose(Rhp*inv(Rpp)*H_tilde.');  % MMSE channel estimate|MMSE�ŵ����ƣ�ʽ6.14
