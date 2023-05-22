import datetime
import numpy as np


def main():
    try:
        # Getting the current time upto seconds only.
        cur_time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        print('Current Time : ',cur_time)
        l = np.asarray([1,2,3])
        print(type(l))
    except:
        print('Something Wrong in main function',exc_info=True)

if __name__=='__main__':
    main()