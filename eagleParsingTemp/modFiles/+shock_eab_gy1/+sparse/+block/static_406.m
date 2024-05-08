function [y, T, residual, g1] = static_406(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5206)=params(172)*T(498)^params(177);
  residual(1)=(y(939))-((1-params(172))*(y(972)/y(971))^(-params(177))+y(939)*T(5206));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5206);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
