function [y, T, residual, g1] = static_298(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1650))-(y(1670)*log(y(1512)-params(423)*y(1512))-1/(1+params(466))*y(1574)^(1+params(466))+params(406)*y(1650));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(406);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
