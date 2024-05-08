function [y, T, residual, g1] = dynamic_70(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2750)*y(2798))-(y(2751)*y(2799)+y(2752)*y(2800)+y(2753)*y(2801)+y(2754)*y(2802));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2750);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
