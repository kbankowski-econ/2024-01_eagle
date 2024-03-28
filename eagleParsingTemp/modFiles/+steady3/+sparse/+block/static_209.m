function [y, T, residual, g1] = static_209(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1180))-(y(1202)*log(y(1054)-y(1054)*params(223))-1/(1+params(262))*y(1118)^(1+params(262))+y(1180)*params(206));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(206);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
