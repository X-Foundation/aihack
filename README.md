# aihack
Bug Squashers' project

1. Docker init
```shell
docker build -t aihack .
docker run -it --rm -v $PWD:/usr/src/aihack aihack --name aihack
```
2. Start Jupyter Notebook
```shell
jupyter-lab
```
3. Run evaluation code in evaluate.ipynb
```shell
loss, accuracy = model.evaluate(test_ds)
print("Accuracy", accuracy)
```
