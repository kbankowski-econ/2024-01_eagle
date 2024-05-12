function [y, T, residual, g1] = dynamic_179(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(14060)*y(14113))-(y(14061)*y(14114)+y(14063)*y(14115)+y(14065)*y(14116)+y(14067)*y(14117));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(14060);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
