function [y, T, residual, g1] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2754)*y(2695))-(y(4105)*T(860)+y(3804)*T(859)+y(3503)*params(317)*y(3539)*y(2650)/params(122)+y(3202)*params(252)*y(3238)*y(2649)/params(122)+y(2298)*params(57)*y(2334)*y(2647)/params(122)+y(2901)*T(858));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2695);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
