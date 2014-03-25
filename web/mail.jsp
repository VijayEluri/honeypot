<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
%><html>
  <head>
    <title>Contact us</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="/stylesheets/css.css" type="text/css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  </head>
  <body>
    <article>
      <%
        for (int i = r.nextInt(150); i >= 0; i--) {
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
    %>
      <a href="mailto:<%=s%>"><%=s%></a><br/><%}%>
      <a href="<%=next%>">email</a>
    </article>
    <footer>
      <a href="/mail/me">
        <img src="/images/mail.gif" alt="mail me"/>
      </a>
    </footer>
  </body>
</html>
