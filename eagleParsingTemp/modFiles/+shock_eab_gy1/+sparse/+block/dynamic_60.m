function [y, T, residual, g1] = dynamic_60(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4603)*y(4656))-(y(4604)*y(4657)+y(4606)*y(4658)+y(4608)*y(4659)+y(4610)*y(4660));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4603);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
