function [y, T, residual, g1] = dynamic_114(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5999)*y(6047))-(y(6000)*y(6048)+y(6001)*y(6049)+y(6002)*y(6050)+y(6003)*y(6051));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5999);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
