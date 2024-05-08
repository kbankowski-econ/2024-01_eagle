function [y, T, residual, g1] = dynamic_138(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(939)*y(6680))-(y(3800)*(-params(97))-params(202)*y(4160)-params(307)*y(4520)-params(412)*y(4880)-params(517)*y(5240)-params(622)*y(5600)-params(727)*y(5960)-params(835)*y(6320));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(939);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
