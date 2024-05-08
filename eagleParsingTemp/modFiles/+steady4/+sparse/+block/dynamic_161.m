function [y, T, residual, g1] = dynamic_161(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13979)*y(14032))-(y(13980)*y(14033)+y(13982)*y(14034)+y(13984)*y(14035)+y(13986)*y(14036));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13979);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
