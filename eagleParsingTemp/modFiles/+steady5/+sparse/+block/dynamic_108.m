function [y, T, residual, g1] = dynamic_108(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4301)*y(4353))-(y(4302)*y(4354)+y(4304)*y(4355)+y(4306)*y(4356)+y(4308)*y(4357));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4301);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
