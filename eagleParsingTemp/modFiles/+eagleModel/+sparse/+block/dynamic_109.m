function [y, T, residual, g1] = dynamic_109(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12256)*y(12309))-(y(12257)*y(12310)+y(12259)*y(12311)+y(12261)*y(12312)+y(12263)*y(12313));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12256);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
