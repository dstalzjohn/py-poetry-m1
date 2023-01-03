import tensorflow as tf


if __name__ == '__main__':
    if tf.test.is_gpu_available():
        print("GPU enabled")
    else:
        print("No GPU found")
