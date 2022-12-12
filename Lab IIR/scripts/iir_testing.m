% Analog Butterworth
fc = 10000; % frequency in Hertz
N = 4; % Order
fs = 50000; % Sampling frequency
Wn = fc/(2*fs); % Normalised cut-off frequency
[z,p] = butter(N, 2*pi*fc, 'low', 's'); % Returns zeros, poles.

% https://nl.mathworks.com/help/signal/ref/butter.html
[zba,pba,kba] = cheby1(N,3,2*pi*fc,'s');%Z butter analogue, ...
[bba,aba] = zp2tf(zba,pba,kba);
[hba,wba] = freqs(bba,aba,4096);

[zbd,pbd,kbd] = butter(N,Wn); % Digital IIR filter
[bbd,abd] = zp2tf(zbd,pbd,kbd);
[hbd,wbd] = freqs(bbd,abd,4096);

plot(wba/(1*pi*fc),mag2db(abs(hba)))
hold on
plot(wbd/(1*pi*fc),mag2db(abs(hbd)))
axis([0 20 -100 5])
xlabel('Frequency (Hz)')
ylabel('Attenuation (dB)')
legend('Butter analogue', 'Butter digital')