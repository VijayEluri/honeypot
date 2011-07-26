<%-- 
    Document   : index
    Created on : 1-feb-2008, 15.35.01
    Author     : Manny
--%>

<%@page contentType="application/xhtml+xml" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<%
        Random r = new Random(System.currentTimeMillis());
        String hira[] = {"a", "i", "u", "e", "o", "y", "ka", "ki", "ku", "ke", "ko", "kya", "kyu", "kyo", "sa", "shi", "su", "se", "so", "sha", "shu", "sho", "ta", "chi", "tsu", "te", "to", "cha", "chu", "cho", "na", "ni", "nu", "ne", "no", "nya", "nyu", "nyo", "ha", "hi", "fu", "he", "ho", "hya", "hyu", "hyo", "ma", "mi", "mu", "me", "mo", "mya", "myu", "myo", "ya", "yu", "yo", "ra", "ri", "ru", "re", "ro", "rya", "ryu", "ryo", "wa", "wi", "we", "wo", "n", "ga", "gi", "gu", "ge", "go", "gya", "gyu", "gyo", "za", "ji", "zu", "ze", "zo", "ja", "ju", "jo", "da", "de", "do", "ba", "bi", "bu", "be", "bo", "bya", "byu", "byo", "pa", "pi", "pu", "pe", "po", "pya", "pyu", "pyo"};
        String[] dom = {".biz", ".com", ".info", ".name", ".net", ".org", ".pro", ".ac", "", ".ad", " .ae", ".af", ".ag", ".ai", ".al", ".am", ".an", ".ao", ".aq", ".ar", ".as", ".at", ".au", ".aw", ".ax", ".az", ".ba", ".bb", ".bd", ".be", ".bf", ".bg", ".bh", ".bi", ".bj", ".bm", ".bn", ".bo", ".br", ".bs", ".bt", ".bw", ".by", ".bz", ".ca", ".cc", ".cd", ".cf", ".cg", ".ch", ".ci", ".ck", ".cl", ".cm", ".cn", ".co", ".cr", ".cu", ".cv", ".cx", ".cy", ".cz", ".de", ".dj", ".dk", ".dm", ".do", ".dz", ".ec", ".ee", ".eg", ".er", ".es", ".et", ".eu", ".fi", ".fj", ".fk", ".fm", ".fo", ".fr", ".ga", ".gd", ".ge", ".gf", ".gg", ".gh", ".gi", ".gl", ".gm", ".gn", ".gp", ".gq", ".gr", ".gs", ".gt", ".gu", ".gw", ".gy", ".hk", ".hm", ".hn", ".hr", ".ht", ".hu", ".id", ".ie", ".il", ".im", ".in", ".io", ".iq", ".ir", ".is", ".it", ".je", ".jm", ".jo", ".jp", ".ke", ".kg", ".kh", ".ki", ".km", ".kn", ".kp", ".kr", ".kw", ".ky", ".kz", ".la", ".lb", ".lc", ".li", ".lk", ".lr", ".ls", ".lt", ".lu", ".lv", ".ly", ".ma", ".mc", ".md", ".me", ".mg", ".mh", ".mk", ".ml", ".mm", ".mn", ".mo", ".mp", ".mq", ".mr", ".ms", ".mt", ".mu", ".mv", ".mw", ".mx", ".my", ".mz", ".na", ".nc", ".ne", ".nf", ".ng", ".ni", ".nl", ".no", ".np", ".nr", ".nu", ".nz", ".om", ".pa", ".pe", ".pf", ".pg", ".ph", ".pk", ".pl", ".pn", ".pr", ".ps", ".pt", ".pw", ".py", ".qa", ".re", ".ro", ".rs", ".ru", ".rw", ".sa", ".sb", ".sc", ".sd", ".se", ".sg", ".sh", ".si", ".sk", ".sl", ".sm", ".sn", ".sr", ".st", ".su", ".sv", ".sy", ".sz", ".tc", ".td", ".tf", ".tg", ".th", ".tj", ".tk", ".tl", ".tm", ".tn", ".to", ".tr", ".tt", ".tv", ".tw", ".tz", ".ua", ".ug", ".uk", ".us", ".uy", ".uz", ".va", ".vc", ".ve", ".vg", ".vi", ".vn", ".vu", ".wf", ".ws", ".ye", ".za", ".zm", ".zw", ".um", ".bl", ".eh", ".mf", ".bv", ".gb", ".pm", ".sj", ".so", ".yt", ".tp", ".yu", ".cs", ".dd", ".zr"};
        String[] sep={".","_","-"};
        String next = "";
        for (int i = 0; i < 8; i++) {
            next += hira[r.nextInt(hira.length)];
        }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Contact us</title>
    </head>
    <body><div class="mail">
            <%for (int i = r.nextInt(150); i >= 0; i--) {
            String s = "";
            for (int j = r.nextInt(5) + 1; j >= 0; j--) {
                s += hira[r.nextInt(hira.length)];
            }
            for (int k = r.nextInt(3); k > 0; k--) {
                s += sep[r.nextInt(sep.length)];
            for (int j = r.nextInt(5) + 1; j >= 0; j--) {
                s += hira[r.nextInt(hira.length)];
            }
            }
            if(r.nextBoolean()){s += ""+r.nextInt(1000);}
            s += "@";
            for (int j = r.nextInt(5) + 1; j >= 0; j--) {
                s += hira[r.nextInt(hira.length)];
            }
            s += dom[r.nextInt(dom.length)];
            %><a href="mailto:<%=s%>"><%=s%></a><br/><%}%>
        <a href="<%=next%>">email</a></div>
        <p style="float:right">
            <a href="http://validator.w3.org/check?uri=referer"><img
                    src="http://www.pdsolution.it/img/logo_1.jpg"
                alt="Valid XHTML 1.1" height="15" width="80" /></a><br/>
            <a href="/mail/me"><img
                    src="/images/mail.gif"
                alt="mail me" height="15" width="80" /></a>
        </p>
    </body>
</html>
