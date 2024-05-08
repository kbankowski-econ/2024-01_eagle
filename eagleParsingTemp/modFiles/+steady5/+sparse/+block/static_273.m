function [y, T, residual, g1] = static_273(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4735)*y(4787))-(y(4736)*y(4788)+y(4738)*y(4789)+y(4740)*y(4790)+y(4742)*y(4791));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4735);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
