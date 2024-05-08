function [y, T, residual, g1] = dynamic_96(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10936)*y(10989))-(y(10937)*y(10990)+y(10939)*y(10991)+y(10941)*y(10992)+y(10943)*y(10993));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10936);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
