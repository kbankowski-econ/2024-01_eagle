function [y, T, residual, g1] = dynamic_51(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4991)*y(5044))-(y(4992)*y(5045)+y(4994)*y(5046)+y(4996)*y(5047)+y(4998)*y(5048));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4991);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
