function [y, T, residual, g1] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10921)*y(10974))-(y(10922)*y(10975)+y(10924)*y(10976)+y(10926)*y(10977)+y(10928)*y(10978));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10921);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
