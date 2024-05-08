function [y, T, residual, g1] = dynamic_78(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3011)*y(3059))-(y(3012)*y(3060)+y(3013)*y(3061)+y(3014)*y(3062)+y(3015)*y(3063));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3011);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
