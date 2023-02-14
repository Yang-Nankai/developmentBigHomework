<?php

/** @var yii\web\View $this */
use common\widgets\Alert;
use frontend\assets\AppAsset;
use yii\bootstrap5\Breadcrumbs;
use yii\bootstrap5\Html;

$this->title = 'Topic – Russia-Ukraine Conflict';
?>
<!doctype html>
<html class="no-js" lang="zxx">

<body>
    <!--slide banner section start-->
    <div class="hero_banner_section d-flex align-items-center mb-110">
        <div class="container">
            <div class="hero_banner_inner">
                <div class="row align-items-center">
                    <div class="col-lg-5">
                        <div class="hero_content">
                            <h3 class="wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s"><span>重点</span>
                                关注</h3>
                            <h1 class="wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1.2s">俄乌冲突</h1>
                            <h5 class="btn btn-link wow fadeInUp" data-wow-delay="0.3s" data-wow-duration="1.3s" id="scrollDown">往下阅读更多-></h5>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="hero_shape_banner">
                            <img class="banner_keyframes_animation wow" src="img/bg/crown-globe.png"
                                alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--slider area end-->

    <!-- service section start-->
    <div id="down" class="service_section mb-86">
        <div class="section_title text-center mb-55">
            <h2>战场数据</h2>
            <p>更新于2023/01/28</p>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="services_section_inner d-flex justify-content-between">
                        <div class="single_services one text-center wow fadeInUp" data-wow-delay="0.1s"
                            data-wow-duration="1.1s">
                            <div class="services_thumb">
                                <img src="img/others/11 (1).png" alt="">
                            </div>
                            <div class="services_content">
                                <h3>累计冲突事件</a></h3>
                                <p>35,294 件</p>
                            </div>
                        </div>
                        <div class="single_services two text-center wow fadeInUp" data-wow-delay="0.2s"
                            data-wow-duration="1.2s">
                            <div class="services_thumb">
                                <img src="img/others/11 (2).png" alt="">
                            </div>
                            <div class="services_content">
                                <h3>俄方伤亡人数</a></h3>
                                <p>12.5 万人</p>
                            </div>
                        </div>
                        <div class="single_services three text-center wow fadeInUp" data-wow-delay="0.3s"
                            data-wow-duration="1.3s">
                            <div class="services_thumb">
                                <img src="img/others/11 (3).png" alt="">
                            </div>
                            <div class="services_content">
                                <h3>累计平民伤亡</a></h3>
                                <p>18483 人</p>
                            </div>
                        </div>
                        <div class="single_services four text-center wow fadeInUp" data-wow-delay="0.4s"
                            data-wow-duration="1.4s">
                            <div class="services_thumb">
                                <img src="img/others/11 (4).png" alt="">
                            </div>
                            <div class="services_content">
                                <h3>乌方伤亡人数</a></h3>
                                <p>10 万人</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- service section end-->

    <!-- banner section  start -->
    <div class="banner_section mb-105">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s">
                        <div class="banner_thumb">
                            <img src="https://www.reuters.com/graphics/USA-WEATHER/EXPLAINER/jnpwywglapw/cdn/images/share-card.jpg" alt="" style="filter:opacity(0.5);">
                            <div class="banner_text">
                                <!-- <h3><span>70%</span> Sale Off</h3> -->
                                <h2>Ukraine <br>
                                    数据网站</h2>
                                <a class="btn btn-link" href="https://data.humdata.org/visualization/ukraine-humanitarian-operations/?tab=map-view">点击查看</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1.2s">
                        <div class="banner_thumb">
                            <a href="#"><img src="https://www.reuters.com/graphics/BRAZIL-POLITICS/RIOTS/gkplwxqggvb/cdn/images/share-card.jpg" alt="" style="filter:opacity(0.5);"></a>
                            <div class="banner_text">
                                <!-- <h3><span>25%</span> Sale Off</h3> -->
                                <h2>Russia <br>
                                    数据网站</h2>
                                <a class="btn btn-link" href="shop-left-sidebar.html">点击查看</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- banner section end -->

    <!-- TimeLine -->
    <section class="body-text">
        <div class="section_title text-center mb-55">
            <h2>俄乌冲突重要事件</h2>
            <p>更新于2023/01/28</p>
        </div>

        <div class="timeline svelte-lyo1l7">
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">May 18</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Mariupol defenders surrender to Russia but their fate is
                            uncertain
                        </h6><br/>
                    <p class="svelte-lyo1l7">More than 250 Ukrainian fighters surrendered to Russian forces at
                        the Azovstal steelworks in Mariupol after weeks of desperate resistance, bringing an end
                        to the most devastating siege of Russia&#39;s war in Ukraine and allowing President
                        Vladimir Putin to claim a rare victory in his faltering campaign.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">May 10</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">U.S. House passes $40 bln bill to bolster Ukraine against
                            Russian invasion 
                        </h6><br/>
                    <p class="svelte-lyo1l7">The U.S. House of Representatives approved more than $40 billion
                        more aid for Ukraine on Tuesday, as Congress races to keep military aid flowing and
                        boost the government in Kyiv as it grapples with the Russian invasion.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Apr. 28</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Russian-controlled region of Ukraine will start using rouble
                        </h6><br/>
                    <p class="svelte-lyo1l7">Ukraine&#39;s southern Kherson region will start using the Russian
                        rouble from May 1, an official from a pro-Russian committee which styles itself as the
                        region&#39;s &quot;military-civil administration&quot; told Russian news agency RIA.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Apr. 27</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Russia halts gas supplies to Poland and Bulgaria </h6> <br/>
                    <p class="svelte-lyo1l7">The Security Council of Moldova&#39;s breakaway Transdniestria
                        region has reported a &quot;terrorist attack&quot; on a military unit near the city of
                        Tiraspol, the TASS news agency reported on Tuesday.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Apr. 26</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Military unit in Moldovan breakaway region hit by
                            &#39;terrorist attack&#39; - media </h6><br/>
                    <p class="svelte-lyo1l7">The Security Council of Moldova&#39;s breakaway Transdniestria
                        region has reported a &quot;terrorist attack&quot; on a military unit near the city of
                        Tiraspol, the TASS news agency reported on Tuesday.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Apr. 8</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Death toll from Kramatorsk missile strike rises to 57, Ukraine
                            official says </h6><br/>
                    <p class="svelte-lyo1l7">At least 57 people were killed in a missile strike on a railway
                        station in east Ukraine that was packed with women, children and elderly trying to flee
                        fighting, Ukrainian authorities said.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Apr. 7</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">U.N. suspends Russia from human rights body, Moscow then quits
                        </h6><br/>
                    <p class="svelte-lyo1l7">The United Nations General Assembly suspended Russia from the U.N.
                        Human Rights Council over reports of &quot;gross and systematic violations and abuses of
                        human rights&quot; in Ukraine, prompting Moscow to announce it was quitting the body.
                    </p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Apr. 4</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Germany says West to agree more sanctions on Russia after
                            Bucha killings </h6><br/>
                    <p class="svelte-lyo1l7">Germany said on Sunday that the West would agree to impose more
                        sanctions on Russia in the coming days after Ukraine accused Russian forces of war
                        crimes near Kyiv, ratcheting up the already vast economic pressure on Russia over its
                        invasion.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- product section start -->
    <div class="product_section mb-80 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s">
        <div class="container">
            <div class="section_title text-center mb-55">
                <h2>俄乌战争图片</h2>
            </div>
            <div class="row product_slick slick_navigation slick__activation" data-slick='{
                "slidesToShow": 4,
                "slidesToScroll": 1,
                "arrows": true,
                "dots": false,
                "autoplay": false,
                "speed": 300,
                "infinite": true ,  
                "responsive":[ 
                  {"breakpoint":992, "settings": { "slidesToShow": 3 } }, 
                  {"breakpoint":768, "settings": { "slidesToShow": 2 } }, 
                  {"breakpoint":500, "settings": { "slidesToShow": 1 } }  
                 ]                                                     
            }'>
                <div class="col-lg-3">
                    <article class="single_product">
                        <figure>
                            <div class="product_thumb">
                                <img src="img/product/1.png" alt="">
                            </div>
                        </figure>
                    </article>
                </div>
                <div class="col-lg-3">
                    <article class="single_product">
                        <figure>
                            <div class="product_thumb">
                                <img src="img/product/2.png" alt="">
                            </div>
                        </figure>
                    </article>
                </div>
                <div class="col-lg-3">
                    <article class="single_product">
                        <figure>
                            <div class="product_thumb">
                                <img src="img/product/3.png" alt="">
                            </div>
                        </figure>
                    </article>
                </div>
                <div class="col-lg-3">
                    <article class="single_product">
                        <figure>
                            <div class="product_thumb">
                                <img src="img/product/4.png" alt="">
                            </div>
                        </figure>
                    </article>
                </div>
                <div class="col-lg-3">
                    <article class="single_product">
                        <figure>
                            <div class="product_thumb">
                                <img src="img/product/5.png" alt="">
                            </div>
                        </figure>
                    </article>
                </div>
            </div>
        </div>
    </div>
    <!-- product section end -->

    <!-- blog section start -->
    <div class="blog_section mb-90">
        <div class="container">
            <div class="section_title text-center wow fadeInUp mb-50" data-wow-delay="0.1s" data-wow-duration="1.1s">
                <h2>最新新闻</h2>
            </div>
            <div class="row blog_inner slick__activation" data-slick='{
                "slidesToShow": 3,
                "slidesToScroll": 1,
                "arrows": false,
                "dots": false,
                "autoplay": false,
                "speed": 300,
                "infinite": true ,  
                "responsive":[  
                  {"breakpoint":992, "settings": { "slidesToShow": 2 } },  
                  {"breakpoint":576, "settings": { "slidesToShow": 1 } }  
                 ]                                                     
            }'>
            <?php
                foreach($models as $model):
                    ?>
                <div class="col-lg-4">
                    <div class="single_blog wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s">
                        <div class="blog_thumb">
                            <img src="https://www.reuters.com/graphics/UKRAINE-CRISIS/FOOD/zjvqkgomjvx/cdn/images/sharecard.png" alt="">
                        </div>
                        <div class="blog_content">
                            <div class="blog_arrow_btn">
                                <a href="<?php echo \yii\helpers\Url::to(['blog/view', 'id'=>$model->id]); ?>"><i class="ion-arrow-right-c"></i></a>
                            </div>
                            <span>俄乌冲突</span>
                            <h3><?php echo Html::encode($model->title);?></h3>
                            <div class="blog__meta d-flex align-items-center">
                                <div class="blog__meta__text">
                                    <ul class="d-flex">
                                        <li>By: <?php echo Html::encode($model->author);?></li>
                                        <li><i class="icofont-calendar"></i>
                                            <?php
                                                $datetime = new \DateTime();
                                                $datetime->setTimestamp($model->created_at);
                                                echo $datetime->format('Y-m-d H:i:s');
                                            ?>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php
            endforeach;
            ?>
            </div>
        </div>
    </div>
    <!-- blog section end -->

</body>

</html>