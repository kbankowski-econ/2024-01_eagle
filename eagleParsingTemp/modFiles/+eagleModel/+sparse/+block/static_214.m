function [y, T, residual, g1] = static_214(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2843)*y(2896))-(y(2844)*y(2897)+y(2846)*y(2898)+y(2848)*y(2899)+y(2850)*y(2900));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2843);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
