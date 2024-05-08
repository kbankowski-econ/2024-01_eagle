function [y, T, residual, g1] = static_354(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4003)=params(558)*T(969)^params(563);
  residual(1)=(y(2615))-((1-params(558))*(y(2648)/y(2647))^(-params(563))+y(2615)*T(4003));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4003);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
