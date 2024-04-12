function [y, T, residual, g1] = dynamic_70(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2868)*y(2921))-(y(2869)*y(2922)+y(2871)*y(2923)+y(2873)*y(2924)+y(2875)*y(2925));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2868);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
