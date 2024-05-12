function [y, T, residual, g1] = dynamic_171(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10369)*y(10421))-(y(10370)*y(10422)+y(10372)*y(10423)+y(10374)*y(10424)+y(10376)*y(10425));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10369);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
