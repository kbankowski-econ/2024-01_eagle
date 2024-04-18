function [y, T, residual, g1] = dynamic_87(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4726)*y(4779))-(y(4727)*y(4780)+y(4729)*y(4781)+y(4731)*y(4782)+y(4733)*y(4783));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4726);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
