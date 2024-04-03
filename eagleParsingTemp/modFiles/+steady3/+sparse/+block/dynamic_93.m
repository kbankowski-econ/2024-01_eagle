function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3365)*y(3306))-(y(4124)*T(557)+y(3819)*T(948)+y(3514)*T(947)+y(2903)*params(193)*y(2939)*y(3256)/params(260)+y(2293)*params(59)*y(2329)*y(3254)/params(260)+y(2598)*T(946));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3306);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
