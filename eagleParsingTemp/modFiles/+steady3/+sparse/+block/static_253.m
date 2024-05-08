function [y, T, residual, g1] = static_253(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2634)*y(2687))-(y(2635)*y(2688)+y(2637)*y(2689)+y(2639)*y(2690)+y(2641)*y(2691));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2634);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
