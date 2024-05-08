function [y, T, residual, g1] = static_277(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3759)*y(3812))-(y(3760)*y(3813)+y(3762)*y(3814)+y(3764)*y(3815)+y(3766)*y(3816));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3759);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
