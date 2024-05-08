function [y, T, residual, g1] = dynamic_74(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6033)*y(6086))-(y(6034)*y(6087)+y(6036)*y(6088)+y(6038)*y(6089)+y(6040)*y(6090));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6033);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
