function [y, T, residual, g1] = dynamic_123(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6197)*y(6250))-(y(6198)*y(6251)+y(6200)*y(6252)+y(6202)*y(6253)+y(6204)*y(6254));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6197);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
