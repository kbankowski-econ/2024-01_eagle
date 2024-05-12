function [y, T] = dynamic_219(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(14809)=y(14726);
  y(14639)=((params(864)+T(13)-1)*y(14809)-params(864)*x(303)*y(14805))/(y(14805)*(1-x(303)));
  y(8822)=(1-params(72))*(y(8855)/y(8854))^(-params(77))+params(72)*(y(505)/y(8854))^(-params(77))*(y(8784)/T(2375))^params(77)*y(473);
end
