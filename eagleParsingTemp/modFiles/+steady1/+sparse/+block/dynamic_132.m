function [y, T, residual, g1] = dynamic_132(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7900)*y(7953))-(y(7901)*y(7954)+y(7903)*y(7955)+y(7905)*y(7956)+y(7907)*y(7957));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7900);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
