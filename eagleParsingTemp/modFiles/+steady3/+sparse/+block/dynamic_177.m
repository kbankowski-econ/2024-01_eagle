function [y, T, residual, g1] = dynamic_177(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9861)*y(9914))-(y(9862)*y(9915)+y(9864)*y(9916)+y(9866)*y(9917)+y(9868)*y(9918));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9861);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
