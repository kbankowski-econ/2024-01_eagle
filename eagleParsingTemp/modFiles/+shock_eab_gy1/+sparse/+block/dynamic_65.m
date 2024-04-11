function [y, T, residual, g1] = dynamic_65(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3541)*y(3594))-(y(3542)*y(3595)+y(3544)*y(3596)+y(3546)*y(3597)+y(3548)*y(3598));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3541);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
