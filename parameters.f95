module parameters

    integer, parameter :: xsub = 2, ysub = 2, &
                          num_nodes = (xsub + 1)*(ysub + 1), &
                          ! Triangular elements
                          elem_nodes = 3, num_elem = 2*xsub*ysub, &
                          ! Only dof is node pressure
                          node_dof = 1, tot_dof = node_dof*num_nodes

    real, parameter    :: L = 1, B = 1, &
                          dL = L/xsub, dB = B/ysub, &
                          ! Reynolds equation parameters (axial bearing)
                          hx = 1.0, hy = 4*(L**2/B**2), lambda = 0.0, &
                          P_bound = 0, q = 1, &
                          ! H = Ha*x + Hb
                          Ha = -2, Hb = 3

    integer            :: i, j, k, n, ni, nj, n1, n2, n3
    real(8), parameter :: pi = 4*atan(1.0_8)

end module parameters
