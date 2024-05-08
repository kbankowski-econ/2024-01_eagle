function [y, T, residual, g1] = static_242(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(764)*y(3948))-(y(231)*(-params(69))-params(146)*y(644)-params(223)*y(1057)-params(300)*y(1470)-params(377)*y(1883)-params(454)*y(2296)-params(531)*y(2709)-params(608)*y(3122)-params(688)*y(3535));
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
