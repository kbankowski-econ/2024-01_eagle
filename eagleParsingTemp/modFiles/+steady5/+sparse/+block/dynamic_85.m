function [y, T, residual, g1] = dynamic_85(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3987)*y(3928))-(y(4139)*params(477)*y(4175)*y(3881)/params(409)+y(3526)*params(337)*y(3562)*y(3880)/params(409)+y(3220)*params(268)*y(3256)*y(3879)/params(409)+y(2914)*T(999)+y(2302)*params(61)*y(2338)*y(3876)/params(409)+y(2608)*params(130)*y(2644)*y(3877)/params(409));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3928);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
