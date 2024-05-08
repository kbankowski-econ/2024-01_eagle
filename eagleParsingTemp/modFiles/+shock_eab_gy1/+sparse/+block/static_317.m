function [y, T, residual, g1] = static_317(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3998)=params(946)*(y(4349)/T(159))^params(951);
  residual(1)=(y(4387))-((1-params(946))*(y(4420)/y(4419))^(-params(951))+y(4387)*T(3998));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3998);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
