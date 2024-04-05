function [y, T, residual, g1] = static_213(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(268))-(y(290)*log(y(144)-y(144)*params(26))-1/(1+params(64))*y(206)^(1+params(64))+y(268)*params(9));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(9);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
