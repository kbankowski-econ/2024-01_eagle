function [y, T] = static_173(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(1884)=y(2401)*y(2453)/(y(2438)*y(2372)+y(2401)*y(2453));
  T(1885)=y(2438)*y(2372)/(y(2438)*y(2372)+y(2401)*y(2453));
  y(2345)=T(1884)*y(2359)+T(1885)*y(2352);
  y(2344)=T(1884)*y(2358)+T(1885)*y(2351);
end
