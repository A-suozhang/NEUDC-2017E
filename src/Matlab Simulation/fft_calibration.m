fs = 312500;     % Sample Rate - 300k
N = 128;          % How Many Points To Calc
N_fft = 128 ;
f0 = 51000;          % The Wave Frequency
f1 = 51900;
% ����ֵ��Ƶ������ƫ��,���ǲ�಻��,��С�����3λ����ʹ��

xs = 0:1/fs:N*(1/fs);  
Amps = [];

% ---------------  ��ȫ����   (Amp)----------------------
% for Amp = 0:0.1:2
%       ys = Amp*sin(2*pi*f0*xs);
%       Amp_fft = sqrt(sum(abs(fft(ys, N_fft)).^2))
%       Amps = [Amps, Amp_fft];
%       
%       if (Amp == 1)
%           Uni_Amp_fft = Amp_fft;
%       end
% end

% --------- ���ֶ��� (Amp)-----------
% �����Ȼ���Linear, ����Ƶ��Vary�ϴ�,��ȫ������ok
% for Amp = 0.1:0.1:2
%     ys = Amp*sin(2*pi*f0*xs);
%     Abs_fft = abs(fft(ys,N_fft));
%     [M,i] = max(Abs_fft);
%     Amp_fft = sqrt(Abs_fft(i).^2 + Abs_fft(i-1).^2 + Abs_fft(i+1).^2 );
%     Amps = [Amps, Amp_fft];
%     
%     if (Amp == 1) 
%         Uni_Amp_fft = Amp_fft;
%     end
% end

Amps_1 = [];
% --------- ���ֶ��� (Freq)-----------
for i1 = 1:1:10
    for f0 = 10000:1000:150000
        Amp = 1;
        ys = Amp*sin(2*pi*f0*xs);
        Abs_fft = abs(fft(ys,N_fft));
        [M,i] = max(Abs_fft);
%         Amp_fft = sqrt(Abs_fft(i).^2 + Abs_fft(i-1).^2  + Abs_fft(i+1).^2 );
    %     Amp_fft = sqrt(sum(abs(fft(ys, N_fft)).^2))
        Amp_fft = sqrt(Abs_fft(i).^2 );
        Uni_Amp_fft = Amp_fft;
        Amps = [Amps, Amp_fft];
    end
%     Amps_1 = [Amps_1, Amps(603)];
end

% plot(Amps_1);
% plot(Amps)
[Min,min_index] =  min(abs(Amps - mean(Amps)))
plot(Amps)

    
% s1 = [1021366, 986588, 973970, 1016273, 1047896, 1032413,990959, 971348, 1006368, 1044361]

Uni_Amp_fft
 % FULL     1447.776440678686 (3000 - 2048)
 % Partial  1002.588811172620
