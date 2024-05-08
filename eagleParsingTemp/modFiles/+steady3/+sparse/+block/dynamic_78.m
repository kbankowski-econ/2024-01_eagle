function [y, T, residual, g1] = dynamic_78(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3100)*y(3153))-(y(3101)*y(3154)+y(3103)*y(3155)+y(3105)*y(3156)+y(3107)*y(3157));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3100);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
