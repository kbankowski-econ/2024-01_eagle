function [y, T, residual, g1] = static_290(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4078)*y(4131))-(y(4079)*y(4132)+y(4081)*y(4133)+y(4083)*y(4134)+y(4085)*y(4135));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4078);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
