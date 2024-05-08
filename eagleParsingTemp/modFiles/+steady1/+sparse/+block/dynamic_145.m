function [y, T, residual, g1] = dynamic_145(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(764)*y(8222))-(y(4505)*(-params(69))-params(146)*y(4918)-params(223)*y(5331)-params(300)*y(5744)-params(377)*y(6157)-params(454)*y(6570)-params(531)*y(6983)-params(608)*y(7396)-params(688)*y(7809));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(764);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
