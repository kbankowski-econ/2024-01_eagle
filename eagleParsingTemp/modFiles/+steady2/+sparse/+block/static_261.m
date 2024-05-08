function [y, T, residual, g1] = static_261(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4085)*y(4133))-(y(4086)*y(4134)+y(4087)*y(4135)+y(4088)*y(4136)+y(4089)*y(4137));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4085);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
