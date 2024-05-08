function [y, T, residual, g1] = static_434(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6781)=params(745)*T(533)^params(750);
  residual(1)=(y(2720))-((1-params(745))*(y(2752)/y(2751))^(-params(750))+y(2720)*T(6781));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(6781);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
