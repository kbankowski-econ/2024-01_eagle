function [y, T, residual, g1] = static_184(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2868))-(y(2889)*log(y(2954)-params(566)*y(2954))-1/(1+params(616))*y(2795)^(1+params(616))+params(550)*y(2868));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(550);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
