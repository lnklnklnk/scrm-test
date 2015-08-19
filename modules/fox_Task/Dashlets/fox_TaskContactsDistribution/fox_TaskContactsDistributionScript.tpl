{*

/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/




*}


{literal}<script>
	if(typeof ContactsDistribution == 'undefined') { // since the dashlet can be included multiple times a page, don't redefine these functions
		ContactsDistribution = function() {
			return {

				/**
				 * Called when the textarea is double clicked on
				 */
				getContact: function(divObj, id) {
					ajaxStatus.showStatus('{/literal}{$gettingContactLbl}{literal}');
					postData = 'to_pdf=1&module=fox_Task&action=CallMethodDashlet&method=getContact&id=' + id;
					var cObj = YAHOO.util.Connect.asyncRequest('POST','index.php',
							{success: ContactsDistribution.saved, failure: ContactsDistribution.saved}, postData);

				},
				/**
				 * handle the response of the saveText method
				 */
				saved: function(data) {
					eval(data.responseText);



					if(result.contact_id == null) {
						ajaxStatus.showStatus('{/literal}Нет подходящего контакта{literal}');
						window.setTimeout('ajaxStatus.hideStatus()', 2000);
					} else {
						//ajaxStatus.showStatus('{/literal}Контакт открывается{literal}');
						//ajaxStatus.hide();
						window.location =
						"/index.php?module=Contacts&action=DetailView&record="+result.contact_id;
					}
				}
			};
		}();
	}
</script>{/literal}