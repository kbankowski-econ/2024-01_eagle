function [y, T, residual, g1] = static_201(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1969)=params(537)*(y(2445)/T(422))^params(542);
  residual(1)=(y(2483))-((1-params(537))*(y(2516)/y(2515))^(-params(542))+y(2483)*T(1969));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1969);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
