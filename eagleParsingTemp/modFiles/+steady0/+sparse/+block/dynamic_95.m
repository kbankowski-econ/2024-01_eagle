function [y, T, residual, g1] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4223)*y(4165))-(y(3773)*params(385)*y(3809)*y(4122)/params(449)+y(3472)*params(317)*y(3508)*y(4121)/params(449)+y(3171)*T(615)+y(2870)*params(187)*y(2906)*y(4119)/params(449)+y(2268)*params(57)*y(2304)*y(4117)/params(449)+y(2569)*params(122)*y(2605)*y(4118)/params(449));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4165);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
