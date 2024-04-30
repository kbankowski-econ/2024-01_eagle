function [y, T, residual, g1] = static_100(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(757)=params(80)*T(519)^params(85);
  residual(1)=(y(195))-((1-params(80))*(y(227)/y(226))^(-params(85))+y(195)*T(757));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(757);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
