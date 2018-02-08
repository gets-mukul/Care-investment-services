<%
	String id = request.getSession().getAttribute("id").toString();
	String name = request.getSession().getAttribute("name").toString();
	String imageUrl = request.getSession().getAttribute("imageUrl").toString();
%>
<nav class="navbar-default navbar-static-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav metismenu" id="side-menu">
					<li class="nav-header">
						<div class="dropdown profile-element">
							<span> <img alt="image" class="img-circle"
								src="<%=imageUrl%>" />
							</span> <a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<span class="clear"> <span class="block m-t-xs"> <strong
										class="font-bold"><%=name%></strong>
								</span> <span class="text-muted text-xs block">Art Director <b
										class="caret"></b></span>
							</span>
							</a>
							<ul class="dropdown-menu animated fadeInRight m-t-xs">
								<li><a href="profile.html">Profile</a></li>
								<li><a href="contacts.html">Contacts</a></li>
								<li><a href="mailbox.html">Mailbox</a></li>
								<li class="divider"></li>
								<li><a href="logout">Logout</a></li>
							</ul>
						</div>
						<div class="logo-element">IN+</div>
					</li>
					<li><a href="/admin.jsp"><i class="fa fa-diamond"></i> <span
							class="nav-label">Dashboard</span></a></li>
					<li><a href="layouts.html"><i class="fa fa-database"></i> <span
							class="nav-label">Data Management</span></a></li>
					<li><a href="layouts.html"><i class="fa fa-envelope"></i> <span
							class="nav-label">Messanger</span></a></li>
					<li><a href="layouts.html"><i class="fa fa-user"></i> <span
							class="nav-label">Client Registration</span></a></li>
					<li><a href="layouts.html"><i class="fa fa-handshake-o"></i> <span
							class="nav-label">Accounting</span></a></li>
					<li><a href="layouts.html"><i class="fa fa-envelope-o"></i> <span
							class="nav-label">Mailbox</span></a></li>
					<li><a href="layouts.html"><i class="fa fa-folder"></i> <span
							class="nav-label">Employ Management System</span></a></li>
					<li><a href="contact.jsp"><i class="fa fa-address-book"></i> <span
							class="nav-label">Contact List</span></a></li>

				</ul>
			</div>
		</nav>