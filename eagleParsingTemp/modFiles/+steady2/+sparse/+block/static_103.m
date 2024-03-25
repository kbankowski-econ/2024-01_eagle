function [y, T, residual, g1] = static_103(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1143)*y(1090))-(y(785)*params(279)*y(803)*y(1058)/params(349)+y(538)*params(205)*y(556)*y(1057)/params(349)+y(44)*params(63)*y(62)*y(1055)/params(349)+y(291)*params(134)*y(309)*y(1056)/params(349));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1090);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
