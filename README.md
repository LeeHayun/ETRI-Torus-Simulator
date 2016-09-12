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
	codes/tests 폴더에 proto.c, torus.sh, run.sh 복사	
	run.sh 실행

5. trace file 이름 변경
	proto.c에서 FILENAME 매크로의 이름 수정 후 run.sh 실행
