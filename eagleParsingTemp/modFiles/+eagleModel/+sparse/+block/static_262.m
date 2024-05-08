function [y, T, residual, g1] = static_262(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2706)=params(738)*T(198)^params(743);
  residual(1)=(y(3117))-((1-params(738))*(y(3150)/y(3149))^(-params(743))+y(3117)*T(2706));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2706);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
