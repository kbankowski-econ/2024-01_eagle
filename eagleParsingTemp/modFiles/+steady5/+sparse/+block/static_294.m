function [y, T] = static_294(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(4720)=y(6523)*y(6575)/(y(6560)*y(6494)+y(6523)*y(6575));
  T(4721)=y(6560)*y(6494)/(y(6560)*y(6494)+y(6523)*y(6575));
  y(6455)=T(4720)*y(6481)+T(4721)*y(6468);
  y(6454)=T(4720)*y(6480)+T(4721)*y(6467);
end
