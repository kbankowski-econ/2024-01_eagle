function [y, T, residual, g1] = dynamic_85(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3957)*y(3899))-(y(4109)*params(449)*y(4145)*y(3856)/params(385)+y(3506)*params(317)*y(3542)*y(3855)/params(385)+y(3205)*params(252)*y(3241)*y(3854)/params(385)+y(2904)*params(187)*y(2940)*y(3853)/params(385)+y(2302)*T(187)+y(2603)*params(122)*y(2639)*y(3852)/params(385));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3899);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
