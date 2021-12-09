<html>
    <head>
        <style>
             *{
                font-family: sans-serif;
                text-transform: capitalize; 
                outline: none; border:none;
            }
            html{
                font-size: 62.5%;                                                                      
            }
            section{
                padding:2rem 9%;
            }

            .heading{
                text-align: center;
                padding:50px;
                font-size:30px;
                color:blue;
                text-transform:uppercase;
            }

            .btn{
                width: 200px;
                margin-top: 1rem;
                background:Green;
                color:#fff;
                padding:.8rem 3rem;
                border:.2rem solid green;
                cursor: pointer;
                font-size: 1.7rem;
                margin-left: 100px;
            }
            .btn_cancel{
                width: 170px;
                margin-top: 1rem;
                background:red;
                color:#fff;
                padding:.8rem 3rem;
                border:.2rem solid red;
                cursor: pointer;
                font-size: 1.7rem;
                margin-left: 100px;
            }

            .btn:hover{
                background:rgba(145, 180, 237,.2);
                color:blue;
            }
            .contact .row{
                display: flex;
                gap:1.5rem;
                align-items: center;
            }

            .contact .row .image{
                flex:1 1 35rem;
            }

            .contact .row .image img{
                width:100%;
            }

            .contact .row form{
                flex:1 1 50rem;
                padding:2rem;
                box-shadow: 0 1rem 2rem rgb(226, 226, 125);
                border-radius: .5rem;
            }

            .contact .row form .inputBox{
                display: flex;
                justify-content: space-between;
            }

            .contact .row form .inputBox input, .contact .row form textarea{
                width:49%;
                margin:1rem 0;
                padding:1rem;
                font-size: 1.7rem;
                color:#333;
                background:#f7f7f7;
                text-transform: none;
            }

            .contact .row form textarea{
                height: 15rem;
                resize: none;
                width:100%;
            }
            </style>
            <link rel="stylesheet" href="resources/css/style.css">
    </head>
    <body>
    <header>
                <a href="#" class="logo"><span >Grocery shopping</span></a>
            
                <nav class="navbar">
                    <a  href="index"> home</a>
                    <a href="register">Register</a>
                    <a href="user">User</a>
                    <a  href="admin">Admin</a>
                     <a  href="contact">contact</a>
                </nav>
            </header>
            
            <section class="contact">
    
                    <h1 class="heading">
                        Contact Us Form
                    </h1>
                
                    <div class="row">
                
                        <form action="saveContact" method="post" modelAttribute="contact">
                        
                            <div class="inputBox">
                                <input type="text" placeholder="Name" name="name">
                                <input type="email" placeholder="Email" name="email">
                            </div>
                            <div class="inputBox">
                                <input type="number" placeholder="Contact No" name="contact_no">
                                <input type="text" placeholder="Subject" name="subject">
                            </div>
                            <textarea placeholder="Message" name="message" id="" cols="30" rows="10"></textarea>
                            <input type="submit" class="btn" value="send message" onclick="fun()">
                            <a href="index"><input type="button" class="btn_cancel" value="cancel"></a>
                        </form>
                    </div>                   
                </section>  
                <script>
                function fun(){
                    alert(" Thank you for contacting us.");
                }
                </script>             
    </body>
</html>