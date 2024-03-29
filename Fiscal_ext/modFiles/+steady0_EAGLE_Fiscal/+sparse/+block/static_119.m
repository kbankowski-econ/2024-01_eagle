function [y, T, residual, g1] = static_119(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(710)=params(253)*T(316)^params(258);
  residual(1)=(y(792))-((1-params(253))*(y(825)/y(824))^(-params(258))+y(792)*T(710));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(710);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
