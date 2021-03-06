<{if $xoops_isuser}>
    <ul id="smallworld_menu" class="smallworld_menu">
        <li class="active"><a href="<{$xoops_url}>/modules/smallworld/userprofile.php?username=<{$username}>"><{$username}> - <{$smarty.const._SMALLWORLD_BIOGRAPHY}></a></li>
    </ul>
<{else}>
    <div id="smallworld_notyetregistered" title="<{$smarty.const._SMALLWORLD_NOTYETREGISTERED_TITLE}>">
        <table border="0" class="smallworld_table" cellspacing="0" cellpadding="0">
            <tr>
                <label for="register"></label>
                <td><p id="smallworld_notyetusercontent"><{$notyetusercontent}></p></td>
            </tr>
        </table>
    </div>
<{/if}>

<{if $check >= 2}>
<{if $inspect != 'yes' OR $isadminuser == 'YES'}>
<div id="example1" class="smallworld_content">
    <table class="smallworld_biotable">
        <tr>
            <td>
                <{$avatar}>
                <{if $username == $myusername OR $isadminuser == 'YES'}>
                <div class="UploadNewAvatar" id="<{$ownerofpage}>" style="display:none">
                    <div id="smallworld_avatarupload">
                        <span><{$smarty.const._SMALLWORLD_UPLOADFILEBUTTONTEXT}></span>
                    </div>
                    <span id="smallworld_avatarstatus"></span>
                    <ul id="smallworld_avatarfiles"></ul>
                </div>
                <{else}>
                <div class="UploadNewAvatar" id="<{$ownerofpage}>" style="display:none">
                    <div id="smallworld_avatarupload"></div>
                    <span id="smallworld_avatarstatus"></span>
                    <ul id="smallworld_avatarfiles"></ul>
                </div>
                <{/if}>
                <div class="smallworld_userstat_menu">
                    <h1><{$username}></h1>
                    <div class="center"><{$rankimage}></div>
                    <br>
                    <div class="center"><{$smarty.const._SMALLWORLD_TOTALPOSTS}>
                        <{$totalposts}>
                    </div>
                    <br><br>
                    <h1><{$smarty.const._SMALLWORLD_TOTALUSERRATINGS}></h1>
                    <p class="smallworld_rating_menu"><{$usersratinf}></p>
                </div>
                <br>

                <{if $username == $myusername OR $isadminuser == 'YES'}>
                <br>
                <p class="smallworld_useredits_menu">
                    <img height="10px" width="10px" src="./assets/images/editavatar.png">
                    <a href="javascript:void(0);" id="smallworld_changeAvatar"><{$smarty.const._SMALLWORLD_CHANGEAVATAR}></a><br>
                    <img height="10px" width="10px" src="./assets/images/edituserprofile.png">
                    <a href="editprofile.php" id="smallworld_changeEditProfile"><{$smarty.const._SMALLWORLD_EDITPROFILE}></a><br>
                    <img height="10px" width="10px" src="./assets/images/preferences.png">
                    <a href="javascript:void(0);" id="smallworld_changePersSettings"><{$smarty.const._SMALLWORLD_MENU_PRIVSET}></a><br>
                </p>
                <{/if}>
                <{if $friendID != $myUid}>
                <br>
                <{if $sendxim == 'YES'}>
                <{$menu_xim}>
                <{/if}>
                <{/if}>
                <br>
                <br>
                <p class="smallworld_useredits_menu">
                    <img width='10px' height='10px' src="<{$xoops_url}>/modules/smallworld/assets/images/report_user.png">
                    <a id="smallworld_recentactivities" rel="<{$username}>" href="<{$xoops_url}>/modules/smallworld/recentactivities.php?username=<{$username}>">
                        <{$smarty.const._SMALLWORLD_MESSAGEHISTORIC}>
                    </a>
                    <br>
                </p>
                <p class="smallworld_useredits_menu">
                    <img width='10px' height='10px' src="<{$xoops_url}>/modules/smallworld/assets/images/statistics.png">
                    <a href="javascript:void(0);" id="smallworld_statistics_lnk"><{$smarty.const._SMALLWORLD_STATS}></a><br>
                </p>
                <br>
            </td>
            <td>
                <ul class="smallworld_index_headmenu">
                    <li><{$menu_startpage}></li>
                    <li><{$menu_home}></li>
                    <li><{$menu_profile}></li>
                    <{if $isuserafriend == 'yes'}>
                    <li><{$menu_friends}></li>
                    <li><{$menu_gallery}></li>
                    <{/if}>
                </ul>
                <br>
                <br>
                <{if $friendID != $myUid}>
                <p class="smallworld_friendshipFollowersHolder">
                    <a id="friendship" href="javascript:Smallworld_inviteFriends(<{$friendID}>,<{$myUid}>)">
                        <{$friendship_text}>
                    </a>
                    <{if $isuserafriend == 'yes' || $friendID == $myUid || $isadminuser == 'YES'}>
                    <a id="followfriend" href="javascript:Smallworld_FollowFriend(<{$friendID}>,<{$myUid}>)">
                        <{$followfriend_text}>
                    </a>
                    <{/if}>
                </p>
                <{/if}>
                <{if $isuserafriend == 'yes'}>
                <div style="display:none;overflow:visible" id="smallworld_bdayDiv" title="<{$smarty.const._SMALLWORLD_BDAY_ISIN}>">
                    <span style="display:inline" id="smallworldUserBirthday"></span>
                </div>
                <script type='text/javascript'>
                    xoops_smallworld(document).ready(function(){
                        xoops_smallworld('span#smallworldUserBirthday').countdown({
                            <{if $nextBDay == 0}>
                            until:+1,
                            <{else}>
                            until:+<{$nextBDay}>,
                            <{/if}>
                            format: 'dHMS',
                            onExpiry: birthday_today
                            });
     
                        xoops_smallworld('#smallworldBdayLink').on('click',function() {
                            xoops_smallworld('#smallworld_bdayDiv').dialog({
                                maxHeight: 90,
                                maxWidth:350,
                                height:70,
                                width:250,
                                modal: true
                            });
                        });
                    });
                    function birthday_today() { 
                        var bdayText = "<{$bdaynow}>";
                        xoops_smallworld('#smallworldBday').empty();
                        xoops_smallworld('#smallworld_bdayDiv').append(bdayText);
                        xoops_smallworld('#smallworldBday').append(bdayText);
                        xoops_smallworld('#smallworldUserBirthday').hide();
                    }
                </script>
                <div id="userbio"><span id="smallworld_capname" class="smallworld_capital"><{$username}></span> <{$smarty.const._SMALLWORLD_AKA}> <{$realname}>, <{$smarty.const._SMALLWORLD_BORN}> <span id="smallworldBday"><a href="javascript:void(0);" id="smallworldBdayLink"><{$birthday}></a></span>
                    (<{$age}>
                    <{$smarty.const._SMALLWORLD_YEARSOLD}>) <{$smarty.const._SMALLWORLD_IN}> <a href="javascript:void(0)" id="_smallworld_birthplace_maplink"><{$birthcity}>/<{$country}></a>.
                    <br><br>
                    <{$heorshe}> <{$status}> <{$spouse}>.
                    <br><br>
                    <{$heorshe}> <{$smarty.const._SMALLWORLD_LIVINGIN}> <a href="javascript:void(0)" id="_smallworld_present_maplink"><{$currentcity}></a>.
                    <br><br>
                    <{$heorshe}> <{$smarty.const._SMALLWORLD_ISEMPLOYEDBY}> <{$work}> <{$smarty.const._SMALLWORLD_AND}> <{$smarty.const._SMALLWORLD_ATTENDED}> <{$education}>.
                    <br><br>

                    <{if $flds[0] != ''}>
                    <fieldset>
                        <label><{$smarty.const._SMALLWORLD_ADDITIONALINFO}> <{$username}></label>
                        <{$aboutme}>
                        <br><br><a href='javascript:void(0)' class="smallworld_moreinfo" id='_SMALLWORLD_MOREINFO'><{$smarty.const._SMALLWORLD_MOREINFO}></a><br><br>
                    </fieldset>
                    <{/if}>
                </div>
                <{/if}>
                <{if $isuserafriend == 'no'}>
                <div class="smallworld_nofrienddiv">
                    <span class="smallworld_nofrienddivtext"><{$smarty.const._SMALLWORLD_NOFRIENDTEXT}></span>
                </div>
                <{/if}>
                <{if $isuserafriend == 'yes' || $friendID == $myUid || $isadminuser == 'YES'}>
                <{if $userNumMsg > 0}>
                <div id="smallworld_wall_container">
                    <div id='smallworld_flashmessage'>
                        <div id="smallworld_flash" align="left"></div>
                    </div>
                    <hr>
                    <div id="smallworld_content">
                        <button id='smallworld_messagecounter_id' onClick='smallworldRefresh();return false;'></button>
                        <{foreach item=post from=$walldata}>
                            <script type="text/javascript">
                                xoops_smallworld(document).ready(function () {
                                    xoops_smallworld("#smallworld_stexpand<{$post.msg_id}>").oembed("<{$post.orimessage}>", {
                                        embedMethod: 'fill',
                                        maxWidth: "100%",
                                        maxHeight: "100%"
                                    });
                                });
                            </script>
                            <div class="smallworld_stbody" id="smallworld_stbody<{$post.msg_id}>">
                                <div class="smallworld_stimg">
                                    <img src="<{$post.avatar_link}>" class="smallworld_big_face" <{$post.avatar_highwide}>>
                                </div>

                                <div class="smallworld_sttext">
                                    <{if $isadminuser == 'YES' or $post.username == $myusername}>
                                    <a class="smallworld_stdelete" href="#" rel="<{$post.uid_fk}>" id="<{$post.msg_id}>" title="<{$smarty.const._SMALLWORLD_DELUPD}>">X</a>
                                    <{/if}>
                                    <div class="comm_holder">
                                        <a href="<{$post.permalink}>"> <img style="height:10px; width:10px" src="<{$post.linkimage}>"> </a>
                                        <b><a class="smallworld_wall_link" href="<{$xoops_url}>/modules/smallworld/userprofile.php?username=<{$post.username}>"><{$post.username}></a></b> <{$post.message}>
                                    </div>
                                    <div class="smallworld_sttime"><{$post.created}><{$post.sharelink}> | <a href='#' class='smallworld_commentopen' id='<{$post.msg_id}>' title='<{$smarty.const._SMALLWORLD_COMMENTWALL}>'><{$smarty.const._SMALLWORLD_COMMENTWALL}></a></div>
                                    <{$post.sharediv}>
                                    <{if $post.username == $myusername}>
                                    <div class="smallworld_stcommentvote">
                                        <span id="smallworld_votenum"><{$post.vote_up}></span>
                                        <img class="smallworld_voteimg" src="./assets/images/like.png">

                                        <span id="smallworld_votenum"><{$post.vote_down}></span>
                                        <img class="smallworld_voteimg" src="./assets/images/dislike.png">

                                    </div>
                                    <{else}>
                                    <div class="smallworld_stcommentvote">
                                        <span id="smallworld_votenum"><{$post.vote_up}></span> <a href="javascript:void(0)" owner="<{$post.uid_fk}>" name="up" class="smallworld_stcomment_vote" id="<{$post.msg_id}>" type="msg">
                                            <img class="smallworld_voteimg" src="./assets/images/like.png">
                                        </a>
                                        <span id="smallworld_votenum"><{$post.vote_down}></span> <a href="javascript:void(0)" owner="<{$post.uid_fk}>" name="down" class="smallworld_stcomment_vote" id="<{$post.msg_id}>" type="msg">
                                            <img class="smallworld_voteimg" src="./assets/images/dislike.png">
                                        </a>
                                        <a href="javascript:void(0)" auserid="<{$post.uid_fk}>" by_user="<{$myusername}>" a_user="<{$post.username}>" name="complaint" class="smallworld_comment_complaint" id="<{$post.compl_msg_lnk}>">
                                            <img class="smallworld_voteimg" src="./assets/images/complaint.png">
                                        </a>
                                    </div>
                                    <{/if}>
                                    <div id="smallworld_stexpandbox">
                                        <div id="smallworld_stexpand<{$post.msg_id}>"></div>
                                    </div>

                                    <div class="smallworld_commentcontainer" id="smallworld_commentload<{$post.msg_id}>">
                                    <{section name=i loop=$comm}>
                                    <{if $comm[i].msg_id_fk == $post.msg_id}>
                                    <div class="smallworld_stcommentbody" id="smallworld_stcommentbody<{$comm[i].com_id}>">
                                        <div class="smallworld_stcommentimg">
                                            <img src="<{$comm[i].avatar_link}>" class='smallworld_small_face' <{$comm[i].avatar_highwide}>>
                                        </div>
                                        <div class="smallworld_stcommenttext">
                                            <{if $comm[i].username == $myusername}>
                                            <a class="smallworld_stcommentdelete" href="#" rel="<{$comm[i].uid}>" id='<{$comm[i].com_id}>' title='<{$smarty.const._SMALLWORLD_DELETECOMMENT}>'>X</a>
                                            <{/if}>
                                            <div class="comm_holder">
                                                <a class="smallworld_wall_link" href="<{$xoops_url}>/modules/smallworld/userprofile.php?username=<{$comm[i].username}>">
                                                    <b><{$comm[i].username}></b>
                                                </a> <{$comm[i].comment}>
                                            </div>
                                            <div class="smallworld_stcommenttime"><{$comm[i].time}></div>
                                            <{if $comm[i].username == $myusername}>
                                            <div class="smallworld_stcommentvote">
                                                <span id="smallworld_votenum"><{$comm[i].vote_up}></span>
                                                <img class="smallworld_voteimg" src="./assets/images/like.png">

                                                <span id="smallworld_votenum"><{$comm[i].vote_down}></span>
                                                <img class="smallworld_voteimg" src="./assets/images/dislike.png">
                                            </div>
                                            <{else}>
                                            <div class="smallworld_stcommentvote">
                                                <span id="smallworld_votenum"><{$comm[i].vote_up}></span> <a href="javascript:void(0)" name="up" class="smallworld_stcomment_vote" id="<{$comm[i].com_id}>" owner="<{$comm[i].uid}>" type="com" type2="<{$comm[i].msg_id_fk}>">
                                                    <img class="smallworld_voteimg" src="./assets/images/like.png">
                                                </a>

                                                <span id="smallworld_votenum"><{$comm[i].vote_down}></span> <a href="javascript:void(0)" name="down" class="smallworld_stcomment_vote" id="<{$comm[i].com_id}>" owner="<{$comm[i].uid}>" type="com" type2="<{$comm[i].msg_id_fk}>">
                                                    <img class="smallworld_voteimg" src="./assets/images/dislike.png">
                                                </a>
                                                <a href="javascript:void(0)" auserid="<{$comm[i].uid}>" by_user="<{$myusername}>" a_user="<{$comm[i].username}>" name="complaint" class="smallworld_comment_complaint" id="<{$comm[i].compl_msg_lnk}>">
                                                    <img class="smallworld_voteimg" src="./assets/images/complaint.png">
                                                </a>
                                            </div>
                                            <{/if}>
                                        </div>
                                    </div>
                                    <{/if}>
                                    <{/section}>
                                </div>

                                <div class="smallworld_commentupdate" style='display:none' id='smallworld_commentbox<{$post.msg_id}>'>
                                    <div class="smallworld_stcommentimg">
                                        <img src="<{$visitoravatarlink}>" class='smallworld_small_face' <{$visitoravatar_highwide}>>
                                    </div>
                                    <div class="smallworld_stcommenttext">
                                        <form method="post" action="">
                                            <textarea name="smallworld_comment" class="smallworld_comment" id="smallworld_ctextarea<{$post.msg_id}>"></textarea>
                                            <br>
                                            <input type="submit" value="<{$smarty.const._SMALLWORLD_COMMENTBUTTONTEXT}>" id="<{$post.msg_id}>" class="smallworld_comment_button">
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <br><br>
                        </div>
                        <br>
                        <br>
                        <{/foreach}>
                        <div id="smallworld_moremsg_ajax" style="display:none">
                            <img src="./assets/images/loader.gif">
                        </div>
                        <a style="display:none" href="javascript:void(0)" class="smallworld_msg_counter" rel="profile" rel2="<{$ownerofpage}>" id="<{$post.msg_id}>"><{$smarty.const._SMALLWORLD_MOREBUTTONLINK}></a>
                    </div>
                </div>
                <{/if}>
                <{/if}>
            </td>
        </tr>
    </table>
</div>
<{else}>
<div id="example1" class="smallworld_content">
    <div id="smallworld_inspection_desc"><{$smarty.const._SMALLWORLD_INSPEC_DESC}>
        <p id="clock-<{$ownerofpage}>"></p>
        <script type='text/javascript'>
            xoops_smallworld(document).ready(function () {
                xoops_smallworld('#clock-<{$ownerofpage}>').countdown({onExpiry: smallworldRefresh, until: + < {$inspecttime} >});
            });
        </script>
    </div>
</div>
<{/if}>
<{else}>
<script type="text/javascript">
    <!--
    window.location = smallworld_url;
    //-->
</script>
<{/if}>
<{if $check >= 2}>
<div id="workfull" title="<{$smarty.const._SMALLWORLD_WORKFULL_TITLE}>">
    <fieldset>
        <label><{$smarty.const._SMALLWORLD_WORKFULL_TITLE}></label><br>
        <{section name=i loop=$workfull}>
        <p class="smallworld_clonebreaker">
        <{if $workfull[i].employer != ''}>
        <table class="smallworld_table bnone" cellspacing="0" cellpadding="0">
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
        <{else}>
        <{$smarty.const._SMALLWORLD_ALL_FIELDS_DISABLED}>
        <{/if}>
        </p>
        <{/section}>
    </fieldset>
</div>
<div id="educationfull" title="<{$smarty.const._SMALLWORLD_SCHOOLFULL_TITLE}>">
    <fieldset>
        <label><{$smarty.const._SMALLWORLD_SCHOOLFULL_TITLE}></label><br>
        <{section name=i loop=$educationfull}>
        <p class="smallworld_clonebreaker">
        <{if $educationfull[i].school_type != ''}>
        <table border="0" class="smallworld_table" cellspacing="0" cellpadding="0">
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
        <{else}>
        <{$smarty.const._SMALLWORLD_ALL_FIELDS_DISABLED}>
        <{/if}>
        </p>
        <{/section}>
    </fieldset>
</div>
<div id="interestsandmore" title="<{$smarty.const._SMALLWORLD_INTERESTS_TITLE}>">
    <{if
    !in_array('religiousview',$flds) &&
    !in_array('politicalview',$flds) &&
    !in_array('favouritebooks',$flds) &&
    !in_array('favouritemusic',$flds) &&
    !in_array('favouritemovies',$flds) &&
    !in_array('favouritetvshows',$flds) &&
    !in_array('interests',$flds) &&
    !in_array('emails',$flds) && !in_array('screennames',$flds) &&
    !in_array('mobile',$flds) && !in_array('landphone',$flds) &&
    !in_array('streetadress',$flds) &&
    !in_array('country',$flds) &&
    !in_array('website',$flds)
    }>
    <fieldset>
        <table border="0" class="smallworld_table" cellspacing="0" cellpadding="0">
            <tr>
                <td><label><{$smarty.const._SMALLWORLD_ALL_FIELDS_DISABLED}></label></td>
            </tr>
        </table>
    </fieldset>
    <{else}>
    <fieldset>
        <table border="0" class="smallworld_table" cellspacing="0" cellpadding="0">
            <tr>
                <td><label><{$username}> - <{$smarty.const._SMALLWORLD_INTERESTS_DESC}></label></td>
            </tr>
        </table>
    </fieldset>
    <{/if}>

    <{if !in_array('religiousview',$flds) && !in_array('politicalview',$flds)}>
    <{else}>
    <fieldset>
        <table class="smallworld_table bnone" cellspacing="0" cellpadding="0">
            <tr>
                <h3><label><{$smarty.const._SMALLWORLD_BELIEFS}></label></h3>
            </tr>

            <{if !in_array('politicalview',$flds) || $politic == ''}>
            <{else}>
            <tr>
                <td><{$smarty.const._SMALLWORLD_POLITICWORD}>:</td>
                <td><{$politic}></td>
            </tr>
            <{/if}>
            <{if !in_array('religiousview',$flds) || $religion == ''}>
            <{else}>
            <tr>
                <td><{$smarty.const._SMALLWORLD_RELIGIONWORD}>:</td>
                <td><{$religion}></td>
            </tr>
            <{/if}>
        </table>
    </fieldset>
    <{/if}>

    <{if
        !in_array('favouritebooks',$flds) && !in_array('favouritemusic',$flds) &&
        !in_array('favouritemovies',$flds) && !in_array('favouritetvshows',$flds) &&
        !in_array('interests',$flds)
        }>
    <{else}>
    <{if
        $favbook != '' && $favmusic != '' &&
        $favmovie != '' && $favshows != '' && $favinterests != ''
    }>
    <fieldset>
        <table border="0" class="smallworld_table" cellspacing="0" cellpadding="0">
            <tr>
                <h3><label><{$smarty.const._SMALLWORLD_FAVOURITETHINGS}></label></h3>
            </tr>
            <{if !in_array('favouritebooks',$flds) || $favbook == ''}>
            <{else}>
            <tr>
                <td><{$smarty.const._SMALLWORLD_FAVOURITEBOOKS}>:</td>
                <td><{$favbook}></td>
            </tr>
            <{/if}>

            <{if !in_array('favouritemusic',$flds) || $favmusic == ''}>
            <{else}>
            <tr>
                <td><{$smarty.const._SMALLWORLD_FAVOURITEMUSIC}>:</td>
                <td><{$favmusic}></td>
            </tr>
            <{/if}>

            <{if !in_array('favouritemovies',$flds) || $favmovie == ''}>
            <{else}>
            <tr>
                <td><{$smarty.const._SMALLWORLD_FAVOURITEMOVIE}>:</td>
                <td><{$favmovie}></td>
            </tr>
            <{/if}>
            <{if !in_array('favouritetvshows',$flds) || $favshows == ''}>
            <{else}>
            <tr>
                <td><{$smarty.const._SMALLWORLD_FAVOURITETVSHOW}>:</td>
                <td><{$favtvshow}></td>
            </tr>
            <{/if}>
            <{if !in_array('interests',$flds) || $favinterests == ''}>
            <{else}>
            <tr>
                <td><{$smarty.const._SMALLWORLD_FAVOURITEINTERESTS}>:</td>
                <td><{$favinterests}></td>
            </tr>
            <{/if}>
        </table>
    </fieldset>
    <{/if}>
    <{/if}>

    <{if
    !in_array('emails',$flds) && !in_array('screennames',$flds) &&
    !in_array('mobile',$flds) && !in_array('landphone',$flds)
    }>
    <{else}>
    <fieldset>
        <table border="0" class="smallworld_table" cellspacing="0" cellpadding="0">
            <tr>
                <h3><label><{$smarty.const._SMALLWORLD_CONTACTS}></label></h3>
            </tr>
            <{if !in_array('emails',$flds)}>
            <{else}>
            <{if $email|@count gt 0}>
            <tr>
                <td><{$smarty.const._SMALLWORLD_EMAIL}>:</td>
                <td>
                    <{section name=i loop=$email}>
                        <span class="smallworld_website"><a href="mailto:<{$email[i]}>"><{$email[i]}></a></span>
                        <br>
                    <{/section}>
                    <br><br>
                </td>
            </tr>
            <{/if}>
            <{/if}>
            <{if !in_array('screennames',$flds)}>
            <{else}>
            <{if $screenname|@count gt 0}>
            <tr>
                <td><{$smarty.const._SMALLWORLD_SCREENNAMES}>:</td>
                <td>
                    <{foreach item=post from=$screenname}>
                    <{$post.link}><{$post.screenname}></a></span>
                    <br>
                    <{/foreach}>
                    <br><br>
                </td>
            </tr>
            <{/if}>
            <{/if}>

            <{if !in_array('landphone',$flds)}>
            <{else}>
            <{if $phone != ''}>
            <tr>
                <td><{$smarty.const._SMALLWORLD_PHONE}>:</td>
                <td><{$phone}></td>
            </tr>
            <{/if}>
            <{/if}>

            <{if !in_array('mobile',$flds)}>
            <{else}>
            <{if $mobile != ''}>
            <tr>
                <td><{$smarty.const._SMALLWORLD_GSM}>:</td>
                <td><{$mobile}></td>
            </tr>
            <{/if}>
            <{/if}>
        </table>
    </fieldset>
    <{/if}>


    <{if
    !in_array('streetadress',$flds) &&
    !in_array('country',$flds) &&
    !in_array('website',$flds)
    }>
    <{else}>
    <{if $adress != '' && $country != '' && $website != ''}>
    <fieldset>
        <table border="0" class="smallworld_table" cellspacing="0" cellpadding="0">
            <tr>
                <h3><label><{$smarty.const._SMALLWORLD_ADRESS}></label></h3>
            </tr>
           <{if !in_array('streetadress',$flds)}>
           <{else}>
           <tr>
               <td><{$smarty.const._SMALLWORLD_ADRESS}>:</td>
               <td><{$realname}><br><{$adress}></td>
           </tr>
           <{/if}>
    
           <{if !in_array('country',$flds)}>
           <{else}>
           <tr>
               <td><{$smarty.const._SMALLWORLD_COUNTRY}>:</td>
               <td><{$country}></td>
           </tr>
           <{/if}>
    
           <{if !in_array('website',$flds)}>
           <{else}>
           <tr>
               <td><br><br><{$smarty.const._SMALLWORLD_WEBSITE}>:</td>
               <td><br><br><span class="smallworld_website"><a href="<{$website}>" target="_BLANK"><{$website}></a></span></td>
           </tr>
           <{/if}>
       </table>
    </fieldset>
    <{/if}>
    <{/if}>
</div>
<div id="_smallworld_birthplace_map" title="<{$birthcity}>/<{$country}>"></div>
<div id="_smallworld_present_map" title="<{$currentcity}>"></div>
<{/if}>
<div id="resultMsg" title="<{$smarty.const._SMALLWORLD_FRIENDSHIPREQUESTS}><{$MyUserName}> <-> <{$username}>"></div>
<div id="resultMsgFollow" title="<{$smarty.const._SMALLWORLD_FRIENDSHIPFOLLOW}> <{$username}>"></div>
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
<div id="smallworld_recentactivitiesDiv" title="<{$smarty.const._SMALLWORLD_STATS}>" style="display:none;"></div>
