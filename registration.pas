program ex;
uses wincrt;
type
tab=array[1..100] of string;
var
t:tab;
i:integer;
f:text;
procedure inscription (var t:tab);
var
ch,ch1,ch2,ch3,ch4,ch5:string;
begin
t[1]:='<!DOCTYPE html>';
t[2]:='<html>';
t[3]:='<head>';
writeln('page frame color');
readln(ch);
t[4]:='<meta name="viewport" content="width=device-width, initial-scale=1">';
t[5]:='<style>';
t[6]:='body {';
t[7]:='    font-family: Arial, Helvetica, sans-serif;';
t[8]:='    background-color:#'+ch+';';
t[9]:='}';
t[10]:='';
t[11]:='* {';
t[12]:='    box-sizing: border-box;';
t[13]:='}';
t[14]:='';
t[15]:='/* Add padding to containers */';
t[16]:='.container {';
t[17]:='    padding: 16px;';
writeln('background color');
readln(ch1);
t[18]:='    background-color:#'+ch1+';';
t[19]:='}';
t[20]:='';
t[21]:='/* Full-width input fields */';
writeln('input background color');
readln(ch2);
t[22]:='input[type=text], input[type=password] {';
t[23]:='    width: 100%;';
t[24]:='    padding: 15px;';
t[25]:='    margin: 5px 0 22px 0;';
t[26]:='    display: inline-block;';
t[27]:='    border: none;';
t[28]:='    background: #'+ch2+';';
t[29]:='}';
t[30]:='';
writeln('input focus color');
readln(ch3);
t[31]:='input[type=text]:focus, input[type=password]:focus {';
t[32]:='    background-color: #'+ch3+';';
t[33]:='    outline: none;';
t[34]:='}';
t[35]:='';
t[36]:='/* Overwrite default styles of hr */';
t[37]:='hr {';
t[38]:='    border: 1px solid #f1f1f1;';
t[39]:='    margin-bottom: 25px;';
t[40]:='}';
t[41]:='';
t[42]:='/* Set a style for the submit button */';
writeln('register button color');
readln(ch4);
t[43]:='.registerbtn {';
t[44]:='    background-color: #4CAF50;';
t[45]:='    color: white;';
t[46]:='    padding: 16px 20px;';
t[47]:='    margin: 8px 0;';
t[48]:='    border: none;';
t[49]:='    cursor: pointer;';
t[50]:='    width: 100%;';
t[51]:='    opacity: 0.9;';
t[52]:='}';
t[53]:='';
t[54]:='.registerbtn:hover {';
t[55]:='    opacity: 1;';
t[56]:='}';
t[57]:='';
t[58]:='/* Add a blue text color to links */';
writeln('links text color');
readln(ch5);
t[59]:='a {';
t[60]:='    color: dodgerblue;';
t[61]:='}';
t[62]:='';
t[63]:='/* Set a grey background color and center the text of the "sign in" section */';
t[64]:='.signin {';
t[65]:='    background-color: #'+ch5+';';
t[66]:='    text-align: center;';
t[67]:='}';
t[68]:='</style>';
t[69]:='</head>';
t[70]:='<body>';
t[71]:='';
t[72]:='<form action="/action_page.php">';
t[73]:='  <div class="container">';
t[74]:='    <h1>Register</h1>';
t[75]:='    <p>Please fill in this form to create an account.</p>';
t[76]:='    <hr>';
t[77]:='';
t[78]:='    <label for="email"><b>Email</b></label>';
t[79]:='    <input type="text" placeholder="Enter Email" name="email" required>';
t[80]:='';
t[81]:='    <label for="psw"><b>Password</b></label>';
t[82]:='    <input type="password" placeholder="Enter Password" name="psw" required>';
t[83]:='';
t[84]:='    <label for="psw-repeat"><b>Repeat Password</b></label>';
t[85]:='    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>';
t[86]:='    <hr>';
t[87]:='    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>';
t[88]:='';
t[89]:='    <button type="submit" class="registerbtn">Register</button>';
t[90]:='  </div>';
t[91]:='  ';
t[92]:='  <div class="container signin">';
t[93]:='    <p>Already have an account? <a href="#">Sign in</a>.</p>';
t[94]:='  </div>';
t[95]:='</form>';
t[96]:='';
t[97]:='</body>';
t[98]:='</html>';



end;


begin

inscription(t);
assign(f,'registration.html');
rewrite(f);
for i:=1 to 98 do
begin
writeln(f,t[i]);
end;
close(f);
end.