function [y, T, residual, g1] = dynamic_186(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13487)*y(13535))-(y(13488)*y(13536)+y(13489)*y(13537)+y(13490)*y(13538)+y(13491)*y(13539));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13487);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
