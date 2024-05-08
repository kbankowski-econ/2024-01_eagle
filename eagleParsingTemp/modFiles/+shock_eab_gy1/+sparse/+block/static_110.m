function [y, T, residual, g1] = static_110(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(700)*y(753))-(y(701)*y(754)+y(703)*y(755)+y(705)*y(756)+y(707)*y(757));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(700);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
