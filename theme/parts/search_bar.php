<div class="span12" data-motopress-type="dynamic-sidebar"
     data-motopress-sidebar-id="newsletter-sidebar">
    <div id="newsletterwidget-2" class="visible-all-devices "><h4>Subscribe to our newsletter</h4>
        <script type="text/javascript">
            //<![CDATA[
            if (typeof newsletter_check !== "function") {
                window.newsletter_check = function (f) {
                    var re = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-]{1,})+\.)+([a-zA-Z0-9]{2,})+$/;
                    if (!re.test(f.elements["ne"].value)) {
                        alert("The email is not correct");
                        return false;
                    }
                    if (f.elements["ny"] && !f.elements["ny"].checked) {
                        alert("You must accept the privacy statement");
                        return false;
                    }
                    return true;
                }
            }
            //]]>
        </script>
        <div class="newsletter newsletter-widget">
            <script type="text/javascript">
                //<![CDATA[
                if (typeof newsletter_check !== "function") {
                    window.newsletter_check = function (f) {
                        var re = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-]{1,})+\.)+([a-zA-Z0-9]{2,})+$/;
                        if (!re.test(f.elements["ne"].value)) {
                            alert("The email is not correct");
                            return false;
                        }
                        if (f.elements["ny"] && !f.elements["ny"].checked) {
                            alert("You must accept the privacy statement");
                            return false;
                        }
                        return true;
                    }
                }
                //]]>
            </script>
            <form action="http://livedemo00.template-help.com/wordpress_48779/wp-content/plugins/newsletter/do/subscribe.php"
                  onsubmit="return newsletter_check(this)" method="post"><input type="hidden" name="nr"
                                                                                value="widget"/>

                <p><input class="newsletter-email" type="email" required name="ne" value="Enter email"
                          onclick="if (this.defaultValue==this.value) this.value=''"
                          onblur="if (this.value=='') this.value=this.defaultValue"/></p>

                <p><input class="newsletter-submit" type="submit" value="Submit"/></p></form>
        </div>
    </div>
</div>

