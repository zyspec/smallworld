<div id="smallworld_regform1" class="smallworld_content" title='<{$smarty.const._SMALLWORLD_REGRISTATION_TITLE}>'>
    <{if $xoops_isuser}>
    <form id="smallworld_profileform" action="#" method="post">
        <fieldset>
            <legend><{$smarty.const._SMALLWORLD_STEP1}></legend>

            <label for="smallworld_realname"><{$smarty.const._SMALLWORLD_PERSONALINFO}></label>

            <table border="0" class="smallworld_table" cellspacing="0" cellpadding="0">
                <{if $show_realname != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_REALNAME}></p></td>
                    <td><label for="Realname"></label>
                        <{section name=i loop=$realname}>
                        <{$realname[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_gender != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_GENDER}></p></td>
                    <td><label for="select"></label>
                        <{section name=i loop=$gender}>
                        <{$gender[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_interestedin != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_INTERESTEDIN}></p></td>
                    <td><label for="select"></label>
                        <span id="intingender">
                            <{section name=i loop=$intingender}>
                            <{$intingender[i]}>
                            <{/section}>
                        </span>
                    </td>
                </tr>
                <{/if}>

                <{if $show_relationshipstatus != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_RELATIONSHIPSTATUS}></p></td>
                    <td><label for="select"></label>
                        <{section name=i loop=$relationshipstatus}>
                        <{$relationshipstatus[i]}>
                        <{/section}>
                    </td>
                </tr>

                <div class="partner">
                    <tr>
                        <td><p class="partner"><{$smarty.const._SMALLWORLD_PARTNER}></p></td>
                        <td><label for="Partner"></label>
                            <{section name=i loop=$partner}>
                            <{$partner[i]}>
                            <{/section}>
                        </td>
                    </tr>
                </div>
                <{/if}>

                <{if $show_lookingfor != 'no'}>
                <tr>
                    <td class="top"><p><{$smarty.const._SMALLWORLD_LOOKINGFOR}></p></td>
                    <td><label for="select"></label>
                        <span id="searchrelat">
                            <{section name=i loop=$searchrelat}>
                            <{$searchrelat[i]}>
                            <{/section}>
                        </span>
                        <br>
                    </td>
                </tr>
                <{/if}>

                <{if $show_birthday != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_BIRTHDAY}></p></td>
                    <td>
                        <{section name=i loop=$birthdaydate}>
                        <{$birthdaydate[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_birthplace != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_BIRTHPLACE}></p></td>
                    <div class="ui-widget">
                        <td>
                            <{section name=i loop=$birthplace}>
                            <{$birthplace[i]}>
                            <{/section}>
                            <{section name=i loop=$birthplace_lat}>
                            <{$birthplace_lat[i]}>
                            <{/section}>
                            <{section name=i loop=$birthplace_lng}>
                            <{$birthplace_lng[i]}>
                            <{/section}>
                            <{section name=i loop=$birthplace_country}>
                            <{$birthplace_country[i]}>
                            <{/section}>
                            <{section name=i loop=$birthplace_country_img}>
                            <{$birthplace_country_img[i]}>
                            <{/section}>
                        </td>
                    </div>
                </tr>
                <{/if}>

                <{if $show_political != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_POLITICALVIEW}></p></td>
                    <td><label for="select"></label>
                        <{section name=i loop=$politic}>
                        <{$politic[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_religion != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_RELIGIOUSVIEW}></p></td>
                    <td>
                        <label for="select"></label>
                        <{section name=i loop=$religion}>
                        <{$religion[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>
            </table>
        </fieldset>

        <fieldset>
            <legend><{$smarty.const._SMALLWORLD_STEP2}></legend>
            <table border="0" class="smallworld_table" cellspacing="0" cellpadding="0">
                <{if $show_emails != 'no'}>
                <tr>
                    <td class="top"><p><{$smarty.const._SMALLWORLD_EMAILS}></p></td>
                    <td><label for="email"></label>
                        <{section name=i loop=$emailtext}>
                        <{$emailtext[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_screennames != 'no'}>
                <tr>
                    <td class="top"><p><{$smarty.const._SMALLWORLD_SCREENNAMES}></p></td>
                    <td><label for="Screenname"></label>
                        <{section name=i loop=$screenname}>
                        <{$screenname[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_mobile != 'no'}>
                <tr>
                    <td class="top"><p><{$smarty.const._SMALLWORLD_MOBILEPHONE}></p></td>

                    <td>
                        <{section name=i loop=$mobile}>
                        <{$mobile[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_landphone != 'no'}>
                <tr>
                    <td class="top"><p><{$smarty.const._SMALLWORLD_LANDPHONE}></p></td>
                    <td>
                        <{section name=i loop=$phone}>
                        <{$phone[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_adress != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_ADRESS}></p></td>
                    <td>
                        <{section name=i loop=$adress}>
                        <{$adress[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_city != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_CITY}></p></td>
                    <div class="ui-widget">
                        <td>
                            <{section name=i loop=$present_city}>
                            <{$present_city[i]}>
                            <{/section}>
                            <{section name=i loop=$present_lat}>
                            <{$present_lat[i]}>
                            <{/section}>
                            <{section name=i loop=$present_lng}>
                            <{$present_lng[i]}>
                            <{/section}>
                            <{section name=i loop=$present_country_img}>
                            <{$present_country_img[i]}>
                            <{/section}>
                        </td>
                    </div>
                </tr>

                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_COUNTRY}></p></td>
                    <td>
                        <{section name=i loop=$present_country}>
                        <{$present_country[i]}>
                        <{/section}>

                    </td>
                </tr>
                <{/if}>

                <{if $show_website != 'no'}>
                <tr>
                    <td class="top"><p><{$smarty.const._SMALLWORLD_WEBSITE}></p></td>
                    <td><textarea name="website" id="website">http://</textarea></td>
                </tr>
                <{/if}>
            </table>
            <br>
        </fieldset>

        <fieldset>
            <legend><{$smarty.const._SMALLWORLD_STEP3}></legend>
            <table border="0" class="smallworld_table" cellspacing="0" cellpadding="0">
                <{if $show_interests != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_INTERESTS}></p></td>
                    <td>
                        <{section name=i loop=$interests}>
                        <{$interests[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_music != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_FAVOURITEMUSIC}></p></td>
                    <td>
                        <{section name=i loop=$music}>
                        <{$music[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_tv != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_FAVOURITETVSHOW}></p></td>
                    <td>
                        <{section name=i loop=$tvshow}>
                        <{$tvshow[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_movies != 'no'}>
                <tr>

                    <td><p><{$smarty.const._SMALLWORLD_FAVOURITEMOVIES}></p></td>
                    <td>
                        <{section name=i loop=$movie}>
                        <{$movie[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_books != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_FAVOURITEBOOKS}></p></td>
                    <td>
                        <{section name=i loop=$books}>
                        <{$books[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>

                <{if $show_aboutme != 'no'}>
                <tr>
                    <td><p><{$smarty.const._SMALLWORLD_ABOUTME}></p></td>
                    <td>
                        <{section name=i loop=$aboutme}>
                        <{$aboutme[i]}>
                        <{/section}>
                    </td>
                </tr>
                <{/if}>
                <tr>
                    <td colspan='2'></td>
                </tr>
            </table>
            <br>
        </fieldset>

        <fieldset>
            <legend><{$smarty.const._SMALLWORLD_STEP4}></legend>
            <{if $show_school != 'no'}>
            <table border="0" class="smallworld_table" cellspacing="0" cellpadding="0">
                <tr>
                    <label for="School"></label>
                    <td>
                        <p class="smallworld_clone3">
                            <{section name=i loop=$school}>
                            <{$school[i]}>
                            <{/section}>
                        </p>
                    </td>
                </tr>
            </table>
            <{/if}>
        </fieldset>

        <fieldset>
            <legend><{$smarty.const._SMALLWORLD_STEP5}></legend>
            <{if $show_jobs != 'no'}>
            <table border="0" class="smallworld_table" cellspacing="0" cellpadding="0">
                <tr>
                    <label for="Job"></label>
                    <td>
                        <p class="smallworld_clone4">
                            <{section name=i loop=$job}>
                            <{$job[i]}>
                            <{/section}>
                        </p>
                    </td>
                </tr>
            </table>
            <{/if}>
        </fieldset>

        <fieldset>
            <legend><{$smarty.const._SMALLWORLD_STEP6}></legend>
            <table border="0" class="smallworld_table" cellspacing="0" cellpadding="0">
                <tr>
                    <label for="Job"></label>
                    <td>
                        <p class="smallworld_submittext"><{$smallworld_beforesubmit}></p>
                        <br>
                    </td>
                </tr>
            </table>
        </fieldset>
        <input type="submit" id="smallworld_save1" value="<{$smallworld_save}>" class="smallworld_finish">
        <input type="hidden" name="function" value="save">
    </form>
    <{/if}>
</div>
