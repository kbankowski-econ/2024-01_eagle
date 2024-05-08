function [y, T, residual, g1] = static_259(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3656)=params(845)*(y(4992)/T(519))^params(850);
  residual(1)=(y(5030))-((1-params(845))*(y(5063)/y(5062))^(-params(850))+y(5030)*T(3656));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3656);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
