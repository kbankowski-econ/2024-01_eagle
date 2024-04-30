function [y, T, residual, g1] = static_106(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1019))-(y(1040)*log(y(1074)-params(259)*y(1074))-1/(1+params(308))*y(946)^(1+params(308))+params(243)*y(1019));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(243);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
