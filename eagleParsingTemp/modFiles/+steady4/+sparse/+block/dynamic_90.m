function [y, T, residual, g1] = dynamic_90(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2754)*y(2695))-(y(4105)*params(449)*y(4141)*y(2652)/params(122)+y(3804)*params(385)*y(3840)*y(2651)/params(122)+y(3503)*params(317)*y(3539)*y(2650)/params(122)+y(3202)*params(252)*y(3238)*y(2649)/params(122)+y(2298)*params(57)*y(2334)*y(2647)/params(122)+y(2901)*T(295));
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
