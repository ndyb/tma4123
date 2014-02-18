function [ynew, Fs] = highpass(file, cutoff)
    [y, Fs] = audioread(file);
    z = fft(y);
    N=numel(y);
    dF=Fs/N;
    
    znew=zeros(N,1);

    nc = floor(cutoff / dF);

    znew(nc:floor(N/2)) = z(nc:floor(N/2));
    znew(N:-1:floor(N/2)+2) = conj(znew(2:ceil(N/2)));
    
    ynew = ifft(znew);

end