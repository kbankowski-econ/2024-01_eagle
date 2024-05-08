function [y, T, residual, g1] = dynamic_113(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(802)*y(5550))-(y(3177)*(-params(93))-params(194)*y(3516)-params(295)*y(3855)-params(396)*y(4194)-params(497)*y(4533)-params(598)*y(4872)-params(702)*y(5211));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(802);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
