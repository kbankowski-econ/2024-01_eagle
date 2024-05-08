function [y, T, residual, g1] = dynamic_43(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2972)*y(3025))-(y(2973)*y(3026)+y(2975)*y(3027)+y(2977)*y(3028)+y(2979)*y(3029));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2972);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
