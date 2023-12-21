<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Акции</title>
    <link rel="stylesheet" href="../style/style.css">
    <link rel="stylesheet" href="../style/fonts2.css">
</head>
<body>
    <header>
        <div class="header_content">
            <div class="container">
                <div class="header_content-inner">
                    <div class="header_logo">
                        <a href="../index.html">
                            <img src="../img/logo.png" alt="" width="210">
                        </a>
                    </div>
                    <nav class="menu">
                        <div class="header_btn-menu">
                            <span class="icon_bars"></span>
                        </div>
                        <ul>
                            <li><a href="../index.html">О проекте</a></li>
                            <li><a href="#">Каталог</a></li>
                            <li><a href="sale.php">Акции</a></li>
                            <li><a href="gotohome.html">Доставка и оплата</a></li>
                        </ul>
                    </nav>
                    <div class="header-auth">
                        <a href="#" class="header_btn">Каталог товаров</a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <section>
        <div class="title-sale">
            <div class="container-item">
                <div class="title-sale-text">
                    Каталог товаров
                </div>
            </div>
        </div>
    </section>
    <section>
            <div class="section-sale-grid">
                <div class="container-item">
                    <div class="sale-grid">
                        <?php
                        $dbUser = 'root';
                        $dbName = 'food-at-house';
                        $dbPass = '';
                        $mysqli = new mysqli("localhost", $dbUser, $dbPass, $dbName);
                        $query = "set names utf8";
                        $mysqli->query($query);
                        $query = "select * from food";
                        $results = $mysqli->query($query);
                        while ($row = $results->fetch_assoc()) {
                            echo '<div class="sale-grid-item">
                            <div class="sale-grid-img">
                                <img src="../img/'.$row["img"].'" alt="" width="270px" height="220px">
                            </div>
                            <div class="sale-grid-title">
                            '.$row["title"].'
                            </div>
                            <div class="sale-grid-text">
                            '.$row["text"].'
                            </div>
                            
                                 <div class="sale-grid-price">
                                    <div class="sale-grid-price-1">
                                        '.$row["price"].' ₽
                                    </div>
                                    
                                </div>
                                <div class="sale-btn">
                                    <a href="../index.html#form" id="sale-btn">Купить</a>
                                </div>
                            </div>
                        
                        ';}
                    ?>
                    </div>
                </div>
            </div>
    </section>
    <footer class="footer">
        <div class="footer__content">
            <div class="container">
                <div class="footer__inner">
                    <div class="footer__info">
                        <div class="footer-title">
                            <div class="footer__title">
                                Все продукты в Барнауле на
                            </div>
                            <div class="footer__text">
                                дом — доставка бесплатно!
                            </div>
                        </div>
                        <a class="footer_btn" href="#" id="btn">
                            каталог товаров
                        </a>
                        <ul class="footer__list">
                            <li><a class="footer__phone" href="tel:83852252550">+7 3852 25 25 50</a></li>
                            <li><a href="#">eda-vdom.ru@yandex.ru</a></li>
                        </ul>
                    </div>
                    <div class="footer__map">
                        <iframe height="250px"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2381.423820880641!2d83.69176027668077!3d53.353569572291406!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x42dda3a75475b175%3A0x5d2214074c2a76b5!2z0YPQuy4g0J7QvNGB0LrQsNGPLCAxMiwg0JHQsNGA0L3QsNGD0LssINCQ0LvRgtCw0LnRgdC60LjQuSDQutGA0LDQuSwgNjU2MDY2!5e0!3m2!1sru!2sru!4v1689674623189!5m2!1sru!2sru"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>
                        