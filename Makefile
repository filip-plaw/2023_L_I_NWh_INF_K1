deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt
lint:
	flake8 hello_world test
run:
	python main.py
.PHONY: test
test:
	PYTHONPATH=. py.test --verbose -s
docker_build:
<<<<<<< HEAD
	docker build -t hello-world-printer .
docker_run: docker_build 	
	docker run --name hello-world-printer-dev -p 5000:5000 -d hello-world-printer 

USERNAME=plawio 
TAG=$(USERNAME)/hello-world-printer
docker_push: docker_build  




#docker run --name hello-world-printer-dev -p 5000:5000 -d hello-world-printer 
=======
	docker build -t hello-world-printer .
>>>>>>> 384aca446a93ea58edfd87c5dfb4fa56c11da632
