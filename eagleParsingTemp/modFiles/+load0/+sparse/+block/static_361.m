function [y, T, residual, g1] = static_361(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2650))-(y(2672)*log(y(2506)-y(2506)*params(335))-1/(1+params(383))*y(2574)^(1+params(383))+y(2650)*params(316));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(316);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
