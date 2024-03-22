function [y, T, residual, g1] = static_89(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(579)*y(522))-(y(688)*params(287)*y(706)*y(494)/params(212)+y(33)*params(57)*y(51)*y(492)/params(212)+y(251)*params(133)*y(269)*y(493)/params(212));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(522);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
