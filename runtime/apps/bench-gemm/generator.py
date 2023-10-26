import numpy as np

np.random.seed(2333)

ashape = [64512, 512]
bshape = [512, 512]

A = np.random.randn(*ashape).astype('f')
# B = np.random.randn(*bshape).astype('f')
B = np.eye(512).astype('f')

C = A @ B

def save_to(p, x):
    print(x.dtype, x.shape)
    with open(p, 'wb') as f:
        x.tofile(f)

# print(A)
# print(B)
# print(C)

save_to("A.dat", A)
save_to("B.dat", B)
save_to("C.dat", C)
