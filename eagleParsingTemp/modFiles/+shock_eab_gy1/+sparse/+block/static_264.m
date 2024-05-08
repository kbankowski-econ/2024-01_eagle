function [y, T, residual, g1] = static_264(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4065)*y(4118))-(y(4066)*y(4119)+y(4068)*y(4120)+y(4070)*y(4121)+y(4072)*y(4122));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4065);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
