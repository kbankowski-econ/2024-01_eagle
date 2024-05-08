function [y, T, residual, g1] = dynamic_145(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(764)*y(8262))-(y(4545)*(-params(69))-params(146)*y(4958)-params(223)*y(5371)-params(300)*y(5784)-params(377)*y(6197)-params(454)*y(6610)-params(531)*y(7023)-params(608)*y(7436)-params(688)*y(7849));
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
