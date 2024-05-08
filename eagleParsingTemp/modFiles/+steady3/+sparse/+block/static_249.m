function [y, T, residual, g1] = static_249(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3147)=params(768)*(y(4281)/T(793))^params(773);
  residual(1)=(y(4319))-((1-params(768))*(y(4352)/y(4351))^(-params(773))+y(4319)*T(3147));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3147);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
