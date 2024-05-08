function [y, T, residual, g1] = dynamic_186(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(995)*y(12757))-(y(6901)*(-params(69))-params(146)*y(7389)-params(223)*y(7877)-params(300)*y(8365)-params(377)*y(8853)-params(454)*y(9341)-params(531)*y(9829)-params(608)*y(10317)-params(685)*y(10805)-params(762)*y(11293)-params(839)*y(11781)-params(919)*y(12269));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(995);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
