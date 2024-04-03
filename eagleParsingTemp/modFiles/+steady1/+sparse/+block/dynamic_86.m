function [y, T, residual, g1] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2359)*y(2418))-(y(4069)*y(4105)*y(2316)*params(449)/params(57)+y(3768)*T(911)+y(3467)*T(910)+y(3166)*y(3202)*y(2313)*params(252)/params(57)+y(2564)*y(2600)*y(2311)*params(122)/params(57)+y(2865)*T(909));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2359);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
