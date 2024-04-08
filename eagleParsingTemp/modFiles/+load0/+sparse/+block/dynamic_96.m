function [y, T, residual, g1] = dynamic_96(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3688)*y(3621))-(y(4979)*T(1100)+y(4610)*T(1099)+y(4241)*params(377)*y(4301)*y(3576)/params(223)+y(3872)*params(300)*y(3932)*y(3575)/params(223)+y(2764)*params(69)*y(2824)*y(3573)/params(223)+y(3133)*params(146)*y(3193)*y(3574)/params(223));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3621);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
