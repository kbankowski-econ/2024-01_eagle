function [y, T, residual, g1] = static_220(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(884))-(y(905)*log(y(756)-y(756)*params(159))-1/(1+params(199))*y(822)^(1+params(199))+params(142)*y(884));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(142);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
