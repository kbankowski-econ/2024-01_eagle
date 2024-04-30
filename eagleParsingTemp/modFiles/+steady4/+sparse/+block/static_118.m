function [y, T, residual, g1] = static_118(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(644)=params(149)*T(39)^params(154);
  residual(1)=(y(472))-((1-params(149))*(y(505)/y(504))^(-params(154))+y(472)*T(644));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(644);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
