<{if $xoops_isuser}>
<{if $check >= 2}>
<ul id="smallworld_menu" class="smallworld_menu">
    <li class="active"><a href="<{$xoops_url}>/modules/smallworld/friends.php?username=<{$username}>"><{$username}> - <{$smarty.const._SMALLWORLD_FRIENDPAGE}></a></li>
</ul>

<{else}>
<div id="smallworld_notyetregistered" title="<{$smarty.const._SMALLWORLD_NOTYETREGISTERED_TITLE}>">
    <table class="smallworld_table bnone" cellspacing="0" cellpadding="0">
        <tr>
            <label for="register"></label>
            <td><p id="smallworld_notyetusercontent"><{$notyetusercontent}></p></td>
        </tr>
    </table>
</div>
<{/if}>

<{if $check >= 2}>
<div id="example1" class="smallworld_content">
    <table class="smallworld_biotable">
        <tr>
            <td>
                <{$avatar}>
                <{if $username == $myusername}>
                <div class="UploadNewAvatar" id="<{$ownerofpage}>" style="display:none">
                    <div id="smallworld_avatarupload">
                        <span><{$smarty.const._SMALLWORLD_UPLOADFILEBUTTONTEXT}></span>
                    </div>
                    <span id="smallworld_avatarstatus"></span>
                    <ul id="smallworld_avatarfiles"></ul>
                </div>
                <{else}>
                <div class="UploadNewAvatar" id="<{$ownerofpage}>" style="display:none">
                    <div id="smallworld_avatarupload">

                    </div>
                    <span id="smallworld_avatarstatus"></span>
                    <ul id="smallworld_avatarfiles"></ul>
                </div>
                <{/if}>
                <div class="smallworld_userstat_menu">
                    <h1><{$username}></h1>
                    <div style="text-align: center;"><{$rankimage}></div>
                    <br>
                    <div style="text-align: center;"><{$smarty.const._SMALLWORLD_TOTALPOSTS}>
                        <{$totalposts}>
                    </div>
                    <br><br>
                    <h1><{$smarty.const._SMALLWORLD_TOTALUSERRATINGS}></h1>
                    <p class="smallworld_rating_menu"><{$usersratinf}></p>
                </div>
                <br>

                <{if $username == $myusername}>
                <br>
                <p class="smallworld_useredits_menu">
                    <img height="10px" width="10px" src="<{$xoops_url}>/modules/smallworld/assets/images/editavatar.png">
                    <a href="javascript:void(0);" id="smallworld_changeAvatar"><{$smarty.const._SMALLWORLD_CHANGEAVATAR}></a><br>
                    <img height="10px" width="10px" src="<{$xoops_url}>/modules/smallworld/assets/images/edituserprofile.png">
                    <a href="editprofile.php" id="smallworld_changeEditProfile"><{$smarty.const._SMALLWORLD_EDITPROFILE}></a><br>
                    <img height="10px" width="10px" src="<{$xoops_url}>/modules/smallworld/assets/images/preferences.png">
                    <a href="javascript:void(0);" id="smallworld_changePersSettings"><{$smarty.const._SMALLWORLD_MENU_PRIVSET}></a>
                    <br>
                </p>
                <{/if}>
                <{if $friendID != $myUid}>
                <br>
                <{if $sendxim == 'YES'}>
                <{$menu_xim}>
                <{/if}>
                <{/if}>
                <br>
                <p class="smallworld_useredits_menu">
                    <img width="10px" height="10px" src="<{$xoops_url}>/modules/smallworld/assets/images/statistics.png">
                    <a href="javascript:void(0);" id="smallworld_statistics_lnk"><{$smarty.const._SMALLWORLD_STATS}></a><br>
                </p>
                <br>
            </td>
            <td>
                <ul class="smallworld_index_headmenu">
                    <li><{$menu_home}></li>
                    <li><{$menu_profile}></li>
                    <{if $isuserafriend == 'yes'}>
                    <li><{$menu_friends}></li>
                    <li><{$menu_gallery}></li>
                    <{/if}>
                </ul>
                <br>
                <br>
                <{if $isuserafriend == 'yes'}>
                <br><br>
                <div id="smallworld_content">
                    <{if $isadminuser == 'YES' or $username == $myusername}>
                    <div id="smallworld_friends_container">
                        <div class="smallworld_friends_pending">
                            <h1><{$username}><{$smarty.const._SMALLWORLD_PENDINGUSERS}></h1>
                            <{section name=i loop=$pendingfriends}>
                            <div class="smallworld_friends_body">
                                <div class="smallworld_friendpageimg">
                                    <img src="<{$pendingfriends[i].avatar_link}>" class="smallworld_small_face" <{$pendingfriends[i].avatar_highwide}>>
                                </div>
                                <div class="Friends_holder">
                                    <a class="Friends_links" href="<{$xoops_url}>/modules/smallworld/userprofile.php?username=<{$pendingfriends[i].friendname}>">
                                        <b><{$pendingfriends[i].friendname}></b>
                                    </a>
                                </div>
                            </div>
                            <{/section}>
                            <{if $pendingfriends == ''}>
                            <{$nouserspending}>
                            <{/if}>
                        </div>
                    </div>
                    <{/if}>

                    <div id="smallworld_friends_container">
                        <div class="smallworld_friends_isfriends">
                            <h1><{$username}><{$smarty.const._SMALLWORLD_ALREADYFRIENDS}></h1>
                            <{section name=i loop=$verifiedfriends}>
                            <div class="smallworld_friends_body">
                                <div class="smallworld_friendpageimg">
                                    <img src="<{$verifiedfriends[i].avatar_link}>" class="smallworld_small_face" <{$verifiedfriends[i].avatar_highwide}>>
                                </div>
                                <div class="Friends_holder">
                                    <a class="Friends_links" href="<{$xoops_url}>/modules/smallworld/userprofile.php?username=<{$verifiedfriends[i].friendname}>">
                                        <b><{$verifiedfriends[i].friendname}></b>
                                    </a>
                                </div>
                            </div>
                            <{/section}>
                            <{if $verifiedfriends == ''}>
                            <{$nousersfriends}>
                            <{/if}>
                        </div>
                    </div>

                    <div id="smallworld_friends_container">
                        <div class="smallworld_friends_following">
                            <h1><{$username}><{$smarty.const._SMALLWORLD_YOUFOLLOW}></h1>
                            <{section name=i loop=$followingyou}>
                            <div class="smallworld_friends_body">
                                <div class="smallworld_friendpageimg">
                                    <img src="<{$followingyou[i].avatar_link}>" class="smallworld_small_face" <{$followingyou[i].avatar_highwide}>>
                                </div>
                                <div class="Friends_holder">
                                    <a class="Friends_links" href="<{$xoops_url}>/modules/smallworld/userprofile.php?username=<{$followingyou[i].friendname}>">
                                        <b><{$followingyou[i].friendname}></b>
                                    </a>
                                </div>
                            </div>
                            <{/section}>
                            <{if $followingyou == ''}>
                            <{$nousersfollowingyou}>
                            <{/if}>
                        </div>
                    </div>

                    <{if $isadminuser == 'YES' or $username == $myusername}>
                    <div id="smallworld_friends_container">
                        <div class="smallworld_friends_followingme">
                            <h1><{$smarty.const._SMALLWORLD_FOLLOWINGYOU}><{$username}></h1>
                            <{section name=i loop=$followingme}>
                            <div class="smallworld_friends_body">
                                <div class="smallworld_friendpageimg">
                                    <img src="<{$followingme[i].avatar_link}>" class="smallworld_small_face" <{$followingme[i].avatar_highwide}>>
                                </div>
                                <div class="Friends_holder">
                                    <a class="Friends_links" href="<{$xoops_url}>/modules/smallworld/userprofile.php?username=<{$followingme[i].friendname}>">
                                        <b><{$followingme[i].friendname}></b>
                                    </a>
                                </div>
                            </div>
                            <{/section}>
                            <{if $followingme == ''}>
                            <{$nousersfollowingme}>
                            <{/if}>
                        </div>
                    </div>
                    <{/if}>

                </div>
                <{/if}>
                <{if $isuserafriend == 'no'}>
                <div class="smallworld_nofrienddiv">
                    <span class="smallworld_nofrienddivtext"><{$friendship_text}></span>
                </div>
                <{/if}>


                <br><br>
            </td>
        </tr>
    </table>
</div>
<{/if}>
<{else}>
<{/if}>
<{if $check >= 2}>
<div id="workfull" title="<{$smarty.const._SMALLWORLD_WORKFULL_TITLE}>">
    <fieldset>
        <label><{$smarty.const._SMALLWORLD_WORKFULL_TITLE}></label><br>
        <{section name=i loop=$workfull}>
        <table class="smallworld_table bnone" cellspacing="0" cellpadding="0">
            <p class="smallworld_clonebreaker">
                <tr>
                    <td><{$smarty.const._SMALLWORLD_EMPLOYER}></td>
                    <td><{$workfull[i].employer}></td>
                </tr>

                <tr>
                    <td><{$smarty.const._SMALLWORLD_POSITION}></td>
                    <td><{$workfull[i].position}></td>
                </tr>

                <tr>
                    <td><{$smarty.const._SMALLWORLD_JOBSTART}></td>
                    <td><{$workfull[i].jobstart}></td>
                </tr>

                <tr>
                    <td><{$smarty.const._SMALLWORLD_JOBSTOP}></td>
                    <td><{$workfull[i].jobstop}></td>
                </tr>

                <tr>
                    <td><{$smarty.const._SMALLWORLD_DESCRIPTION}></td>
                    <td><{$workfull[i].description}></td>
                </tr>
        </table>
        </p>
        <{/section}>
    </fieldset>
</div>

<div id="educationfull" title="<{$smarty.const._SMALLWORLD_SCHOOLFULL_TITLE}>">
    <fieldset>
        <label><{$smarty.const._SMALLWORLD_SCHOOLFULL_TITLE}></label><br>
        <{section name=i loop=$educationfull}>
        <table class="smallworld_table bnone" cellspacing="0" cellpadding="0">
            <tr>
                <p class="smallworld_clonebreaker"></tr>
            <tr>
                <td><{$smarty.const._SMALLWORLD_SCHOOLNAME}></td>
                <td><{$educationfull[i].school_type}></td>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_SCHOOLTYPE}></td>
                <td><{$educationfull[i].school}></td>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_START}></td>
                <td><{$educationfull[i].schoolstart}></td>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_STOP}></td>
                <td><{$educationfull[i].schoolstop}></td>
            </tr>
        </table>
        </p>
        <{/section}>
    </fieldset>
</div>

<div id="interestsandmore" title="<{$smarty.const._SMALLWORLD_INTERESTS_TITLE}>">
    <fieldset>
        <table class="smallworld_table bnone" cellspacing="0" cellpadding="0">
            <tr>
                <td><label><{$username}> - <{$smarty.const._SMALLWORLD_INTERESTS_DESC}></label></td>
            </tr>
        </table>
    </fieldset>

    <fieldset>
        <table class="smallworld_table bnone" cellspacing="0" cellpadding="0">
            <tr>
                <h3><label><{$smarty.const._SMALLWORLD_BELIEFS}></label></h3>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_POLITICWORD}>:</td>
                <td><{$politic}></td>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_RELIGIONWORD}>:</td>
                <td><{$religion}></td>
            </tr>
        </table>
    </fieldset>

    <fieldset>
        <table class="smallworld_table bnone" cellspacing="0" cellpadding="0">
            <tr>
                <h3><label><{$smarty.const._SMALLWORLD_FAVOURITETHINGS}></label></h3>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_FAVOURITEBOOKS}>:</td>
                <td><{$favbook}></td>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_FAVOURITEMUSIC}>:</td>
                <td><{$favmusic}></td>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_FAVOURITEMOVIE}>:</td>
                <td><{$favmovie}></td>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_FAVOURITETVSHOW}>:</td>
                <td><{$favtvshow}></td>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_FAVOURITEINTERESTS}>:</td>
                <td><{$favinterests}></td>
            </tr>
        </table>
    </fieldset>

    <fieldset>
        <table class="smallworld_table bnone" cellspacing="0" cellpadding="0">
            <tr>
                <h3><label><{$smarty.const._SMALLWORLD_CONTACTS}></label></h3>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_EMAIL}>:</td>
                <td>
                    <{section name=i loop=$email}>
                    <span class="smallworld_website"><a href="mailto:<{$email[i]}>"><{$email[i]}></a></span><br>
                    <{/section}>
                    <br><br>
                </td>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_SCREENNAMES}>:</td>
                <td>
                    <{foreach item=post from=$screenname}>
                    <{$post.link}><{$post.screenname}></a></span><br>
                    <{/foreach}>
                    <br><br>
                </td>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_PHONE}>:</td>
                <td><{$phone}></td>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_GSM}>:</td>
                <td><{$mobile}></td>
            </tr>
        </table>
    </fieldset>

    <fieldset>
        <table class="smallworld_table bnone" cellspacing="0" cellpadding="0">
            <tr><h3><label><{$smarty.const._SMALLWORLD_ADRESS}></label></h3></tr>
            <tr>
                <td><{$smarty.const._SMALLWORLD_ADRESS}>:</td>
                <td><{$realname}><br><{$adress}></td>
            </tr>

            <tr>
                <td><{$smarty.const._SMALLWORLD_COUNTRY}>:</td>
                <td><{$country}></td>
            </tr>

            <tr>
                <td><br><br><{$smarty.const._SMALLWORLD_WEBSITE}>:</td>
                <td><br><br><span class="smallworld_website"><a href="<{$website}>" target="_BLANK"><{$website}></a></span></td>
            </tr>
        </table>
    </fieldset>
</div>

<div id="_smallworld_birthplace_map" title="<{$birthcity}>/<{$country}>">
</div>
<div id="_smallworld_present_map" title="<{$currentcity}>">
</div>
<{/if}>
<div id="resultMsg" title="<{$smarty.const._SMALLWORLD_FRIENDSHIPREQUESTS}><{$MyUserName}> <-> <{$username}>">
</div>
<div id="resultMsgFollow" title="<{$smarty.const._SMALLWORLD_FRIENDSHIPFOLLOW}> <{$username}>">
</div>
<div id="friendInvitations_box" title="<{$smarty.const._SMALLWORLD_FRIENDSINVITATIONS}>">
    <table class="smallworld_invitetable bnone" cellspacing="0" cellpadding="0">
        <tr>
            <th><{$smarty.const._SMALLWORLD_REALNAME}></th>
            <th></th>
            <th><{$smarty.const._SMALLWORLD_DATERECEIVED}></th>
            <th></th>
            <th> <{$smarty.const._SMALLWORLD_ACTION}></th>
            <th></th>
        </tr>
        <{foreach item=post from=$friendinvitations}>
        <tr id="smallworldfriendrequest_<{$post.friendname}>">
            <td><{$post.friendname}></td>
            <td><{$post.friendimage}></td>
            <td><{$post.frienddate}></td>
            <td><{$post.accept}></td>
            <td><{$post.deny}></td>
            <td><{$post.later}></td>
        </tr>
        <{/foreach}>
    </table>
</div>
<{$usersetting}>
<div id="smallworldStatsDiv" title="<{$smarty.const._SMALLWORLD_STATS}>" style="display:none;"></div>
