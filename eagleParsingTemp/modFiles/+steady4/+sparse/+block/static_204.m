function [y, T, residual, g1] = static_204(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2508))-(y(2530)*log(y(2949)-y(2949)*params(489))-1/(1+params(540))*y(2432)^(1+params(540))+y(2508)*params(470));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(470);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
