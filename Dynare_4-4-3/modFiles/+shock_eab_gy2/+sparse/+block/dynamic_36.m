function [y, T, residual, g1] = dynamic_36(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1027)*y(1084))-(y(1627)*y(1645)*y(999)*params(287)/params(57)+y(1191)*y(1209)*y(997)*params(133)/params(57)+y(1409)*y(1427)*y(998)*params(212)/params(57));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1027);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
