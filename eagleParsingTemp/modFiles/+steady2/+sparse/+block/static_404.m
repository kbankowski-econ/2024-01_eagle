function [y, T, residual, g1] = static_404(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5968)=params(600)*T(99)^params(605);
  residual(1)=(y(2151))-((1-params(600))*(y(2183)/y(2182))^(-params(605))+y(2151)*T(5968));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5968);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
