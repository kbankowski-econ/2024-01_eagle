function [y, T, residual, g1] = static_420(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4264))-(y(4286)*log(y(8140)-y(8140)*params(566))-1/(1+params(614))*y(4188)^(1+params(614))+y(4264)*params(547));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(547);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
