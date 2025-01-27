</style>
<!-- Main Sidebar Container -->
      <aside class="main-sidebar sidebar-dark-primary bg-gradient-dark text-light elevation-4 sidebar-no-expand">
        <!-- Brand Logo -->
        <a href="<?php echo base_url ?>admin" class="brand-link bg-gradient-primary text-sm text-light">
        <img src="<?php echo validate_image($_settings->info('logo'))?>" alt="Store Logo" class="brand-image img-circle elevation-3 bg-gradient-light" style="opacity: .8;width: 1.6rem;height: 1.6rem;max-height: unset">
        <span class="brand-text font-weight-light"><?php echo $_settings->info('short_name') ?></span>
        </a>
        <!-- Sidebar -->
        <div class="sidebar">
  <!-- Sidebar user panel (optional) -->
  <div class="user-panel mt-3 pb-3 mb-3 d-flex">
    <div class="info">
      <a href="#" class="d-block">Admin Panel</a>
    </div>
  </div>

  <!-- Sidebar Menu -->
  <nav class="mt-3">
    <ul class="nav nav-pills nav-sidebar flex-column text-sm nav-compact nav-flat nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
      <!-- Dashboard -->
      <li class="nav-item">
        <a href="./" class="nav-link nav-home">
          <i class="nav-icon fas fa-tachometer-alt"></i>
          <p>Dashboard</p>
        </a>
      </li>

      <!-- Facility List -->
      <li class="nav-item">
        <a href="<?php echo base_url ?>admin/?page=facilities" class="nav-link nav-facilities">
          <i class="nav-icon fas fa-door-closed"></i>
          <p>Facility List</p>
        </a>
      </li>

      <!-- Registered Clients -->
      <li class="nav-item">
        <a href="<?php echo base_url ?>admin/?page=clients" class="nav-link nav-clients">
          <i class="nav-icon fas fa-users"></i>
          <p>Registered Clients</p>
        </a>
      </li>

      <!-- Booking List -->
      <li class="nav-item">
        <a href="<?php echo base_url ?>admin/?page=bookings" class="nav-link nav-bookings">
          <i class="nav-icon fas fa-tasks"></i>
          <p>Booking List</p>
        </a>
      </li>

      <?php if ($_settings->userdata('type') == 1): ?>
      <!-- Maintenance Section -->
      <li class="nav-header">Maintenance</li>

      <!-- Category List -->
      <li class="nav-item">
        <a href="<?php echo base_url ?>admin/?page=categories" class="nav-link nav-categories">
          <i class="nav-icon fas fa-th-list"></i>
          <p>Category List</p>
        </a>
      </li>

      <!-- User List -->
      <li class="nav-item">
        <a href="<?php echo base_url ?>admin/?page=user/list" class="nav-link nav-user_list">
          <i class="nav-icon fas fa-users-cog"></i>
          <p>User List</p>
        </a>
      </li>

      <!-- Settings -->
      <li class="nav-item">
        <a href="<?php echo base_url ?>admin/?page=system_info" class="nav-link nav-system_info">
          <i class="nav-icon fas fa-cogs"></i>
          <p>Settings</p>
        </a>
      </li>
      <?php endif; ?>
    </ul>
  </nav>
  <!-- /.sidebar-menu -->
</div>
<!-- /.sidebar -->

      </aside>
      <script>
    $(document).ready(function(){
      var page = '<?php echo isset($_GET['page']) ? $_GET['page'] : 'home' ?>';
      var s = '<?php echo isset($_GET['s']) ? $_GET['s'] : '' ?>';
      page = page.replace('/',"_");
      if(s!='')
        page = page+'_'+s;

      if($('.nav-link.nav-'+page).length > 0){
             $('.nav-link.nav-'+page).addClass('active')
        if($('.nav-link.nav-'+page).hasClass('tree-item') == true){
            $('.nav-link.nav-'+page).closest('.nav-treeview').siblings('a').addClass('active')
          $('.nav-link.nav-'+page).closest('.nav-treeview').parent().addClass('menu-open')
        }
        if($('.nav-link.nav-'+page).hasClass('nav-is-tree') == true){
          $('.nav-link.nav-'+page).parent().addClass('menu-open')
        }

      }
     
    })
  </script>
