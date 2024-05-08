function [y, T, residual, g1] = dynamic_131(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7899)*y(7952))-(y(7900)*y(7953)+y(7902)*y(7954)+y(7904)*y(7955)+y(7906)*y(7956));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7899);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
