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
                                <img src="img/others/data1.png" alt="">
                            </div>
                            <div class="services_content">
                                <h3><a href="shop-left-sidebar.html">累计冲突事件</a></h3>
                                <p>35,294 件</p>
                            </div>
                        </div>
                        <div class="single_services two text-center wow fadeInUp" data-wow-delay="0.2s"
                            data-wow-duration="1.2s">
                            <div class="services_thumb">
                                <img src="img/others/data2.png" alt="">
                            </div>
                            <div class="services_content">
                                <h3><a href="shop-left-sidebar.html">俄方伤亡人数</a></h3>
                                <p>12.5 万人</p>
                            </div>
                        </div>
                        <div class="single_services three text-center wow fadeInUp" data-wow-delay="0.3s"
                            data-wow-duration="1.3s">
                            <div class="services_thumb">
                                <img src="img/others/data3.png" alt="">
                            </div>
                            <div class="services_content">
                                <h3><a href="shop-left-sidebar.html">累计平民伤亡</a></h3>
                                <p>18483 人</p>
                            </div>
                        </div>
                        <div class="single_services four text-center wow fadeInUp" data-wow-delay="0.4s"
                            data-wow-duration="1.4s">
                            <div class="services_thumb">
                                <img src="img/others/data4.png" alt="">
                            </div>
                            <div class="services_content">
                                <h3><a href="shop-left-sidebar.html">乌方伤亡人数</a></h3>
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
                            <a href="#"><img src="img/bg/1.png" alt=""></a>
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
                            <a href="#"><img src="img/bg/2.png" alt=""></a>
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
    <!-- banner section  end -->

    <!-- product section start -->
    <div class="product_section mb-80 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s">
        <div class="container">
            <div class="product_header">
                <div class="section_title text-center">
                    <h2>俄乌战争五大阶段</h2>
                </div>
                <div class="product_tab_button">
                    <ul class="nav justify-content-center" role="tablist" id="nav-tab">
                        <li>
                            <a class="active" data-toggle="tab" href="#features" role="tab" aria-controls="features"
                                aria-selected="false">第一阶段 </a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#seller" role="tab" aria-controls="seller" aria-selected="false">
                                第二阶段 </a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#sales" role="tab" aria-controls="sales"
                                aria-selected="false">第三阶段 </a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#sales" role="tab" aria-controls="sales"
                                aria-selected="false">第四阶段 </a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#sales" role="tab" aria-controls="sales"
                                aria-selected="false">第五阶段 </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 俄乌战争四大阶段 -->
            <main class="layout" id="content-inner">
                <div class="recent-posts" id="recent-posts">
                  <div class="recent-post-item">
                    <div class="post_cover"><a href="https://butterfly.js.org/posts/21cfbf15/" title="Butterfly 安裝文檔(一) 快速開始"
                        data-pjax-state=""><img class="post-bg entered error"
                          src="./Butterfly - A Simple and Card UI Design theme for Hexo_files/404.jpg"
                          data-lazy-src="https://fastly.jsdelivr.net/gh/jerryc127/CDN/img/butterfly-docs-01-cover.png"
                          onerror="this.onerror=null,this.src=&quot;/img/404.jpg&quot;" alt="Butterfly 安装文档（一） 快速开始"
                          data-ll-status="error" _mstalt="101059543" _msthash="45"></a></div>
                    <div class="recent-post-info"><a class="article-title" href="https://butterfly.js.org/posts/21cfbf15/"
                        title="第一阶段" data-pjax-state="" _msttexthash="101059543" _msthash="46">第一阶段</a>
                      <div class="article-meta-wrap"><span class="article-meta"><i class="fas fa-thumbtack sticky"></i>
                        </span><span class="post-meta-date"><i class="far fa-calendar-alt"></i>发表于</span><time datetime="2020-05-28T14:31:46.000Z"
                              title="發表於 2020-05-28 22:31:46" style="display: inline;" _mstmutation="1"
                              _istranslated="1">2020-05-28</time>
                        </span><span class="article-meta">
                          |</span> <a class="article-meta__categories"
                              href="https://butterfly.js.org/categories/Docs%E6%96%87%E6%AA%94/" data-pjax-state="" _mstmutation="1"
                              _istranslated="1">Docs文档</a><i class="fas fa-inbox"></i>
                        </span><span class="article-meta">
                         <span
                                class="article-meta-separator" _mstmutation="1" _istranslated="1">|</span> <span
                                class="article-meta-label" _mstmutation="1" _istranslated="1">条评论</span> <a
                              href="https://butterfly.js.org/posts/21cfbf15/#post-comment" data-pjax-state="" _mstmutation="1"
                              _istranslated="1"><span class="waline-comment-count" id="/posts/21cfbf15/" _msttexthash="4368"
                                _msthash="239" _istranslated="1">0</span></a>
                         <i class="fas fa-comments"></i>
                        </span></div>
                      <div class="content" _msttexthash="13490180405" _msthash="51">📖
                        本教程更新于2023年01月18日，教程的内容针对最新稳定版而更新（不知道啊...</div>
                    </div>
                  </div>
                  <div class="recent-post-item">
                    <div class="post_cover"><a href="https://butterfly.js.org/posts/ea33ab97/" title="自定義側邊欄" data-pjax-state=""><img
                          class="post-bg entered error" src="./Butterfly - A Simple and Card UI Design theme for Hexo_files/404.jpg"
                          data-lazy-src="https://fastly.jsdelivr.net/gh/jerryc127/CDN/img/aside-diy-cover.png"
                          onerror="this.onerror=null,this.src=&quot;/img/404.jpg&quot;" alt="自定义侧边栏" data-ll-status="error"
                          _mstalt="19877988" _msthash="52"></a></div>
                    <div class="recent-post-info"><a class="article-title" href="https://butterfly.js.org/posts/ea33ab97/"
                        title="第二阶段" data-pjax-state="" _msttexthash="19877988" _msthash="53">第二阶段</a>
                      <div class="article-meta-wrap"><span class="post-meta-date"><i class="far fa-calendar-alt"></i>
                          <font _mstmutation="1" _msttexthash="8028293" _msthash="54"><span class="article-meta-label"
                              _mstmutation="1" _istranslated="1">发表于</span><time datetime="2020-12-30T13:48:10.000Z"
                              title="發表於 2020-12-30 21:48:10" style="display: inline;" _mstmutation="1"
                              _istranslated="1">2020-12-30</time></font>
                        </span><span class="article-meta">
                          <font _mstmutation="1" _msttexthash="16181009" _msthash="55"><span class="article-meta-separator"
                              _mstmutation="1" _istranslated="1">|</span> <a class="article-meta__categories"
                              href="https://butterfly.js.org/categories/%E9%80%B2%E9%9A%8E%E6%95%99%E7%A8%8B/" data-pjax-state=""
                              _mstmutation="1" _istranslated="1">进阶教程</a></font><i class="fas fa-inbox"></i>
                        </span><span class="article-meta">
                          <font _mstmutation="1" _msttexthash="11606868" _msthash="1">
                            <font _mstmutation="1" _msttexthash="11600004" _msthash="56" _istranslated="1"><span
                                class="article-meta-separator" _mstmutation="1" _istranslated="1">|</span> <span
                                class="article-meta-label" _mstmutation="1" _istranslated="1">条评论</span></font> <a
                              href="https://butterfly.js.org/posts/ea33ab97/#post-comment" data-pjax-state="" _mstmutation="1"
                              _istranslated="1"><span class="waline-comment-count" id="/posts/ea33ab97/" _msttexthash="4368"
                                _msthash="238" _istranslated="1">0</span></a>
                          </font><i class="fas fa-comments"></i>
                        </span></div>
                      <div class="content" _msttexthash="5494571732" _msthash="57">适用于&gt;= 3.8.0 侧边栏现在支持自定义了，可以添加自己喜欢的 widget。 可添加自己的
                        widget，也可以对现有的 widget 进行排序（博客资料和 公告这两个固定，其它的能排序） widget 排序只需要配置 sort_order就行。 （使用了 Flex 布局的 order 属性，具体可查看
                        mozilla 文档。 简单来讲，就是配置数字来实现排序，如果不配置，则默认为 0。 数字越小，排序越靠前。 12345678910111213141516aside: ... card_recent_post:
                        sort_order: # Don't modify the setting unless you know how it works card_categories: sort_order: # Don't
                        modify the setting unless you know how it works card_tags: sort_order: # Don't modify the setting ...</div>
                    </div>
                  </div>
                  <div class="recent-post-item">
                    <div class="post_cover left"><a href="https://butterfly.js.org/posts/c9711c19/" title="當設置 top_img 為 false 時"
                        data-pjax-state=""><img class="post-bg entered error"
                          src="./Butterfly - A Simple and Card UI Design theme for Hexo_files/404.jpg"
                          data-lazy-src="https://fastly.jsdelivr.net/gh/jerryc127/CDN/img/when-set-the-top-img-to-false.png"
                          onerror="this.onerror=null,this.src=&quot;/img/404.jpg&quot;" alt="当设置 top_img为 false 时"
                          data-ll-status="error" _mstalt="22250644" _msthash="58"></a></div>
                    <div class="recent-post-info"><a class="article-title" href="https://butterfly.js.org/posts/c9711c19/"
                        title="第三阶段" data-pjax-state="" _msttexthash="22250644" _msthash="59">第三阶段</a>
                      <div class="article-meta-wrap"><span class="post-meta-date"><i class="far fa-calendar-alt"></i>
                          <font _mstmutation="1" _msttexthash="8029619" _msthash="60"><span class="article-meta-label"
                              _mstmutation="1" _istranslated="1">发表于</span><time datetime="2020-10-28T06:15:34.000Z"
                              title="發表於 2020-10-28 14:15:34" style="display: inline;" _mstmutation="1"
                              _istranslated="1">2020-10-28</time></font>
                        </span><span class="article-meta">
                          <font _mstmutation="1" _msttexthash="60216" _msthash="61"><span class="article-meta-separator"
                              _mstmutation="1" _istranslated="1">|</span> <a class="article-meta__categories"
                              href="https://butterfly.js.org/categories/Demo/" data-pjax-state="" _mstmutation="1"
                              _istranslated="1">Demo</a></font><i class="fas fa-inbox"></i>
                        </span><span class="article-meta">
                          <font _mstmutation="1" _msttexthash="11606868" _msthash="2">
                            <font _mstmutation="1" _msttexthash="11600004" _msthash="62" _istranslated="1"><span
                                class="article-meta-separator" _mstmutation="1" _istranslated="1">|</span> <span
                                class="article-meta-label" _mstmutation="1" _istranslated="1">条评论</span></font> <a
                              href="https://butterfly.js.org/posts/c9711c19/#post-comment" data-pjax-state="" _mstmutation="1"
                              _istranslated="1"><span class="waline-comment-count" id="/posts/c9711c19/" _msttexthash="4368"
                                _msthash="237" _istranslated="1">0</span></a>
                          </font><i class="fas fa-comments"></i>
                        </span></div>
                      <div class="content" _msttexthash="105732731" _msthash="63">当设置 top_img 为 false 时，不显示顶部图</div>
                    </div>
                  </div>
                  <div class="recent-post-item">
                    <div class="post_cover left"><a href="https://butterfly.js.org/posts/c9711c19/" title="當設置 top_img 為 false 時"
                        data-pjax-state=""><img class="post-bg entered error"
                          src="./Butterfly - A Simple and Card UI Design theme for Hexo_files/404.jpg"
                          data-lazy-src="https://fastly.jsdelivr.net/gh/jerryc127/CDN/img/when-set-the-top-img-to-false.png"
                          onerror="this.onerror=null,this.src=&quot;/img/404.jpg&quot;" alt="当设置 top_img为 false 时"
                          data-ll-status="error" _mstalt="22250644" _msthash="58"></a></div>
                    <div class="recent-post-info"><a class="article-title" href="https://butterfly.js.org/posts/c9711c19/"
                        title="第四阶段" data-pjax-state="" _msttexthash="22250644" _msthash="59">第四阶段</a>
                      <div class="article-meta-wrap"><span class="post-meta-date"><i class="far fa-calendar-alt"></i>
                          <font _mstmutation="1" _msttexthash="8029619" _msthash="60"><span class="article-meta-label"
                              _mstmutation="1" _istranslated="1">发表于</span><time datetime="2020-10-28T06:15:34.000Z"
                              title="發表於 2020-10-28 14:15:34" style="display: inline;" _mstmutation="1"
                              _istranslated="1">2020-10-28</time></font>
                        </span><span class="article-meta">
                          <font _mstmutation="1" _msttexthash="60216" _msthash="61"><span class="article-meta-separator"
                              _mstmutation="1" _istranslated="1">|</span> <a class="article-meta__categories"
                              href="https://butterfly.js.org/categories/Demo/" data-pjax-state="" _mstmutation="1"
                              _istranslated="1">Demo</a></font><i class="fas fa-inbox"></i>
                        </span><span class="article-meta">
                          <font _mstmutation="1" _msttexthash="11606868" _msthash="2">
                            <font _mstmutation="1" _msttexthash="11600004" _msthash="62" _istranslated="1"><span
                                class="article-meta-separator" _mstmutation="1" _istranslated="1">|</span> <span
                                class="article-meta-label" _mstmutation="1" _istranslated="1">条评论</span></font> <a
                              href="https://butterfly.js.org/posts/c9711c19/#post-comment" data-pjax-state="" _mstmutation="1"
                              _istranslated="1"><span class="waline-comment-count" id="/posts/c9711c19/" _msttexthash="4368"
                                _msthash="237" _istranslated="1">0</span></a>
                          </font><i class="fas fa-comments"></i>
                        </span></div>
                      <div class="content" _msttexthash="105732731" _msthash="63">当设置 top_img 为 false 时，不显示顶部图</div>
                    </div>
                  </div>
                  <div class="recent-post-item">
                    <div class="post_cover left"><a href="https://butterfly.js.org/posts/c9711c19/" title="當設置 top_img 為 false 時"
                        data-pjax-state=""><img class="post-bg entered error"
                          src="./Butterfly - A Simple and Card UI Design theme for Hexo_files/404.jpg"
                          data-lazy-src="https://fastly.jsdelivr.net/gh/jerryc127/CDN/img/when-set-the-top-img-to-false.png"
                          onerror="this.onerror=null,this.src=&quot;/img/404.jpg&quot;" alt="当设置 top_img为 false 时"
                          data-ll-status="error" _mstalt="22250644" _msthash="58"></a></div>
                    <div class="recent-post-info"><a class="article-title" href="https://butterfly.js.org/posts/c9711c19/"
                        title="第五阶段" data-pjax-state="" _msttexthash="22250644" _msthash="59">第五阶段</a>
                      <div class="article-meta-wrap"><span class="post-meta-date"><i class="far fa-calendar-alt"></i>
                          <font _mstmutation="1" _msttexthash="8029619" _msthash="60"><span class="article-meta-label"
                              _mstmutation="1" _istranslated="1">发表于</span><time datetime="2020-10-28T06:15:34.000Z"
                              title="發表於 2020-10-28 14:15:34" style="display: inline;" _mstmutation="1"
                              _istranslated="1">2020-10-28</time></font>
                        </span><span class="article-meta">
                          <font _mstmutation="1" _msttexthash="60216" _msthash="61"><span class="article-meta-separator"
                              _mstmutation="1" _istranslated="1">|</span> <a class="article-meta__categories"
                              href="https://butterfly.js.org/categories/Demo/" data-pjax-state="" _mstmutation="1"
                              _istranslated="1">Demo</a></font><i class="fas fa-inbox"></i>
                        </span><span class="article-meta">
                          <font _mstmutation="1" _msttexthash="11606868" _msthash="2">
                            <font _mstmutation="1" _msttexthash="11600004" _msthash="62" _istranslated="1"><span
                                class="article-meta-separator" _mstmutation="1" _istranslated="1">|</span> <span
                                class="article-meta-label" _mstmutation="1" _istranslated="1">条评论</span></font> <a
                              href="https://butterfly.js.org/posts/c9711c19/#post-comment" data-pjax-state="" _mstmutation="1"
                              _istranslated="1"><span class="waline-comment-count" id="/posts/c9711c19/" _msttexthash="4368"
                                _msthash="237" _istranslated="1">0</span></a>
                          </font><i class="fas fa-comments"></i>
                        </span></div>
                      <div class="content" _msttexthash="105732731" _msthash="63">当设置 top_img 为 false 时，不显示顶部图</div>
                    </div>
                  </div>
                </div>
            </main>
        </div>
    </div>
    <!-- product section end -->

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
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Mar. 21</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Ukraine defies Russian demand to lay down arms in Mariupol
                        </h6><br/>
                    <p class="svelte-lyo1l7">Russia&#39;s military had ordered Ukrainians inside the besieged
                        southeastern city to surrender by 5 a.m., saying that those who do so would be permitted
                        to leave through safe corridors.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Mar. 10</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Ukraine says Russian troops at gas compressor stations pose
                            supply risk </h6><br/>
                    <p class="svelte-lyo1l7">The arrival of Russian troops at two gas compressor stations in
                        eastern Ukraine poses a risk to European supplies, Ukraine&#39;s gas pipeline operator
                        warned on Thursday, although there were no signs of an immediate impact on flows.</p>
                </div>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Russia shifts line on Ukraine hospital bombing </h6><br/>
                    <p class="svelte-lyo1l7">Russia shifted its stance over the bombing of a Ukrainian hospital
                        in the city of Mariupol, with a mix of statements that veered between aggressive denials
                        and a call to establish clear facts.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Mar. 9</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Ukraine accuses Russia of genocide after bombing of
                            children&#39;s hospital </h6>
                    <p class="svelte-lyo1l7">The Mariupol city council said the hospital had been hit several
                        times in what the White House called a &quot;barbaric use of military force to go after
                        innocent civilians&quot;.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Mar. 6</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Fighting traps residents in Mariupol </h6><br/>
                    <p class="svelte-lyo1l7">Fighting stopped about 200,000 people from evacuating the besieged
                        Ukrainian city of Mariupol for a second day in a row on Sunday, as Russian President
                        Vladimir Putin vowed to press ahead with his invasion unless Kyiv surrendered.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Mar. 4</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Mariupol subjected to intense strikes </h6><br/>
                    <p class="svelte-lyo1l7">Mariupol under Ukrainian control but subject to intense strikes, UK
                        says.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Mar. 3</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Ukraine, Russia make progress on evacuation corridors as war
                            rages </h6> <br/>
                    <p class="svelte-lyo1l7">Russia and Ukraine have agreed on the need to set up humanitarian
                        corridors and a possible ceasefire around them for fleeing civilians.</p>
                </div>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Tens of millions of people in Ukraine in &quot;potentially
                            mortal danger&quot; </h6><br/>
                    <p class="svelte-lyo1l7">Military operations escalate with bombings of major cities and
                        reports of cluster weapons striking civilian targets, according to a U.N. human rights
                        official.</p>
                </div>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">&quot;We are being destroyed,&quot; city council of
                            Ukraine&#39;s Mariupol says </h6><br/>
                    <p class="svelte-lyo1l7">Mariupol city council said Russian forces were constantly and
                        deliberately shelling vital civilian infrastructure in the southeastern Ukrainian port,
                        leaving it without water, heating or power and preventing bringing supplies or
                        evacuating people.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Mar. 2</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Kharkiv under siege </h6><br/>
                    <p class="svelte-lyo1l7">On a residential street in the Ukrainian city of Kharkiv, debris
                        was strewn all around, blood stained the ground and the bodies of people carried from
                        destroyed homes lay covered in blankets.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Mar. 1</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Attacks continue in Kyiv and Kharkiv </h6> <br/>
                    <p class="svelte-lyo1l7">Nearly a week since Moscow unleashed its war on its neighbour, its
                        troops have failed to capture a single major Ukrainian city after running into fierce
                        resistance. Deadly shelling of civilian areas in Kharkiv indicated that frustrated
                        Russian commanders could resort to more devastating tactics to achieve the goals of
                        their invasion.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Feb. 28</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Human rights groups and Ukrainian ambassador accuse Russia of
                            using cluster and vacuum bombs </h6> <br/>
                    <p class="svelte-lyo1l7">These weapons have been condemned by a variety of international
                        organisations.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Feb. 27</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Russians push into Kharkiv </h6><br/>
                    </a>
                    <p class="svelte-lyo1l7">Russian soldiers and armoured vehicles were seen in different parts
                        of Ukraine’s second-largest city and explosions rocked oil and gas installations.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Feb. 26</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">West to kick Russian banks out of SWIFT </h6><br/>
                    </a>
                    <p class="svelte-lyo1l7">The United States and its allies moved to block certain Russian
                        banks’ access to the SWIFT international payment system, a major step that seemed all
                        but off-the-table for many European nations just days before.</p>
                </div>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Germany sends defensive weapons </h6><br/>
                    <p class="svelte-lyo1l7">Chancellor Olaf Scholz said Berlin would supply Ukraine with 1,000
                        anti-tank weapons and 500 Stinger surface-to-air missiles, reversing a long-standing
                        policy of not exporting weapons to war zones.</p>
                </div>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Kyiv still in Ukrainian hands </h6><br/>
                    <p class="svelte-lyo1l7">Russian forces battered Ukrainian cities with artillery and cruise
                        missiles on Saturday for a third day running but a defiant President Volodymyr Zelenskiy
                        said the capital Kyiv remained in Ukrainian hands.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Feb. 25</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">NATO deploys more troops </h6><br/>
                    <p class="svelte-lyo1l7">NATO leaders said on Friday they were deploying more troops to
                        eastern Europe after Russia invaded Ukraine, saying that Moscow had lied about its
                        intentions.</p>
                </div>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Invasion continues </h6><br/>
                    <p class="svelte-lyo1l7">Missiles pounded the Ukrainian capital as Russian forces pressed
                        their advance and Ukrainian President Volodymyr Zelenskiy pleaded with the international
                        community to do more, saying sanctions announced so far were not enough.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Feb. 24</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Russia invades Ukraine </h6><br/>
                    <p class="svelte-lyo1l7">Russian President Vladimir Putin authorised “special military
                        operations” in eastern Ukraine and asked Ukrainian forces to lay down their arms in a
                        televised address. Russian forces begin missile and artillery attacks on Ukrainian
                        forces and air bases, striking areas in major cities.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Feb. 23</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Ukraine’s parliament approves state of emergency </h6><br/>
                    <p class="svelte-lyo1l7">The Ukrainian parliament approved a declaration of a state of
                        emergency in the entire country, except for two eastern regions where it had already
                        been in place since 2014.</p>
                </div>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Ukraine separatists seek Russian help </h6> <br/>
                    <p class="svelte-lyo1l7">Russian-backed separatist leaders asked Russia for help in
                        repelling “aggression” from the Ukrainian army. The White House rejected the plea as
                        another Russian &quot;false flag&quot; operation, a fake crisis manufactured to justify
                        greater intervention.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Feb. 22</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">First wave of U.S. sanctions on Russia </h6> <br/>
                    <p class="svelte-lyo1l7">Biden announced the first tranche of Russia sanctions. The
                        sanctions, among others things, target Russian banks and sovereign debt.</p>
                </div>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">First wave of EU sanctions on Russia </h6><br/>
                    <p class="svelte-lyo1l7">The European Union agreed to sanction 27 Russians and entities, as
                        well as banks and the defence sector and to limit Russian access to European capital
                        markets.</p>
                </div>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Germany freezes Nord Stream 2 gas project </h6>
                    <p class="svelte-lyo1l7">Germany halted the Nord Stream 2 Baltic Sea gas pipeline project,
                        designed to double the flow of Russian gas direct to Germany.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Feb. 21</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Putin orders troops to Ukraine after recognising breakaway
                            regions </h6> <br/>
                    <p class="svelte-lyo1l7">Russian President Putin ordered the deployment of troops to two
                        breakaway regions in eastern Ukraine after recognising them as independent.</p>
                </div>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Russia recognises breakaway regions </h6> <br/>
                    <p class="svelte-lyo1l7">Russian state television showed Putin, joined by Russia-backed
                        separatist leaders, signing a decree recognising the independence of the two Ukrainian
                        breakaway regions: the self-proclaimed Donetsk People’s Republic and the Luhansk
                        People&#39;s Republic.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Feb. 14</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">President Volodymyr Zelenskiy says Ukraine will persist with
                            NATO goal </h6> <br/>
                    <p class="svelte-lyo1l7">Ukrainian President Volodymyr Zelenskiy said his country would
                        continue to seek membership in the NATO transatlantic military alliance despite pressure
                        to cede that aspiration to avoid war with Russia</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Feb. 10</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Russia holds drills in Belarus </h6><br/>
                    <p class="svelte-lyo1l7">Russia held military exercises in Belarus and the Black Sea
                        following the buildup of its forces near Ukraine.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Feb. 3</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Moscow shuts down German broadcaster’s Russian operations in
                            retaliatory move </h6><br/>
                    <p class="svelte-lyo1l7">Russia shut down German broadcaster Deutsche Welle’s operations in
                        Moscow and stripped its staff of their accreditation in a retaliatory move after Berlin
                        banned Russian broadcaster RT DE.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Jan. 2022</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Ukraine gets weapons from the U.S., Baltic States, others
                        </h6><br/>
                    <p class="svelte-lyo1l7">Western countries had stepped up arms deliveries to Ukraine but it
                        said it needed more in order to resist Russia’s bigger and better-equipped army.</p>
                </div>
            </div>
            <div class="date svelte-lyo1l7"><svg height="25" width="20" class="svelte-lyo1l7">
                    <circle cx="10" cy="12" r="5" stroke="#999" stroke-width="2" fill="white"></circle>
                </svg>
                <h5 class="svelte-lyo1l7">Dec. 2021</h5>
                <div class="event svelte-lyo1l7">
                        <h6 class="svelte-lyo1l7">Russia builds up forces near Ukraine </h6><br/>
                    <p class="svelte-lyo1l7">Satellite images showed Russia building up forces in annexed Crimea
                        and at sites near the Ukrainian border.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- product section start -->
    <div class="product_section mb-80 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s">
        <div class="container">
            <div class="section_title text-center mb-55">
                <h2>俄乌战争图片</h2>
                <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod <br> tempor
                    incididunt ut
                    labore et dolore magna</p> -->
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
                                <a href="single-product.html"><img src="img/product/product1.png" alt=""></a>
                                <div class="action_links">
                                    <ul class="d-flex justify-content-center">
                                        <li class="add_to_cart"><a href="cart.html" title="Add to cart"> <span
                                                    class="pe-7s-shopbag"></span></a></li>
                                        <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span
                                                    class="pe-7s-like"></span></a></li>
                                        <li class="quick_button"><a href="#" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#modal_box">
                                                <span class="pe-7s-look"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <figcaption class="product_content text-center">
                                <!-- <h4><a href="single-product.html">Products Name Here</a></h4>
                                <div class="price_box">
                                    <span class="current_price">$22.00</span>
                                </div> -->
                            </figcaption>
                        </figure>
                    </article>
                </div>
                <div class="col-lg-3">
                    <article class="single_product">
                        <figure>
                            <div class="product_thumb">
                                <a href="single-product.html"><img src="img/product/product2.png" alt=""></a>
                                <div class="action_links">
                                    <ul class="d-flex justify-content-center">
                                        <li class="add_to_cart"><a href="cart.html" title="Add to cart"> <span
                                                    class="pe-7s-shopbag"></span></a></li>
                                        <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span
                                                    class="pe-7s-like"></span></a></li>
                                        <li class="quick_button"><a href="#" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#modal_box">
                                                <span class="pe-7s-look"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <figcaption class="product_content text-center">
                                <!-- <h4><a href="single-product.html">Lorem, ipsum dolor.</a></h4>
                                <div class="price_box">
                                    <span class="current_price">$24.00</span>
                                </div> -->
                            </figcaption>
                        </figure>
                    </article>
                </div>
                <div class="col-lg-3">
                    <article class="single_product">
                        <figure>
                            <div class="product_thumb">
                                <a href="single-product.html"><img src="img/product/product3.png" alt=""></a>
                                <div class="action_links">
                                    <ul class="d-flex justify-content-center">
                                        <li class="add_to_cart"><a href="cart.html" title="Add to cart"> <span
                                                    class="pe-7s-shopbag"></span></a></li>
                                        <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span
                                                    class="pe-7s-like"></span></a></li>
                                        <li class="quick_button"><a href="#" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#modal_box">
                                                <span class="pe-7s-look"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <figcaption class="product_content text-center">
                                <!-- <h4><a href="single-product.html">Praesentium vero nesciu.</a></h4>
                                <div class="price_box">
                                    <span class="current_price">$28.00</span>
                                </div> -->
                            </figcaption>
                        </figure>
                    </article>
                </div>
                <div class="col-lg-3">
                    <article class="single_product">
                        <figure>
                            <div class="product_thumb">
                                <a href="single-product.html"><img src="img/product/product4.png" alt=""></a>
                                <div class="action_links">
                                    <ul class="d-flex justify-content-center">
                                        <li class="add_to_cart"><a href="cart.html" title="Add to cart"> <span
                                                    class="pe-7s-shopbag"></span></a></li>
                                        <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span
                                                    class="pe-7s-like"></span></a></li>
                                        <li class="quick_button"><a href="#" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#modal_box">
                                                <span class="pe-7s-look"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <figcaption class="product_content text-center">
                                <!-- <h4><a href="single-product.html">Sit amet consectetur elit.</a></h4>
                                <div class="price_box">
                                    <span class="current_price">$32.00</span>
                                </div> -->
                            </figcaption>
                        </figure>
                    </article>
                </div>
                <div class="col-lg-3">
                    <article class="single_product">
                        <figure>
                            <div class="product_thumb">
                                <a href="single-product.html"><img src="img/product/product5.png" alt=""></a>
                                <div class="action_links">
                                    <ul class="d-flex justify-content-center">
                                        <li class="add_to_cart"><a href="cart.html" title="Add to cart"> <span
                                                    class="pe-7s-shopbag"></span></a></li>
                                        <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span
                                                    class="pe-7s-like"></span></a></li>
                                        <li class="quick_button"><a href="#" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#modal_box">
                                                <span class="pe-7s-look"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <figcaption class="product_content text-center">
                                <!-- <h4><a href="single-product.html">Atque earum ullam non.</a></h4>
                                <div class="price_box">
                                    <span class="current_price">$35.00</span>
                                </div> -->
                            </figcaption>
                        </figure>
                    </article>
                </div>
                <div class="col-lg-3">
                    <article class="single_product">
                        <figure>
                            <div class="product_thumb">
                                <a href="single-product.html"><img src="img/product/product6.png" alt=""></a>
                                <div class="action_links">
                                    <ul class="d-flex justify-content-center">
                                        <li class="add_to_cart"><a href="cart.html" title="Add to cart"> <span
                                                    class="pe-7s-shopbag"></span></a></li>
                                        <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span
                                                    class="pe-7s-like"></span></a></li>
                                        <li class="quick_button"><a href="#" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#modal_box">
                                                <span class="pe-7s-look"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <figcaption class="product_content text-center">
                                <!-- <h4><a href="single-product.html">Modi excepturi ut ipsam.</a></h4>
                                <div class="price_box">
                                    <span class="current_price">$38.00</span>
                                </div> -->
                            </figcaption>
                        </figure>
                    </article>
                </div>
                <div class="col-lg-3">
                    <article class="single_product">
                        <figure>
                            <div class="product_thumb">
                                <a href="single-product.html"><img src="img/product/product7.png" alt=""></a>
                                <div class="action_links">
                                    <ul class="d-flex justify-content-center">
                                        <li class="add_to_cart"><a href="cart.html" title="Add to cart"> <span
                                                    class="pe-7s-shopbag"></span></a></li>
                                        <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span
                                                    class="pe-7s-like"></span></a></li>
                                        <li class="quick_button"><a href="#" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#modal_box">
                                                <span class="pe-7s-look"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <figcaption class="product_content text-center">
                                <!-- <h4><a href="single-product.html">Provident odio, are Unde.</a></h4>
                                <div class="price_box">
                                    <span class="current_price">$28.00</span>
                                </div> -->
                            </figcaption>
                        </figure>
                    </article>
                </div>
                <div class="col-lg-3">
                    <article class="single_product">
                        <figure>
                            <div class="product_thumb">
                                <a href="single-product.html"><img src="img/product/product1.png" alt=""></a>
                                <div class="action_links">
                                    <ul class="d-flex justify-content-center">
                                        <li class="add_to_cart"><a href="cart.html" title="Add to cart"> <span
                                                    class="pe-7s-shopbag"></span></a></li>
                                        <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span
                                                    class="pe-7s-like"></span></a></li>
                                        <li class="quick_button"><a href="#" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#modal_box">
                                                <span class="pe-7s-look"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <figcaption class="product_content text-center">
                                <!-- <h4><a href="single-product.html">Products Name Here</a></h4>
                                <div class="price_box">
                                    <span class="current_price">$22.00</span>
                                </div> -->
                            </figcaption>
                        </figure>
                    </article>
                </div>
            </div>
        </div>
    </div>
    <!-- product section end -->

    <!-- brand section start -->
    
    <!-- brand section end -->

    <!-- blog section start -->
    <div class="blog_section mb-90">
        <div class="container">
            <div class="section_title text-center wow fadeInUp mb-50" data-wow-delay="0.1s" data-wow-duration="1.1s">
                <h2>最新新闻</h2>
                <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod <br> tempor
                    incididunt ut
                    labore et dolore magna</p> -->
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
                <div class="col-lg-4">
                    <div class="single_blog wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s">
                        <div class="blog_thumb">
                            <a href="blog-detail-left-sidebar.html"><img src="img/blog/blog1.png" alt=""></a>
                        </div>
                        <div class="blog_content">
                            <div class="blog_arrow_btn">
                                <a href="blog-detail-left-sidebar.html"><i class="ion-arrow-right-c"></i></a>
                            </div>
                            <span>Brakery</span>
                            <h3><a href="blog-detail-left-sidebar.html">Lorem ipsum doloril
                                    sit amet consepy.</a></h3>
                            <div class="blog__meta d-flex align-items-center">
                                <div class="blog__meta__thumb">
                                    <img src="img/others/meta-img1.png" alt="">
                                </div>
                                <div class="blog__meta__text">
                                    <ul class="d-flex">
                                        <li>By: Admin</li>
                                        <li><i class="icofont-calendar"></i> 22 Aug, 2021</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single_blog wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1.2s">
                        <div class="blog_thumb">
                            <a href="blog-detail-left-sidebar.html"><img src="img/blog/blog2.png" alt=""></a>
                        </div>
                        <div class="blog_content">
                            <div class="blog_arrow_btn">
                                <a href="blog-detail-left-sidebar.html"><i class="ion-arrow-right-c"></i></a>
                            </div>
                            <span class="color2">Brakery</span>
                            <h3><a href="blog-detail-left-sidebar.html">Lorem ipsum dolor sit, elit,
                                    dolores is .</a>
                            </h3>
                            <div class="blog__meta d-flex align-items-center">
                                <div class="blog__meta__thumb">
                                    <img src="img/others/meta-img2.png" alt="">
                                </div>
                                <div class="blog__meta__text">
                                    <ul class="d-flex">
                                        <li>By: Admin</li>
                                        <li><i class="icofont-calendar"></i> 22 Aug, 2021</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single_blog wow fadeInUp" data-wow-delay="0.3s" data-wow-duration="1.3s">
                        <div class="blog_thumb">
                            <a href="blog-detail-left-sidebar.html"><img src="img/blog/blog3.png" alt=""></a>
                        </div>
                        <div class="blog_content">
                            <div class="blog_arrow_btn">
                                <a href="blog-detail-left-sidebar.html"><i class="ion-arrow-right-c"></i></a>
                            </div>
                            <span class="color3">Brakery</span>
                            <h3><a href="blog-detail-left-sidebar.html"> harum dolorum culpa quas are
                                    veniam</a></h3>
                            <div class="blog__meta d-flex align-items-center">
                                <div class="blog__meta__thumb">
                                    <img src="img/others/meta-img3.png" alt="">
                                </div>
                                <div class="blog__meta__text">
                                    <ul class="d-flex">
                                        <li>By: Admin</li>
                                        <li><i class="icofont-calendar"></i> 22 Aug, 2021</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single_blog wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="1.1s">
                        <div class="blog_thumb">
                            <a href="blog-detail-left-sidebar.html"><img src="img/blog/blog1.png" alt=""></a>
                        </div>
                        <div class="blog_content">
                            <div class="blog_arrow_btn">
                                <a href="blog-detail-left-sidebar.html"><i class="ion-arrow-right-c"></i></a>
                            </div>
                            <span>Brakery</span>
                            <h3><a href="blog-detail-left-sidebar.html">There are many of Lorem
                                    Ipsum.</a></h3>
                            <div class="blog__meta d-flex align-items-center">
                                <div class="blog__meta__thumb">
                                    <img src="img/others/meta-img1.png" alt="">
                                </div>
                                <div class="blog__meta__text">
                                    <ul class="d-flex">
                                        <li>By: Admin</li>
                                        <li><i class="icofont-calendar"></i> 22 Aug, 2021</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- blog section end -->

</body>

</html>