function [y, T, residual, g1] = static_313(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2916))-(y(2937)*log(y(2772)-params(604)*y(2772))-1/(1+params(652))*y(2840)^(1+params(652))+params(585)*y(2916));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(585);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
