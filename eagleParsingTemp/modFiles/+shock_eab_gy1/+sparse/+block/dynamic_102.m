function [y, T, residual, g1] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9533)*y(9586))-(y(9534)*y(9587)+y(9536)*y(9588)+y(9538)*y(9589)+y(9540)*y(9590));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9533);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
