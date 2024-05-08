function [y, T, residual, g1] = dynamic_113(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1248)*y(12217))-(y(6613)*(-params(70))-params(168)*y(7080)-params(266)*y(7547)-params(364)*y(8014)-params(462)*y(8481)-params(560)*y(8948)-params(658)*y(9415)-params(756)*y(9882)-params(854)*y(10349)-params(952)*y(10816)-params(1050)*y(11283)-params(1151)*y(11750));
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
