function [y, T, residual, g1] = static_387(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(400))-(y(421)*log(y(262)-y(262)*params(76))-1/(1+params(119))*y(324)^(1+params(119))+y(400)*params(59));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(59);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
