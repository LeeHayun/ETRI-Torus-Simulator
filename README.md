# ETRI-Torus-Simulator

1. ROS+CODES 개발 환경 구축
  필요한 프로그램
    - mpich, pkg-config

2. ROSS 설치
  git clone https://github.com/carothersc/ROSS.git
  cd ROSS
  mkdir build
  cd build
  ARCH=x86_64 CC=mpicc CXX=mpicxx cmake ../
  make –j 3
  make install

3. CODES 설치
  http://www.mcs.anl.gov/projects/codes/downloads/에서 CODES 최신버전 다운 및 압축풀기
  cd codes-0.x.x
  ./prepare.sh
  mkdir build
  cd build
  ../configure CC=mpicc PKG_CONFIG_PATH=[path to ross]/install/lib/pkgconfig
  make && make install

4. compile & 실행방법
  run.sh 실행

5. compile 방법
  mpicc -o test test.c -lROSS -lm -lcodes
  3개의 library를 추가해 주어야 한다.

6. 실행 방법
  ./test --sync=1 config/test.conf
  sync의 값은 1~5부터 서로 다른 의미를 가진다. 기본적으로 1 사용
