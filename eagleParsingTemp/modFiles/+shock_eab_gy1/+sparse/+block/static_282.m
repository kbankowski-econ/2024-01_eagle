function [y, T, residual, g1] = static_282(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3466)=params(841)*(y(3690)/T(1468))^params(846);
  residual(1)=(y(3728))-((1-params(841))*(y(3761)/y(3760))^(-params(846))+y(3728)*T(3466));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3466);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
