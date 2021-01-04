#include <FC.h>
#include <dspaces.h>

#if defined(__cplusplus)
extern "C" {
#endif

void FC_GLOBAL(dspaces_init_f2c,
               DSPACES_INIT_F2C)(int *rank, dspaces_client_t *client, int *ierr)
{
    *ierr = dspaces_init(*rank, client);
}

void FC_GLOBAL(dspaces_fini_f2c, DSPACES_FINI_F2C)(dspaces_client_t *client,
                                                   int *ierr)
{
    *ierr = dspaces_fini(*client);
}

void FC_GLOBAL(dspaces_kill_f2c, DSPACES_KILL_F2C)(dspaces_client_t *client)
{
    dspaces_kill(*client);
}

void FC_GLOBAL(dspaces_get_f2c,
               DSPACES_GET_F2C)(dspaces_client_t *client, const char *name,
                                uint32_t *version, uint32_t *size,
                                uint32_t *ndim, uint64_t *lb, uint64_t *ub,
                                uint32_t *data, int *timeout, int *ierr)
{
    *ierr = dspaces_get(*client, name, *version, *size, *ndim, lb, ub, data,
                        *timeout);
}

void FC_GLOBAL(dspaces_put_f2c,
               DSPACES_PUT_F2C)(dspaces_client_t *client, const char *name,
                                uint32_t *version, uint32_t *size,
                                uint32_t *ndim, uint64_t *lb, uint64_t *ub,
                                float *data, int *ierr)
{
    *ierr = dspaces_put(*client, name, *version, *size, *ndim, lb, ub, data);
}

void FC_GLOBAL(dspaces_put_local_f2c,
               DSPACES_PUT_LOCAL_F2C)(dspaces_client_t *client,
                                      const char *name, uint32_t *version,
                                      uint32_t *size, uint32_t *ndim,
                                      uint64_t *lb, uint64_t *ub, float *data,
                                      int *ierr)
{
    *ierr =
        dspaces_put_local(*client, name, *version, *size, *ndim, lb, ub, data);
}

void FC_GLOBAL(dspaces_sub_f2c,
               DSPACES_SUB_F2C)(dspaces_client_t *client, const char *name,
                                uint32_t *version, uint32_t *size,
                                uint32_t *ndim, uint64_t *lb, uint64_t *ub,
                                dspaces_sub_fn cb, void *arg,
                                dspaces_sub_t *subh)
{
    *subh = dspaces_sub(*client, name, *version, *size, *ndim, lb, ub, cb, arg);
}

void FC_GLOBAL(dspaces_check_sub_f2c,
               DSPACES_CHECK_SUB_F2C)(dspaces_client_t *client,
                                      dspaces_sub_t *subh, uint32_t *wait,
                                      uint64_t *result, int *ierr)
{
    int res;

    *ierr = dspaces_check_sub(*client, *subh, *wait, &result);
    *result = *res;
}

void FC_GLOBAL(dspaces_cancel_sub_f2c,
               DSPACES_CANCEL_SUB_F2C)(dspaces_client_t *client,
                                       dspaces_sub_t *subh, int *ierr)
{
    *ierr = dspaces_cancel_sub(*client, *subh);
}

#if defined(__cplusplus)
}
#endif
