function [y, T, residual, g1] = static_346(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4266)=params(955)*T(1745)^params(960);
  residual(1)=(y(4627))-((1-params(955))*(y(4660)/y(4659))^(-params(960))+y(4627)*T(4266));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4266);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
