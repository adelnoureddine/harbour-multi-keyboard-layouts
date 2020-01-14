# 
# Do NOT Edit the Auto-generated Part!
# Generated by: spectacle version 0.27
# 

Name:       harbour-multi-keyboard-layouts

# >> macros
# << macros

Summary:    Multi Keyboard Layouts
Version:    0.5.1
Release:    1
Group:      Qt/Qt
License:    LICENSE
URL:        http://example.org/
Source0:    %{name}-%{version}.tar.bz2
Source100:  harbour-multi-keyboard-layouts.yaml
Requires:   sailfishsilica-qt5 >= 0.10.9
Requires:   jolla-keyboard
BuildRequires:  pkgconfig(sailfishapp) >= 1.0.2
BuildRequires:  pkgconfig(Qt5Core)
BuildRequires:  pkgconfig(Qt5Qml)
BuildRequires:  pkgconfig(Qt5Quick)
BuildRequires:  desktop-file-utils

%description
Multiple additional keyboard layouts


%prep
%setup -q -n %{name}-%{version}

# >> setup
# << setup

%build
# >> build pre
# << build pre

%qmake5 

make %{?_smp_mflags}

# >> build post
# << build post

%install
rm -rf %{buildroot}
# >> install pre
# << install pre
%qmake5_install

# >> install post
# << install post

desktop-file-install --delete-original       \
  --dir %{buildroot}%{_datadir}/applications             \
   %{buildroot}%{_datadir}/applications/*.desktop

%post
# >> post
killall maliit-server
# << post

%postun
# >> postun
killall maliit-server
# << postun

%files
%defattr(-,root,root,-)
%{_bindir}
%{_datadir}/%{name}
%{_datadir}/applications/%{name}.desktop
%{_datadir}/icons/hicolor/*/apps/%{name}.png
%{_datadir}/maliit/plugins/com/jolla/layouts/layouts_sobek_enazerty.conf
%{_datadir}/maliit/plugins/com/jolla/layouts/layouts_sobek_ennazerty.conf
%{_datadir}/maliit/plugins/com/jolla/layouts/layouts_sobek_enn.conf
%{_datadir}/maliit/plugins/com/jolla/layouts/layouts_sobek_enn_me.conf
%{_datadir}/maliit/plugins/com/jolla/layouts/layouts_sobek_frn.conf
%{_datadir}/maliit/plugins/com/jolla/layouts/layouts_sobek_frn_me.conf
%{_datadir}/maliit/plugins/com/jolla/layouts/layouts_sobek_ennazerty_me.conf
%{_datadir}/maliit/plugins/com/jolla/layouts/layouts_sobek_arn_me.conf
%{_datadir}/maliit/plugins/com/jolla/layouts/layouts_sobek_den.conf
%{_datadir}/maliit/plugins/com/jolla/layouts/sobek_enazerty.qml
%{_datadir}/maliit/plugins/com/jolla/layouts/sobek_ennazerty.qml
%{_datadir}/maliit/plugins/com/jolla/layouts/sobek_enn.qml
%{_datadir}/maliit/plugins/com/jolla/layouts/sobek_enn_me.qml
%{_datadir}/maliit/plugins/com/jolla/layouts/sobek_frn.qml
%{_datadir}/maliit/plugins/com/jolla/layouts/sobek_frn_me.qml
%{_datadir}/maliit/plugins/com/jolla/layouts/sobek_ennazerty_me.qml
%{_datadir}/maliit/plugins/com/jolla/layouts/sobek_arn_me.qml
%{_datadir}/maliit/plugins/com/jolla/layouts/sobek_den.qml
# >> files
# << files
