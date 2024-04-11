function [y, T, residual, g1] = static_162(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1289)*y(1227))-(y(2178)*params(673)*y(2218)*y(1185)/params(380)+y(1829)*params(577)*y(1869)*y(1184)/params(380)+y(1480)*params(477)*y(1520)*y(1183)/params(380)+y(781)*params(283)*y(821)*y(1182)/params(380)+y(83)*params(89)*y(123)*y(1180)/params(380)+y(432)*params(186)*y(472)*y(1181)/params(380));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1227);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
