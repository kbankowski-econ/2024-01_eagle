function [y, T] = dynamic_269(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(9751)=y(9662);
  y(12124)=y(12182)*(1-params(1017))+params(1017)*y(3835)+x(212);
  y(9580)=((params(334)+T(8)-1)*y(9751)-params(334)*x(60)*y(9747))/(y(9747)*(1-x(60)));
  T(8785)=params(1027)*(y(3848)/y(12137))^(-params(1032))*(y(12068)/T(2557))^params(1032);
  y(12106)=(1-params(1027))*(y(12138)/y(12137))^(-params(1032))+T(8785)*y(3817);
  y(12055)=y(12051)*y(12106);
  y(8775)=y(8663);
  y(12185)=y(12151);
end
