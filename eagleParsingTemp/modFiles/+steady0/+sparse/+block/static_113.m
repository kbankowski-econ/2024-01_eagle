function [y, T, residual, g1] = static_113(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(419)*y(362))-(y(1054)*params(314)*y(1078)*y(329)/params(120)+y(801)*params(251)*y(825)*y(328)/params(120)+y(41)*params(56)*y(65)*y(326)/params(120)+y(548)*params(184)*y(572)*y(327)/params(120));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(362);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
