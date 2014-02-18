[y, Fs] =wavread('chord.wav');
z = fft(y);
N=numel(y); % antall elementer i y.
dF=Fs/N;
freq=dF*(0:N-1);
plot(freq, abs(z)); % plotter |z| mot frekvensene de representerer.

znew=zeros(N,1);
%znew(1:ceil(N/2)) = z(1:ceil(N/2)); %Kopierer første halvdel av z. Erstattes med annen kode i oppgavene

frekvens = 800
cutoff = floor(frekvens / dF)

znew(1:cutoff) = z(1:cutoff); %Kopierer første halvdel av z. Erstattes med annen kode i oppgavene
znew(N:-1:floor(N/2)+2) = conj(znew(2:ceil(N/2))); % sikrer at znew er symmetrisk.
plot(freq, abs(znew));

ynew = ifft(znew);

sound(ynew, Fs)