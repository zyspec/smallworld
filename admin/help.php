<?php
/**
 * You may not change or alter any portion of this comment or credits
 * of supporting developers from this source code or any supporting source code
 * which is considered copyrighted (c) material of the original comment or credit authors.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * @copyright  :            {@link https://xoops.org 2001-2017 XOOPS Project}
 * @license    :                {@link http://www.fsf.org/copyleft/gpl.html GNU public license 2.0 or later}
 * @module     :                Smallworld
 * @Author     :                Michael Albertsen (http://culex.dk) <culex@culex.dk>
 * @copyright  :            2011 Culex
 * @Repository path:        $HeadURL: https://xoops.svn.sourceforge.net/svnroot/xoops/XoopsModules/smallworld/trunk/smallworld/admin/help.php $
 * @Last       committed:        $Revision: 9412 $
 * @Last       changed by:        $Author: beckmi $
 * @Last       changed date:    $Date: 2012-04-30 06:07:58 +0200 (ma, 30 apr 2012) $
 * @ID         :                    $Id: help.php 9412 2012-04-30 04:07:58Z beckmi $
 **/

require_once 'admin_header.php';
require_once '../../../include/cp_header.php';
include_once(XOOPS_ROOT_PATH . "/modules/smallworld/include/functions.php");
include_once(XOOPS_ROOT_PATH . "/modules/smallworld/class/class_collector.php");

require_once XOOPS_ROOT_PATH . '/class/template.php';
if (!isset($xoopsTpl)) {
    $xoopsTpl = new XoopsTpl();
}
$xoopsTpl->caching = 0;

xoops_cp_header();

$admin = new SmallworldAdmin();
$tpl   = new XoopsTpl();

// template assignments
$xoopsTpl->assign('lang_help', _AM_SMALLWORLD_HELP);

// help file from admin
$xoopsTpl->assign('lang_hlp_about', _AM_SMALLWORLD_HELP_ABOUT);
$xoopsTpl->assign('lang_hlp_preface', _AM_SMALLWORLD_HELP_PREFACE);
$xoopsTpl->assign('lang_hlp_requirements_t', _AM_SMALLWORLD_HELP_HEADER_REQUIREMENTS);
$xoopsTpl->assign('lang_hlp_requirements', _AM_SMALLWORLD_HELP_REQUIREMENTS);
$xoopsTpl->assign('lang_hlp_recommended_t', _AM_SMALLWORLD_HELP_HEADER_RECOMMENDED);
$xoopsTpl->assign('lang_hlp_recommended', _AM_SMALLWORLD_HELP_RECOMMENDED);
$xoopsTpl->assign('lang_hlp_installation_t', _AM_SMALLWORLD_HELP_HEADER_INSTALLATION);
$xoopsTpl->assign('lang_hlp_firsttime', _AM_SMALLWORLD_HELP_FIRSTTIMEINSTALL);
$xoopsTpl->assign('lang_hlp_hostedplatform_t', _AM_SMALLWORLD_HELP_HEADER_HOSTED_PLATFORM);
$xoopsTpl->assign('lang_hlp_hostedplatform', _AM_SMALLWORLD_HELP_HOSTED_PLATFORM);
$xoopsTpl->assign('lang_hlp_upgrading_t', _AM_SMALLWORLD_HELP_HEADER_UPGRADING);
$xoopsTpl->assign('lang_hlp_upgrading', _AM_SMALLWORLD_HELP_UPGRADING);
$xoopsTpl->assign('lang_hlp_faq_t', _AM_SMALLWORLD_HELP_HEADER_FAQ);
$xoopsTpl->assign('lang_hlp_commen1_t', _AM_SMALLWORLD_HELP_HEADER_COMMENPROBLEMS1);
$xoopsTpl->assign('lang_hlp_commen1', _AM_SMALLWORLD_HELP_COMMENPROBLEMS1);
$xoopsTpl->assign('lang_hlp_contacts_t', _AM_SMALLWORLD_HELP_HEADER_CONTACTS);
$xoopsTpl->assign('lang_hlp_otherhelp', _AM_SMALLWORLD_HELP_OTHERHELP);

$xoopsTpl->display(XOOPS_ROOT_PATH . '/modules/smallworld/templates/admin_help.html');

global $xoTheme;
$xoTheme->addStyleSheet('modules/smallworld/css/SmallworldAdmin.css');

xoops_cp_footer();
?>
