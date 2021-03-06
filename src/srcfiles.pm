use vars qw/@cfiles @hfiles/;

@cfiles = qw/
.\concord\concord2.c
.\concord\versioninfo.c
.\dat2site\dat2site.c
.\dat2site\versioninfo.c
.\listgps\listgps.c
.\listgps\versioninfo.c
.\snap\adjparam.c
.\snap\bindata2.c
.\snap\bltmatrx.c
.\snap\coefs.c
.\snap\control.c
.\snap\cvrfile.c
.\snap\deform.c
.\snap\leastsqu.c
.\snap\loadsnap.c
.\snap\lsobseq.c
.\snap\main.c
.\snap\notedata.c
.\snap\obsdata.c
.\snap\output.c
.\snap\pntdata.c
.\snap\relerror.c
.\snap\reorder.c
.\snap\residual.c
.\snap\ressumry.c
.\snap\rftrnadj.c
.\snap\snapmain.c
.\snap\sortobs.c
.\snap\stnobseq.c
.\snap\testspec.c
.\snap\vecdata.c
.\snap\version.c
.\snap\versioninfo.c
.\snapconv\snapconv.c
.\snapconv\versioninfo.c
.\snapgeoid\sngeoid.c
.\snapgeoid\versioninfo.c
.\snaplib\coordsys\crdsysc0.c
.\snaplib\coordsys\crdsysc1.c
.\snaplib\coordsys\crdsysc2.c
.\snaplib\coordsys\crdsysc3.c
.\snaplib\coordsys\crdsysc4.c
.\snaplib\coordsys\crdsysd0.c
.\snaplib\coordsys\crdsysd1.c
.\snaplib\coordsys\crdsyse0.c
.\snaplib\coordsys\crdsyse1.c
.\snaplib\coordsys\crdsyse2.c
.\snaplib\coordsys\crdsyse3.c
.\snaplib\coordsys\crdsysf1.c
.\snaplib\coordsys\crdsysfl.c
.\snaplib\coordsys\crdsysi0.c
.\snaplib\coordsys\crdsysi1.c
.\snaplib\coordsys\crdsysi2.c
.\snaplib\coordsys\crdsysi3.c
.\snaplib\coordsys\crdsysi4.c
.\snaplib\coordsys\crdsysp0.c
.\snaplib\coordsys\crdsysp1.c
.\snaplib\coordsys\crdsysp2.c
.\snaplib\coordsys\crdsysp3.c
.\snaplib\coordsys\crdsysp4.c
.\snaplib\coordsys\crdsyspj.c
.\snaplib\coordsys\crdsysr0.c
.\snaplib\coordsys\crdsysr1.c
.\snaplib\coordsys\crdsysr2.c
.\snaplib\coordsys\crdsysr3.c
.\snaplib\coordsys\crdsysr4.c
.\snaplib\coordsys\crdsysr5.c
.\snaplib\coordsys\emproj.c
.\snaplib\coordsys\emprojr.c
.\snaplib\coordsys\gnproj.c
.\snaplib\coordsys\gnprojr.c
.\snaplib\coordsys\isometrc.c
.\snaplib\coordsys\lambert.c
.\snaplib\coordsys\lambertr.c
.\snaplib\coordsys\nzmg.c
.\snaplib\coordsys\nzmgr.c
.\snaplib\coordsys\paramdef.c
.\snaplib\coordsys\psproj.c
.\snaplib\coordsys\psprojr.c
.\snaplib\coordsys\tmproj.c
.\snaplib\coordsys\tmprojr.c
.\snaplib\geoid\geoid.c
.\snaplib\geoid\griddata.c
.\snaplib\geoid\griddata2.c
.\snaplib\network\netcalcs.c
.\snaplib\network\netlist.c
.\snaplib\network\netlist1.c
.\snaplib\network\netstns.c
.\snaplib\network\netstns1.c
.\snaplib\network\network.c
.\snaplib\network\networkb.c
.\snaplib\network\networkd.c
.\snaplib\network\networkm.c
.\snaplib\network\networkr.c
.\snaplib\network\networks.c
.\snaplib\network\networkt.c
.\snaplib\network\networkw.c
.\snaplib\snap\bearing.c
.\snaplib\snap\bindata.c
.\snaplib\snap\cfgprocs.c
.\snaplib\snap\classify.c
.\snaplib\snap\datastat.c
.\snaplib\snap\genparam.c
.\snaplib\snap\gpscvr2.c
.\snaplib\snap\rftrans.c
.\snaplib\snap\rftrndmp.c
.\snaplib\snap\snapglob.c
.\snaplib\snap\stnadj.c
.\snaplib\snap\survfile.c
.\snaplib\snap\survfilr.c
.\snaplib\snapdata\datatype.c
.\snaplib\snapdata\geoddata.c
.\snaplib\snapdata\gpscvr.c
.\snaplib\snapdata\loaddata.c
.\snaplib\snapdata\snapdata.c
.\snaplib\util\avltree.c
.\snaplib\util\binfile.c
.\snaplib\util\chkallcx.c
.\snaplib\util\chkalloc.c
.\snaplib\util\datafile.c
.\snaplib\util\dms.c
.\snaplib\util\dstring.c
.\snaplib\util\errdef.c
.\snaplib\util\fileutil.c
.\snaplib\util\geodetic.c
.\snaplib\util\get_date.c
.\snaplib\util\iostring.c
.\snaplib\util\julian.c
.\snaplib\util\license.c
.\snaplib\util\linklist.c
.\snaplib\util\probfunc.c
.\snaplib\util\progress.c
.\snaplib\util\readcfg.c
.\snaplib\util\strarray.c
.\snaplib\util\symmatrx.c
.\snaplib\util\xprintf.c
.\snapmerge\snapmerge.c
.\snapmerge\versioninfo.c
.\snapplot\backgrnd.c
.\snapplot\dxfplot.c
.\snapplot\loadplot.c
.\snapplot\plotbin.c
.\snapplot\plotcmd.c
.\snapplot\plotconn.c
.\snapplot\plotfunc.c
.\snapplot\plotscal.c
.\snapplot\plotstns.c
.\snapplot\snapplot_load.c
.\snapplot\trimmer.c
.\snapspec\dbl4_adc_sdc.c
.\snapspec\dbl4_interface.c
.\snapspec\snapspec.c
.\snapspec\versioninfo.c
.\snapadjust\snapadjust_app.cpp
.\snapplot\ctrl_station_selector.cpp
.\snapplot\dlg_error_options.cpp
.\snapplot\dlg_findstation.cpp
.\snapplot\dlg_obs_highlight.cpp
.\snapplot\dlg_obs_list_options.cpp
.\snapplot\dlg_obs_options.cpp
.\snapplot\dlg_pen_options.cpp
.\snapplot\dlg_station_highlight.cpp
.\snapplot\snapplot_app.cpp
.\snapplot\snapplot_detailsview.cpp
.\snapplot\snapplot_dragger.cpp
.\snapplot\snapplot_event.cpp
.\snapplot\snapplot_frame.cpp
.\snapplot\snapplot_layers.cpp
.\snapplot\snapplot_loadlog.cpp
.\snapplot\snapplot_map.cpp
.\snapplot\snapplot_mapprinter.cpp
.\snapplot\snapplot_mapview.cpp
.\snapplot\snapplot_obslist.cpp
.\snapplot\snapplot_stationlist.cpp
.\snapplot\snapplot_util.cpp
.\snapplot\versioninfo.cpp
.\snap_manager\script.cpp
.\snap_manager\scriptimp.cpp
.\snap_manager\scriptimp_dialog.cpp
.\snap_manager\scriptimp_parse.cpp
.\snap_manager\snapjob.cpp
.\snap_manager\snap_manager.cpp
.\snap_manager\snap_scriptenv.cpp
.\snap_manager\versioninfo.cpp
.\wxutils\wxhelpabout.cpp
.\wxutils\wxlayerkey.cpp
.\wxutils\wxmainprogwindow.cpp
.\wxutils\wxmap.cpp
.\wxutils\wxmapdc.cpp
.\wxutils\wxmapdrawer.cpp
.\wxutils\wxmapscale.cpp
.\wxutils\wxmapwindow.cpp
.\wxutils\wxnumbervalidator.cpp
.\wxutils\wxpalettepopup.cpp
.\wxutils\wxsimpledialog.cpp
.\wxutils\wxsplashimage.cpp
.\wxutils\wxsymbology.cpp
.\wxutils\wxtabbedtextgrid.cpp
/;

@hfiles=qw/
.\snap\adjparam.h
.\snap\bindata2.h
.\snap\bltmatrx.h
.\snap\coefs.h
.\snap\control.h
.\snap\cvrfile.h
.\snap\deform.h
.\snap\leastsqu.h
.\snap\loadsnap.h
.\snap\lsobseq.h
.\snap\notedata.h
.\snap\obsdata.h
.\snap\output.h
.\snap\pntdata.h
.\snap\relerror.h
.\snap\reorder.h
.\snap\residual.h
.\snap\ressumry.h
.\snap\rftrnadj.h
.\snap\snapmain.h
.\snap\sortobs.h
.\snap\stnobseq.h
.\snap\testspec.h
.\snap\vecdata.h
.\snap\version.h
.\snaplib\coordsys\coordsys.h
.\snaplib\coordsys\crdsysdf.h
.\snaplib\coordsys\crdsysi0.h
.\snaplib\coordsys\crdsyspj.h
.\snaplib\coordsys\crdsysr5.h
.\snaplib\coordsys\crdsysrw.h
.\snaplib\coordsys\emproj.h
.\snaplib\coordsys\emprojr.h
.\snaplib\coordsys\gnproj.h
.\snaplib\coordsys\gnprojr.h
.\snaplib\coordsys\isometrc.h
.\snaplib\coordsys\lambert.h
.\snaplib\coordsys\lambertr.h
.\snaplib\coordsys\nzmg.h
.\snaplib\coordsys\nzmgr.h
.\snaplib\coordsys\paramdef.h
.\snaplib\coordsys\psproj.h
.\snaplib\coordsys\psprojr.h
.\snaplib\coordsys\tmproj.h
.\snaplib\coordsys\tmprojr.h
.\snaplib\geoid\geoid.h
.\snaplib\geoid\griddata.h
.\snaplib\geoid\griddata2.h
.\snaplib\network\network.h
.\snaplib\network\networkb.h
.\snaplib\snap\bearing.h
.\snaplib\snap\bindata.h
.\snaplib\snap\cfgprocs.h
.\snaplib\snap\classify.h
.\snaplib\snap\datastat.h
.\snaplib\snap\genparam.h
.\snaplib\snap\gpscvr2.h
.\snaplib\snap\rftrans.h
.\snaplib\snap\rftrndmp.h
.\snaplib\snap\snapglob.h
.\snaplib\snap\stnadj.h
.\snaplib\snap\survfile.h
.\snaplib\snap\survfilr.h
.\snaplib\snapconfig.h
.\snaplib\snapdata\datatype.h
.\snaplib\snapdata\geoddata.h
.\snaplib\snapdata\gpscvr.h
.\snaplib\snapdata\loaddata.h
.\snaplib\snapdata\snapdata.h
.\snaplib\snapdata\survdata.h
.\snaplib\util\avltree.h
.\snaplib\util\binfile.h
.\snaplib\util\chkalloc.h
.\snaplib\util\datafile.h
.\snaplib\util\dms.h
.\snaplib\util\dstring.h
.\snaplib\util\errdef.h
.\snaplib\util\fileutil.h
.\snaplib\util\geodetic.h
.\snaplib\util\get_date.h
.\snaplib\util\iostring.h
.\snaplib\util\julian.h
.\snaplib\util\license.h
.\snaplib\util\linklist.h
.\snaplib\util\pi.h
.\snaplib\util\probfunc.h
.\snaplib\util\progress.h
.\snaplib\util\readcfg.h
.\snaplib\util\strarray.h
.\snaplib\util\symmatrx.h
.\snaplib\util\versioninfo.h
.\snaplib\util\xprintf.h
.\snapplot\backgrnd.h
.\snapplot\dxfplot.h
.\snapplot\errordlg.h
.\snapplot\infowin.h
.\snapplot\loadplot.h
.\snapplot\plotbin.h
.\snapplot\plotcmd.h
.\snapplot\plotconn.h
.\snapplot\plotfunc.h
.\snapplot\plotpens.h
.\snapplot\plotscal.h
.\snapplot\plotstns.h
.\snapplot\resource.h
.\snapplot\scrnplot.h
.\snapplot\snapkey.h
.\snapplot\snapplot_load.h
.\snapplot\snapplot_main.h
.\snapplot\snapplot_util.h
.\snapplot\stnszdlg.h
.\snapplot\trimmer.h
.\snapspec\dbl4_adc_sdc.h
.\snapspec\dbl4_types.h
.\snapspec\dbl4_utl_alloc.h
.\snapspec\dbl4_utl_error.h
.\snapspec\dbl4_utl_progress.h
.\snapspec\dbl4_utl_trace.h
.\snapspec\dbl4_utl_yield.h
.\snapspec\mi.h
.\snapplot\ctrl_station_selector.hpp
.\snapplot\dlg_error_options.hpp
.\snapplot\dlg_findstation.hpp
.\snapplot\dlg_obs_highlight.hpp
.\snapplot\dlg_obs_list_options.hpp
.\snapplot\dlg_obs_options.hpp
.\snapplot\dlg_pen_options.hpp
.\snapplot\dlg_station_highlight.hpp
.\snapplot\snapplot_app.hpp
.\snapplot\snapplot_detailsview.hpp
.\snapplot\snapplot_dragger.hpp
.\snapplot\snapplot_event.hpp
.\snapplot\snapplot_eventids.hpp
.\snapplot\snapplot_frame.hpp
.\snapplot\snapplot_help.hpp
.\snapplot\snapplot_layers.hpp
.\snapplot\snapplot_loadlog.hpp
.\snapplot\snapplot_map.hpp
.\snapplot\snapplot_mapprinter.hpp
.\snapplot\snapplot_mapview.hpp
.\snapplot\snapplot_obslist.hpp
.\snapplot\snapplot_stationlist.hpp
.\snapplot\snapplot_util.hpp
.\snap_manager\script.hpp
.\snap_manager\scriptimp.hpp
.\snap_manager\snapjob.hpp
.\snap_manager\snap_scriptenv.hpp
.\wxutils\mapdefs.hpp
.\wxutils\wxhelpabout.hpp
.\wxutils\wxlayerkey.hpp
.\wxutils\wxmainprogwindow.hpp
.\wxutils\wxmap.hpp
.\wxutils\wxmapdc.hpp
.\wxutils\wxmapdrawer.hpp
.\wxutils\wxmapscale.hpp
.\wxutils\wxmapwindow.hpp
.\wxutils\wxnumbervalidator.hpp
.\wxutils\wxpalettepopup.hpp
.\wxutils\wxsimpledialog.hpp
.\wxutils\wxsimpleevent.hpp
.\wxutils\wxsplashimage.hpp
.\wxutils\wxsymbology.hpp
.\wxutils\wxtabbedtextgrid.hpp
.\wxutils\wx_includes.hpp
/;

1;
