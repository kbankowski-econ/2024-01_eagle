function [y, T, residual, g1] = dynamic_78(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(314)*y(2444))-(y(1432)*(-params(56))-params(120)*y(1685)-params(184)*y(1938)-params(251)*y(2191));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(314);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
