function [y, T, residual, g1] = static_111(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(643)=params(229)*T(270)^params(234);
  residual(1)=(y(735))-((1-params(229))*(y(768)/y(767))^(-params(234))+y(735)*T(643));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(643);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
