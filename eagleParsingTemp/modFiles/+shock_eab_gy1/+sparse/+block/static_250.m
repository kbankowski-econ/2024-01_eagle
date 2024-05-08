function [y, T, residual, g1] = static_250(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2951)=params(263)*T(313)^params(268);
  residual(1)=(y(1142))-((1-params(263))*(y(1175)/y(1174))^(-params(268))+y(1142)*T(2951));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2951);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
