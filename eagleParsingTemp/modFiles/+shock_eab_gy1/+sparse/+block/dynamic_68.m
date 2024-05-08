function [y, T, residual, g1] = dynamic_68(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4165)*y(4218))-(y(4166)*y(4219)+y(4168)*y(4220)+y(4170)*y(4221)+y(4172)*y(4222));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4165);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
