function [y, T, residual, g1] = static_309(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4420)=params(899)*T(2217)^params(904);
  residual(1)=(y(3149))-((1-params(899))*(y(3181)/y(3180))^(-params(904))+y(3149)*T(4420));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4420);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
