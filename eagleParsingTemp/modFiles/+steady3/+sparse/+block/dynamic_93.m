function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4382)*y(4435))-(y(4383)*y(4436)+y(4385)*y(4437)+y(4387)*y(4438)+y(4389)*y(4439));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4382);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
