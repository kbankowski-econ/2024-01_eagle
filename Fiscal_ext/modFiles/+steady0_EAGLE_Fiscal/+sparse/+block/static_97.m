function [y, T, residual, g1] = static_97(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(991)*y(1045))-(y(992)*y(1046)+y(996)*y(1048)+y(1000)*y(1050)+y(993)*y(1047)+y(997)*y(1049));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(991);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
