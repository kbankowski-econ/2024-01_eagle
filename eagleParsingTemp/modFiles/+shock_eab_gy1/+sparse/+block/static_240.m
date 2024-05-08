function [y, T, residual, g1] = static_240(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2066)=params(259)*T(111)^params(264);
  residual(1)=(y(998))-((1-params(259))*(y(1031)/y(1030))^(-params(264))+y(998)*T(2066));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2066);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
