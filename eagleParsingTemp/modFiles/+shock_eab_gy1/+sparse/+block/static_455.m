function [y, T, residual, g1] = static_455(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3073))-(y(3094)*log(y(7787)-params(528)*y(7787))-1/(1+params(576))*y(2997)^(1+params(576))+params(509)*y(3073));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(509);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
