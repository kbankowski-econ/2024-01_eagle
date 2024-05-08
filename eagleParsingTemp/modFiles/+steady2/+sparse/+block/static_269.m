function [y, T, residual, g1] = static_269(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3082)=params(520)*T(698)^params(525);
  residual(1)=(y(1735))-((1-params(520))*(y(1767)/y(1766))^(-params(525))+y(1735)*T(3082));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3082);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
