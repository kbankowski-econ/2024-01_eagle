function [y, T, residual, g1] = static_334(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6170)*y(6218))-(y(6171)*y(6219)+y(6172)*y(6220)+y(6173)*y(6221)+y(6174)*y(6222));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6170);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
