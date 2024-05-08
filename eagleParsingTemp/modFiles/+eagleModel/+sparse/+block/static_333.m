function [y, T, residual, g1] = static_333(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1248)*y(5906))-(y(302)*(-params(70))-params(168)*y(769)-params(266)*y(1236)-params(364)*y(1703)-params(462)*y(2170)-params(560)*y(2637)-params(658)*y(3104)-params(756)*y(3571)-params(854)*y(4038)-params(952)*y(4505)-params(1050)*y(4972)-params(1151)*y(5439));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1248);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
