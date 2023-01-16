import tensorflow as tf


if __name__ == '__main__':
    if tf.config.list_physical_devices('GPU'):
        print("GPU enabled")
    else:
        print("No GPU found")
