cdef extern from "stdlib.h" nogil:
    void *memmove(void *str1, void *str2, size_t n)
    
cdef extern from "standalone_image.h":
    ctypedef struct color_image_t:    
        int width
        int height
        float *c1		# R 
        float *c2		# G
        float *c3		# B  

    cdef color_image_t* color_image_new(int width, int height)
    cdef void color_image_delete(color_image_t *image)

cdef extern from "gist.h":
    cdef float* color_gist_scaletab(color_image_t* src, int nblocks, int n_scale, int* n_orientations)
    cdef void free_desc(float *d)

