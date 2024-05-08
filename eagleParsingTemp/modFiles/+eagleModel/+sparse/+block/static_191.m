function [y, T, residual, g1] = static_191(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1789)=params(166)*T(868)^params(171);
  residual(1)=(y(651))-((1-params(166))*(y(684)/y(683))^(-params(171))+y(651)*T(1789));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1789);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
