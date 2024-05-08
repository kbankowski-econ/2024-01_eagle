function [y, T, residual, g1] = static_144(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(552)*y(1604))-(y(119)*(-params(85))-params(178)*y(416)-params(271)*y(713)-params(364)*y(1010)-params(460)*y(1307));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(552);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
