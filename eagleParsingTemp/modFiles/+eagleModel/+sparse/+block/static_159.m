function [y, T, residual, g1] = static_159(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(39)=log(y(4674));
  residual(1)=(T(39))-((1-params(947))*log(x(264))+T(39)*params(947)+x(279));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4674)-params(947)*1/y(4674);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
