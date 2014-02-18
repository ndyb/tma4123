function [ynew, Fs] = lowpass(file, cutoff)
    [y, Fs] = audioread(file);
    z = fft(y);
    N=numel(y);
    dF=Fs/N;
    
    znew=zeros(N,1);

    nc = floor(cutoff / dF);

    znew(1:nc) = z(1:nc);
    znew(N:-1:floor(N/2)+2) = conj(znew(2:ceil(N/2)));
    
    ynew = ifft(znew);

end