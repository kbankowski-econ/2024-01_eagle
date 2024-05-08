function [y, T, residual, g1] = dynamic_163(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1237)*y(9216))-(y(5196)*(-params(105))-params(218)*y(5598)-params(331)*y(6000)-params(444)*y(6402)-params(557)*y(6804)-params(670)*y(7206)-params(783)*y(7608)-params(896)*y(8010)-params(1009)*y(8412)-params(1125)*y(8814));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1237);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
