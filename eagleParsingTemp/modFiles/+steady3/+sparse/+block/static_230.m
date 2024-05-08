function [y, T, residual, g1] = static_230(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2752)=params(691)*(y(3619)/T(991))^params(696);
  residual(1)=(y(3657))-((1-params(691))*(y(3690)/y(3689))^(-params(696))+y(3657)*T(2752));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2752);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
