function [y, T, residual, g1] = dynamic_66(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4536)*y(4589))-(y(4537)*y(4590)+y(4539)*y(4591)+y(4541)*y(4592)+y(4543)*y(4593));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4536);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
