%%%%%%%%%%%%%%%%%%%%%%%%%
% same lambda 
%%%%%%%%%%%%%%%%%%%%%%%%%
lambda = 30;
dim = [512, 512, 64];
% dim = [1280 1080 100];

% cpu version
tic
r1 = poissrnd(lambda, dim);
toc

% gpu version
tic
r2 = MgPoissrndGpu(lambda, dim);
toc

%%%%%%%%%%%%%%%%%%%%%%%%%
% various lambda 
%%%%%%%%%%%%%%%%%%%%%%%%%
k = (1:dim(1))';
lambda = ones(dim) .* k;

% cpu version
tic
r3 = poissrnd(lambda);
toc

% gpu version
tic
r4 = MgPoissrndGpu(lambda);
toc