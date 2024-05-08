function [y, T, residual, g1] = static_163(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(2930))-(y(2929));
  residual(2)=(y(2929))-(y(2348));
  residual(3)=(y(2349))-(y(2348)*y(2348)*y(2929)*y(2930));
  T(50)=y(2377)^4-1;
  residual(4)=(T(50))-(T(50)*params(610)+(1-params(610))*(params(612)*y(2384)^4-1+params(609)*(y(2349)-params(612)))+x(186));
  T(51)=params(567)^(-1);
  residual(5)=(y(2377))-(T(51)*y(2348));
  T(52)=4*y(2377)^3;
if nargout > 3
    g1_v = NaN(12, 1);
g1_v(1)=(-1);
g1_v(2)=1;
g1_v(3)=(-(y(2348)*y(2348)*y(2930)));
g1_v(4)=(-1);
g1_v(5)=(-(y(2930)*y(2929)*(y(2348)+y(2348))));
g1_v(6)=(-T(51));
g1_v(7)=1;
g1_v(8)=(-(y(2348)*y(2348)*y(2929)));
g1_v(9)=1;
g1_v(10)=(-((1-params(610))*params(609)));
g1_v(11)=T(52)-params(610)*T(52);
g1_v(12)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
