run:
	docker run -it -p 8888:8888 --name handson-ml -v $(shell pwd):/notebooks/handson-ml tensorflow/tensorflow:latest

run-gpu:
	nvidia-docker run -it -p 8888:8888 --name handson-ml -v $(shell pwd):/notebooks/handson-ml tensorflow/tensorflow:latest-gpu

clean:
	docker stop handson-ml && docker rm handson-ml
