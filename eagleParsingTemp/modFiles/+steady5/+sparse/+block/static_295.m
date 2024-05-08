function [y, T, residual, g1] = static_295(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(918)*y(5372))-(y(279)*(-params(69))-params(146)*y(742)-params(223)*y(1205)-params(300)*y(1668)-params(377)*y(2131)-params(454)*y(2594)-params(531)*y(3057)-params(608)*y(3520)-params(685)*y(3983)-params(762)*y(4446)-params(842)*y(4909));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(918);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
