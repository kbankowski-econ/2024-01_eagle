function [y, T, residual, g1] = dynamic_107(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4984)*y(5032))-(y(4985)*y(5033)+y(4986)*y(5034)+y(4987)*y(5035)+y(4988)*y(5036));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4984);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
