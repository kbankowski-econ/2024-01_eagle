function [y, T, residual, g1] = dynamic_92(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11918)*y(11971))-(y(11919)*y(11972)+y(11921)*y(11973)+y(11923)*y(11974)+y(11925)*y(11975));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11918);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
