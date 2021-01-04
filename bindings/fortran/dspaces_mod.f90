module dspaces
    use iso_c_binding

    type dspaces_client
        type(c_ptr) :: client
    end type

    ! uh-oh
    type dspaces_req
        type(

    interface dspaces_get
       module procedure dspaces_get_1d_i4
       module procedure dspaces_get_1d_i8
       module procedure dspaces_get_1d_r4
       module procedure dspaces_get_1d_r8
       module procedure dspaces_get_2d_i4
       module procedure dspaces_get_2d_i8
       module procedure dspaces_get_2d_r4
       module procedure dspaces_get_2d_r8
       module procedure dspaces_get_3d_i4
       module procedure dspaces_get_3d_i8
       module procedure dspaces_get_3d_r4
       module procedure dspaces_get_3d_r8
       module procedure dspaces_get_4d_i4
       module procedure dspaces_get_4d_i8
       module procedure dspaces_get_4d_r4
       module procedure dspaces_get_4d_r8
       module procedure dspaces_get_5d_i4
       module procedure dspaces_get_5d_i8
       module procedure dspaces_get_5d_r4
       module procedure dspaces_get_5d_r8
    end interface

    interface dspaces_put
        module procedure dspaces_put_1d_i4
        module procedure dspaces_put_1d_i8
        module procedure dspaces_put_1d_r4
        module procedure dspaces_put_1d_r8
        module procedure dspaces_put_2d_i4
        module procedure dspaces_put_2d_i8
        module procedure dspaces_put_2d_r4
        module procedure dspaces_put_2d_r8
        module procedure dspaces_put_3d_i4
        module procedure dspaces_put_3d_i8
        module procedure dspaces_put_3d_r4
        module procedure dspaces_put_3d_r8
        module procedure dspaces_put_4d_i4
        module procedure dspaces_put_4d_i8
        module procedure dspaces_put_4d_r4
        module procedure dspaces_put_4d_r8
        module procedure dspaces_put_5d_i4
        module procedure dspaces_put_5d_i8
        module procedure dspaces_put_5d_r4
        module procedure dspaces_put_5d_r8
    end interface

    interface dspaces_put_local
        module procedure dspaces_put_local_1d_i4
        module procedure dspaces_put_local_1d_i8
        module procedure dspaces_put_local_1d_r4
        module procedure dspaces_put_local_1d_r8
        module procedure dspaces_put_local_2d_i4
        module procedure dspaces_put_local_2d_i8
        module procedure dspaces_put_local_2d_r4
        module procedure dspaces_put_local_2d_r8
        module procedure dspaces_put_local_3d_i4
        module procedure dspaces_put_local_3d_i8
        module procedure dspaces_put_local_3d_r4
        module procedure dspaces_put_local_3d_r8
        module procedure dspaces_put_local_4d_i4
        module procedure dspaces_put_local_4d_i8
        module procedure dspaces_put_local_4d_r4
        module procedure dspaces_put_local_4d_r8
        module procedure dspaces_put_local_5d_i4
        module procedure dspaces_put_local_5d_i8
        module procedure dspaces_put_local_5d_r4
        module procedure dspaces_put_local_5d_r8
    end interface

    abstract interface
        function dspaces_sub_fn(client, 

contains
    subroutine dspaces_init( rank, client, ierr)
        integer, intent(in) :: rank
        type(dspaces_client), intent(out) :: client
        integer, intent(out) :: ierr
       
        call dspaces_init_f2c(rank, client%client, ierr)
    end subroutine

    subroutine dspaces_fini( client, ierr)
        type(dspaces_client), intent(in) :: client
        integer, intent(out) :: ierr

        call dspaces_fini_f2c(client%client, ierr)
    end subroutine

    subroutine dspaces_kill( client)
        type(dspaces_client), intent(in) :: client

        call dspaces_kill_f2c(client%client)
    end subroutine

    subroutine dspaces_get_1d_i4( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), intent(in) :: lb, ub
        integer(kind=4), dimension(:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 4_4, 1_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_1d_i8( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), intent(in) :: lb, ub
        integer(kind=8), dimension(:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 8_4, 1_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_1d_r4( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), intent(in) :: lb, ub
        real(kind=4), dimension(:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 4_4, 1_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_1d_r8( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), intent(in) :: lb, ub
        real(kind=8), dimension(:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 8_4, 1_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_2d_i4( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(2), intent(in) :: lb, ub
        integer(kind=4), dimension(:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 4_4, 2_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_2d_i8( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(2), intent(in) :: lb, ub
        integer(kind=8), dimension(:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 8_4, 2_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_2d_r4( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(2), intent(in) :: lb, ub
        real(kind=4), dimension(:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 4_4, 2_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_2d_r8( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(2), intent(in) :: lb, ub
        real(kind=8), dimension(:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 8_4, 2_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_3d_i4( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(3), intent(in) :: lb, ub
        integer(kind=4), dimension(:,:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 4_4, 3_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_3d_i8( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(3), intent(in) :: lb, ub
        integer(kind=8), dimension(:,:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 8_4, 3_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_3d_r4( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(3), intent(in) :: lb, ub
        real(kind=4), dimension(:,:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 4_4, 3_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_3d_r8( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(3), intent(in) :: lb, ub
        real(kind=8), dimension(:,:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 8_4, 3_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_4d_i4( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(4), intent(in) :: lb, ub
        integer(kind=4), dimension(:,:,:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 4_4, 4_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_4d_i8( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(4), intent(in) :: lb, ub
        integer(kind=8), dimension(:,:,:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 8_4, 4_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_4d_r4( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(4), intent(in) :: lb, ub
        real(kind=4), dimension(:,:,:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 4_4, 4_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_4d_r8( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(4), intent(in) :: lb, ub
        real(kind=8), dimension(:,:,:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 8_4, 4_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_5d_i4( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(5), intent(in) :: lb, ub
        integer(kind=4), dimension(:,:,:,:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 4_4, 5_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_5d_i8( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(5), intent(in) :: lb, ub
        integer(kind=8), dimension(:,:,:,:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 8_4, 5_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_5d_r4( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(5), intent(in) :: lb, ub
        real(kind=4), dimension(:,:,:,:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 4_4, 5_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_get_5d_r8( client, name, version, lb, ub, data, timeout, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(5), intent(in) :: lb, ub
        real(kind=8), dimension(:,:,:,:,:), intent(out) :: data
        integer, intent(in) :: timeout
        integer, intent(out) :: ierr

        call dspaces_get_f2c(client%client, name, version, 8_4, 5_4, lb, ub, data, timeout, ierr)
    end subroutine

    subroutine dspaces_put_1d_i4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), intent(in) :: lb, ub
        integer(kind=4), dimension(:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 4_4, 1_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_1d_i8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), intent(in) :: lb, ub
        integer(kind=8), dimension(:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 8_4, 1_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_1d_r4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), intent(in) :: lb, ub
        real(kind=4), dimension(:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 4_4, 1_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_1d_r8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), intent(in) :: lb, ub
        real(kind=8), dimension(:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 8_4, 1_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_2d_i4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(2), intent(in) :: lb, ub
        integer(kind=4), dimension(:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 4_4, 2_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_2d_i8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(2), intent(in) :: lb, ub
        integer(kind=8), dimension(:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 8_4, 2_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_2d_r4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(2), intent(in) :: lb, ub
        real(kind=4), dimension(:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 4_4, 2_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_2d_r8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(2), intent(in) :: lb, ub
        real(kind=8), dimension(:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 8_4, 2_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_3d_i4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(3), intent(in) :: lb, ub
        integer(kind=4), dimension(:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 4_4, 3_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_3d_i8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(3), intent(in) :: lb, ub
        integer(kind=8), dimension(:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 8_4, 3_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_3d_r4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(3), intent(in) :: lb, ub
        real(kind=4), dimension(:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 4_4, 3_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_3d_r8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(3), intent(in) :: lb, ub
        real(kind=8), dimension(:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 8_4, 3_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_4d_i4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(4), intent(in) :: lb, ub
        integer(kind=4), dimension(:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 4_4, 4_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_4d_i8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(4), intent(in) :: lb, ub
        integer(kind=8), dimension(:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 8_4, 4_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_4d_r4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(4), intent(in) :: lb, ub
        real(kind=4), dimension(:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 4_4, 4_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_4d_r8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(4), intent(in) :: lb, ub
        real(kind=8), dimension(:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 8_4, 4_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_5d_i4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(5), intent(in) :: lb, ub
        integer(kind=4), dimension(:,:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 4_4, 5_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_5d_i8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(5), intent(in) :: lb, ub
        integer(kind=8), dimension(:,:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 8_4, 5_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_5d_r4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(5), intent(in) :: lb, ub
        real(kind=4), dimension(:,:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 4_4, 5_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_5d_r8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(5), intent(in) :: lb, ub
        real(kind=8), dimension(:,:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_f2c( client%client, name, version, 8_4, 5_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_1d_i4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), intent(in) :: lb, ub
        integer(kind=4), dimension(:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 4_4, 1_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_1d_i8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), intent(in) :: lb, ub
        integer(kind=8), dimension(:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 8_4, 1_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_1d_r4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), intent(in) :: lb, ub
        real(kind=4), dimension(:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 4_4, 1_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_1d_r8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), intent(in) :: lb, ub
        real(kind=8), dimension(:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 8_4, 1_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_2d_i4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(2), intent(in) :: lb, ub
        integer(kind=4), dimension(:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 4_4, 2_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_2d_i8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(2), intent(in) :: lb, ub
        integer(kind=8), dimension(:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 8_4, 2_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_2d_r4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(2), intent(in) :: lb, ub
        real(kind=4), dimension(:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 4_4, 2_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_2d_r8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(2), intent(in) :: lb, ub
        real(kind=8), dimension(:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 8_4, 2_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_3d_i4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(3), intent(in) :: lb, ub
        integer(kind=4), dimension(:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 4_4, 3_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_3d_i8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(3), intent(in) :: lb, ub
        integer(kind=8), dimension(:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 8_4, 3_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_3d_r4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(3), intent(in) :: lb, ub
        real(kind=4), dimension(:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 4_4, 3_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_3d_r8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(3), intent(in) :: lb, ub
        real(kind=8), dimension(:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 8_4, 3_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_4d_i4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(4), intent(in) :: lb, ub
        integer(kind=4), dimension(:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 4_4, 4_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_4d_i8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(4), intent(in) :: lb, ub
        integer(kind=8), dimension(:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 8_4, 4_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_4d_r4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(4), intent(in) :: lb, ub
        real(kind=4), dimension(:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 4_4, 4_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_4d_r8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(4), intent(in) :: lb, ub
        real(kind=8), dimension(:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 8_4, 4_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_5d_i4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(5), intent(in) :: lb, ub
        integer(kind=4), dimension(:,:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 4_4, 5_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_5d_i8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(5), intent(in) :: lb, ub
        integer(kind=8), dimension(:,:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 8_4, 5_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_5d_r4( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(5), intent(in) :: lb, ub
        real(kind=4), dimension(:,:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 4_4, 5_4, lb, ub, data, ierr)
    end subroutine

    subroutine dspaces_put_local_5d_r8( client, name, version, lb, ub, data, ierr)
        type(dspaces_client), intent(in) :: client
        character*(*), intent(in) :: name
        integer(kind=4), intent(in) :: version
        integer(kind=8), dimension(5), intent(in) :: lb, ub
        real(kind=8), dimension(:,:,:,:,:), intent(out) :: data
        integer, intent(out) :: ierr

        call dspaces_put_local_f2c( client%client, name, version, 8_4, 5_4, lb, ub, data, ierr)
    end subroutine

end module dspaces
