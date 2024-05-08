function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10285)*y(10338))-(y(10286)*y(10339)+y(10288)*y(10340)+y(10290)*y(10341)+y(10292)*y(10342));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10285);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
