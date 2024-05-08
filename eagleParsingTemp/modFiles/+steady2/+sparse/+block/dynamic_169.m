function [y, T, residual, g1] = dynamic_169(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10238)*y(10286))-(y(10239)*y(10287)+y(10240)*y(10288)+y(10241)*y(10289)+y(10242)*y(10290));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10238);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
