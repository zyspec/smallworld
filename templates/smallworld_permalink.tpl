<div id="example1" class="smallworld_content">
    <table class="smallworld_biotable">
        <tr>
            <td></td>
            <span class="smallworld_search">
                <td>
                    <ul class="smallworld_index_headmenu">
                        <li><{$menu_startpage}></li>
                        <li><{$menu_home}></li>
                    </ul>
                    <br>
                    <br>
                    <div id="smallworld_wall_container">
                        <div id="smallworld_content">
                            <{foreach item=post from=$walldata}>
                            <script type="text/javascript">
                                xoops_smallworld(document).ready(function () {
                                    xoops_smallworld("#smallworld_stexpand<{$post.msg_id}>").oembed("<{$post.orimessage}>", {
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
                                    <b><a class="smallworld_wall_link" href="<{$xoops_url}>/modules/smallworld/userprofile.php?username=<{$post.username}>"><{$post.username}></a></b> <{$post.message}>
                                    <div class="smallworld_sttime"><{$post.created}><{$post.sharelink}> | <a href="#" class="smallworld_commentopen" id="<{$post.msg_id}>" title="<{$smarty.const._SMALLWORLD_COMMENTWALL}>"><{$smarty.const._SMALLWORLD_COMMENTWALL}></a></div>
                                    <{$post.sharediv}>
                                    <{if $post.username == $myusername}>
                                    <div class="smallworld_stcommentvote">
                                        <span id="smallworld_votenum"><{$post.vote_up}></span>
                                        <img class="smallworld_voteimg" src="../assets/images/like.png">
                                        <span id="smallworld_votenum"><{$post.vote_down}></span>
                                        <img class="smallworld_voteimg" src="../assets/images/dislike.png">
                                    </div>
                                    <{else}>
                                    <div class="smallworld_stcommentvote">
                                        <span id="smallworld_votenum"><{$post.vote_up}></span> <a href="javascript:void(0)" name="up" class="smallworld_stcomment_vote" id="<{$post.msg_id}>" type="msg" owner="<{$post.uid_fk}>">
                                            <img class="smallworld_voteimg" src="../assets/images/like.png">
                                        </a>
                                        <span id="smallworld_votenum"><{$post.vote_down}></span> <a href="javascript:void(0)" name="down" class="smallworld_stcomment_vote" id="<{$post.msg_id}>" type="msg" owner="<{$post.uid_fk}>">
                                            <img class="smallworld_voteimg" src="../assets/images/dislike.png">
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
                                                <img src="<{$comm[i].avatar_link}>" class="smallworld_small_face" <{$comm[i].avatar_highwide}>>
                                            </div>
                                            <div class="smallworld_stcommenttext">
                                                <{if $isadminuser == 'YES' or $comm[i].username == $myusername}>
                                                <a class="smallworld_stcommentdelete" href="#" rel="<{$comm[i].uid}>" id="<{$comm[i].com_id}>" title="<{$smarty.const._SMALLWORLD_DELETECOMMENT}>">X</a>
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
                                                    <img class="smallworld_voteimg" src="../assets/images/like.png">
                                                    <span id="smallworld_votenum"><{$comm[i].vote_down}></span>
                                                    <img class="smallworld_voteimg" src="../assets/images/dislike.png">
                                                </div>
                                                <{else}>
                                                <div class="smallworld_stcommentvote">
                                                    <span id="smallworld_votenum"><{$comm[i].vote_up}></span> <a href="javascript:void(0)" name="up" class="smallworld_stcomment_vote" id="<{$comm[i].com_id}>" owner="<{$comm[i].uid}>" type="com" type2="<{$comm[i].msg_id_fk}>">
                                                        <img class="smallworld_voteimg" src="../assets/images/like.png">
                                                    </a>
                                                    <span id="smallworld_votenum"><{$comm[i].vote_down}></span> <a href="javascript:void(0)" name="down" class="smallworld_stcomment_vote" id="<{$comm[i].com_id}>" owner="<{$comm[i].uid}>" type="com" type2="<{$comm[i].msg_id_fk}>">
                                                        <img class="smallworld_voteimg" src="../assets/images/dislike.png">
                                                    </a>
                                                    <a href="javascript:void(0)" name="complaint" class="smallworld_stcomment_vote" id="<{$comm[i].com_id}>" owner="<{$comm[i].uid}>" type="complaint" type2="<{$comm[i].msg_id_fk}>">
                                                        <img class="smallworld_voteimg" src="../assets/images/complaint.png">
                                                    </a>
                                                </div>
                                                <{/if}>
                                            </div>
                                        </div>
                                        <{/if}>
                                        <{/section}>
                                    </div>
                                    <div class="smallworld_commentupdate" style="display:none" id="smallworld_commentbox<{$post.msg_id}>">
                                        <div class="smallworld_stcommentimg">
                                            <img src="<{$myavatarlink}>" class="smallworld_small_face" <{$myavatar_highwide}>>
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
                            <br><br>
                            <{/foreach}>
                        </div>
                    </div>
                </td>
            </span>
        </tr>
    </table>
</div>

