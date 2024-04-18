function [y, T, residual, g1] = dynamic_90(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3375)*y(3427))-(y(3376)*y(3428)+y(3378)*y(3429)+y(3380)*y(3430)+y(3382)*y(3431));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3375);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
