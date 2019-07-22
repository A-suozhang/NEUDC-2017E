fs = 100000;     % Sample Rate
N = 1000;          % How Many Points To Calc
f0 = 1000;          % The Wave Frequency


% ------------------ Plotting Different Lines ---------------------
xs = 0:1/fs:N*(1/fs);
ys = sin(2*pi*f0*xs);                                 % Sin Wave
ys_r = sin(2*pi*f0*xs + 0.8*pi);
% ys2 = 0.5* square(2*pi*f0*xs, 50);           % Square Wave
% ys3 = 0.3*sawtooth(2*pi*f0*xs,0.5);        % Triangle Wave
% ys4 = 0.3*sawtooth(2*pi*f0*xs);             % Saw Wave
plot(xs,ys,xs,ys_r);
% hold on;
% plot(xs,ys2);
% hold on;
% plot(xs,ys3);
% hold on;
% plot(xs,ys4);


% ---------------------------- fft test ------------------------------
% ys = fft(ys,1024);
% abs_ys = abs(ys);
% [M, ind] = max(abs_ys);
% f = ind/1024*fs
% amp = M*N/2
% stem(abs(ys(2:512)));       % ��һ��������ֱ������,��Ķ�Ӧ��Ƶ��(��N/2),��СΪA*N/2



%digits() �趨���㾫��

