function [add_record]=Spectrum_derivative(sound,fs)

% [add_record]=Spectrum_derivative(sound,fs)
%	 uses the derivative estimates to calculate the spectrum's frequency
%	 and time derivatives
% 
%        S: estimated spectrum; S_f: estimated frequency derivative; 
%        S_t: estimated time derivative
%        NW: time bandwidth parameter (e.g. 3)
%        K : number of tapers kept, approx. 2*NW-1
%        pad: length to which data will be padded (preferably power of 2
%        window: time window size
%        winstep: distance between centers of adjacent time windows
%        position_index: position on the screen gets values 1-3
%        cutoff - trunct image
%        full_view 1 for no axis 2 for smaller image with axis
%        
%        Written by Sigal Saar August 08 2005

permenent position_index

if nargin<1
    error('No sound file');
end


if nargin<2
    fs=44100;
end

position_index

[m_spec_deriv , m_AM, m_FM ,m_Entropy , m_amplitude , m_Freq, m_PitchGoodness , m_Pitch]=deriv(sound,fs);

trunk(m_spec_deriv,  position_index , 2 ,[]  , m_AM, m_FM ,m_Entropy , m_amplitude ,m_Freq, m_PitchGoodness , m_Pitch , fs);

    