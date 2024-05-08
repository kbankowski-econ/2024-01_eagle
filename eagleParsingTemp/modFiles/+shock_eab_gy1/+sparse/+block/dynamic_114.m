function [y, T, residual, g1] = dynamic_114(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1248)*y(12282))-(y(6678)*(-params(70))-params(168)*y(7145)-params(266)*y(7612)-params(364)*y(8079)-params(462)*y(8546)-params(560)*y(9013)-params(658)*y(9480)-params(756)*y(9947)-params(854)*y(10414)-params(952)*y(10881)-params(1050)*y(11348)-params(1151)*y(11815));
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
