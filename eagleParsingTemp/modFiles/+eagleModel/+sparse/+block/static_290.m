function [y, T, residual, g1] = static_290(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5294))-(y(5316)*log(y(5154)-y(5154)*params(1095))-1/(1+params(1145))*y(5221)^(1+params(1145))+y(5294)*params(1079));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1079);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
