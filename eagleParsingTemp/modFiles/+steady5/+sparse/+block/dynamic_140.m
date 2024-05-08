function [y, T, residual, g1] = dynamic_140(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5327)*y(5379))-(y(5328)*y(5380)+y(5330)*y(5381)+y(5332)*y(5382)+y(5334)*y(5383));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5327);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
