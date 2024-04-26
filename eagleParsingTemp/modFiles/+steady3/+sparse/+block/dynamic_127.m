function [y, T, residual, g1] = dynamic_127(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8820)*y(8873))-(y(8821)*y(8874)+y(8823)*y(8875)+y(8825)*y(8876)+y(8827)*y(8877));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8820);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
