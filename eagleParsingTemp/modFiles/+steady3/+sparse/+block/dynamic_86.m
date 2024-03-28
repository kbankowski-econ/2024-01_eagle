function [y, T, residual, g1] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3897)*y(3840))-(y(4048)*params(442)*y(4084)*y(3797)/params(379)+y(3449)*params(312)*y(3485)*y(3796)/params(379)+y(3150)*params(248)*y(3186)*y(3795)/params(379)+y(2851)*params(184)*y(2887)*y(3794)/params(379)+y(2253)*params(56)*y(2289)*y(3792)/params(379)+y(2552)*params(120)*y(2588)*y(3793)/params(379));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3840);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
