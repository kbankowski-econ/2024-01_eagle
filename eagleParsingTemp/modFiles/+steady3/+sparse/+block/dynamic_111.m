function [y, T, residual, g1] = dynamic_111(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(442)*y(4128))-(y(2334)*(-params(56))-params(120)*y(2633)-params(184)*y(2932)-params(248)*y(3231));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(442);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
