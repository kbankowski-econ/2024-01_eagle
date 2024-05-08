function [y, T, residual, g1] = static_322(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4422)=params(786)*T(1523)^params(791);
  residual(1)=(y(2747))-((1-params(786))*(y(2779)/y(2778))^(-params(791))+y(2747)*T(4422));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4422);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
