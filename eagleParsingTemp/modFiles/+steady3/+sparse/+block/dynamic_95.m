function [y, T, residual, g1] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4195)*y(4139))-(y(3749)*params(379)*y(3785)*y(4096)/params(442)+y(3450)*params(312)*y(3486)*y(4095)/params(442)+y(3151)*params(248)*y(3187)*y(4094)/params(442)+y(2852)*params(184)*y(2888)*y(4093)/params(442)+y(2254)*params(56)*y(2290)*y(4091)/params(442)+y(2553)*params(120)*y(2589)*y(4092)/params(442));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4139);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
