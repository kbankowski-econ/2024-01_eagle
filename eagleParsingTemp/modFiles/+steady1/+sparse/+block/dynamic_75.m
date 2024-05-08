function [y, T, residual, g1] = dynamic_75(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3076)*y(3129))-(y(3077)*y(3130)+y(3079)*y(3131)+y(3081)*y(3132)+y(3083)*y(3133));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3076);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
