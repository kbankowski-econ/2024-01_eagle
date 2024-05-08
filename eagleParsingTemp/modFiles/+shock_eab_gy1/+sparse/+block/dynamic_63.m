function [y, T, residual, g1] = dynamic_63(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3877)*y(3930))-(y(3878)*y(3931)+y(3880)*y(3932)+y(3882)*y(3933)+y(3884)*y(3934));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3877);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
