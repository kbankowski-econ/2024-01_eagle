function [y, T, residual, g1] = dynamic_173(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10318)*y(10371))-(y(10319)*y(10372)+y(10321)*y(10373)+y(10323)*y(10374)+y(10325)*y(10375));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10318);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
