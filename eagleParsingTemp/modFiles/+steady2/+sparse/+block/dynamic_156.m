function [y, T, residual, g1] = dynamic_156(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8546)*y(8594))-(y(8547)*y(8595)+y(8548)*y(8596)+y(8549)*y(8597)+y(8550)*y(8598));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8546);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
