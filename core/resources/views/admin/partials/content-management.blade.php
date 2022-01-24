<li class="nav-item
@if(request()->path() == 'admin/features') active
@elseif(request()->path() == 'admin/introsection') active
@elseif(request()->path() == 'admin/servicesection') active
@elseif(request()->path() == 'admin/herosection/static') active
@elseif(request()->path() == 'admin/herosection/video') active
@elseif(request()->path() == 'admin/herosection/sliders') active
@elseif(request()->is('admin/herosection/slider/*/edit')) active
@elseif(request()->path() == 'admin/approach') active
@elseif(request()->is('admin/approach/*/pointedit')) active
@elseif(request()->path() == 'admin/statistics') active
@elseif(request()->is('admin/statistics/*/edit')) active
@elseif(request()->path() == 'admin/members') active
@elseif(request()->is('admin/member/*/edit')) active
@elseif(request()->is('admin/approach/*/pointedit')) active
@elseif(request()->path() == 'admin/cta') active
@elseif(request()->is('admin/feature/*/edit')) active
@elseif(request()->path() == 'admin/testimonials') active
@elseif(request()->is('admin/testimonial/*/edit')) active
@elseif(request()->path() == 'admin/invitation') active
@elseif(request()->path() == 'admin/partners') active
@elseif(request()->is('admin/partner/*/edit')) active
@elseif(request()->path() == 'admin/portfoliosection') active
@elseif(request()->path() == 'admin/blogsection') active
@elseif(request()->path() == 'admin/member/create') active
@elseif(request()->path() == 'admin/package/background') active
@elseif(request()->path() == 'admin/sections') active

@elseif(request()->path() == 'admin/scategorys') active
@elseif(request()->is('admin/service/settings')) active
@elseif(request()->is('admin/scategory/*/edit')) active
@elseif(request()->path() == 'admin/services') active
@elseif(request()->is('admin/service/*/edit')) active


@elseif(request()->path() == 'admin/portfolios') active
@elseif(request()->path() == 'admin/portfolio/create') active
@elseif(request()->is('admin/portfolio/*/edit')) active

@elseif(request()->path() == 'admin/bcategorys') active
@elseif(request()->path() == 'admin/blogs') active
@elseif(request()->path() == 'admin/archives') active
@elseif(request()->is('admin/blog/*/edit')) active

@elseif(request()->path() == 'admin/footers') active
@elseif(request()->path() == 'admin/ulinks') active

@elseif(request()->path() == 'admin/gallery/settings') active
@elseif(request()->path() == 'admin/gallery/categories') active
@elseif(request()->path() == 'admin/gallery') active
@elseif(request()->path() == 'admin/gallery/create') active
@elseif(request()->is('admin/gallery/*/edit')) active

@elseif(request()->path() == 'admin/faq/settings') active
@elseif(request()->path() == 'admin/faq/categories') active
@elseif(request()->path() == 'admin/faqs') active

@elseif(request()->path() == 'admin/jcategorys') active
@elseif(request()->path() == 'admin/job/create') active
@elseif(request()->is('admin/jcategory/*/edit')) active
@elseif(request()->path() == 'admin/jobs') active
@elseif(request()->is('admin/job/*/edit')) active

@elseif(request()->path() == 'admin/contact') active
@endif">
    <a data-toggle="collapse" href="#webContents">
        <i class="la flaticon-imac"></i>
        <p>ادارة المحتوى</p>
        <span class="caret"></span>
    </a>
    <div class="collapse
    @if(request()->path() == 'admin/features') show
    @elseif(request()->path() == 'admin/introsection') show
    @elseif(request()->path() == 'admin/servicesection') show
    @elseif(request()->path() == 'admin/herosection/static') show
    @elseif(request()->path() == 'admin/herosection/video') show
    @elseif(request()->path() == 'admin/herosection/sliders') show
    @elseif(request()->is('admin/herosection/slider/*/edit')) show
    @elseif(request()->path() == 'admin/approach') show
    @elseif(request()->is('admin/approach/*/pointedit')) show
    @elseif(request()->path() == 'admin/statistics') show
    @elseif(request()->is('admin/statistics/*/edit')) show
    @elseif(request()->path() == 'admin/members') show
    @elseif(request()->is('admin/member/*/edit')) show
    @elseif(request()->is('admin/approach/*/pointedit')) show
    @elseif(request()->path() == 'admin/cta') show
    @elseif(request()->is('admin/feature/*/edit')) show
    @elseif(request()->path() == 'admin/testimonials') show
    @elseif(request()->is('admin/testimonial/*/edit')) show
    @elseif(request()->path() == 'admin/invitation') show
    @elseif(request()->path() == 'admin/partners') show
    @elseif(request()->is('admin/partner/*/edit')) show
    @elseif(request()->path() == 'admin/portfoliosection') show
    @elseif(request()->path() == 'admin/blogsection') show
    @elseif(request()->path() == 'admin/member/create') show
    @elseif(request()->path() == 'admin/package/background') show
    @elseif(request()->path() == 'admin/sections') show

    @elseif(request()->path() == 'admin/scategorys') show
    @elseif(request()->is('admin/service/settings')) show
    @elseif(request()->is('admin/scategory/*/edit')) show
    @elseif(request()->path() == 'admin/services') show
    @elseif(request()->is('admin/service/*/edit')) show


    @elseif(request()->path() == 'admin/portfolios') show
    @elseif(request()->path() == 'admin/portfolio/create') show
    @elseif(request()->is('admin/portfolio/*/edit')) show

    @elseif(request()->path() == 'admin/bcategorys') show
    @elseif(request()->path() == 'admin/blogs') show
    @elseif(request()->path() == 'admin/archives') show
    @elseif(request()->is('admin/blog/*/edit')) show

    @elseif(request()->path() == 'admin/footers') show
    @elseif(request()->path() == 'admin/ulinks') show

    @elseif(request()->path() == 'admin/gallery/settings') show
    @elseif(request()->path() == 'admin/gallery/categories') show
    @elseif(request()->path() == 'admin/gallery') show
    @elseif(request()->path() == 'admin/gallery/create') show
    @elseif(request()->is('admin/gallery/*/edit')) show

    @elseif(request()->path() == 'admin/faq/settings') show
    @elseif(request()->path() == 'admin/faq/categories') show
    @elseif(request()->path() == 'admin/faqs') show

    @elseif(request()->path() == 'admin/jcategorys') show
    @elseif(request()->path() == 'admin/job/create') show
    @elseif(request()->is('admin/jcategory/*/edit')) show
    @elseif(request()->path() == 'admin/jobs') show
    @elseif(request()->is('admin/job/*/edit')) show

    @elseif(request()->path() == 'admin/contact') show
    @endif" id="webContents">
        <ul class="nav nav-collapse">

            {{-- اقسام الصفحة الرئيسية --}}
            <li class="
            @if(request()->path() == 'admin/features') selected
            @elseif(request()->path() == 'admin/introsection') selected
            @elseif(request()->path() == 'admin/servicesection') selected
            @elseif(request()->path() == 'admin/herosection/static') selected
            @elseif(request()->path() == 'admin/herosection/video') selected
            @elseif(request()->path() == 'admin/herosection/sliders') selected
            @elseif(request()->is('admin/herosection/slider/*/edit')) selected
            @elseif(request()->path() == 'admin/approach') selected
            @elseif(request()->is('admin/approach/*/pointedit')) selected
            @elseif(request()->path() == 'admin/statistics') selected
            @elseif(request()->is('admin/statistics/*/edit')) selected
            @elseif(request()->path() == 'admin/members') selected
            @elseif(request()->is('admin/member/*/edit')) selected
            @elseif(request()->is('admin/approach/*/pointedit')) selected
            @elseif(request()->path() == 'admin/cta') selected
            @elseif(request()->is('admin/feature/*/edit')) selected
            @elseif(request()->path() == 'admin/testimonials') selected
            @elseif(request()->is('admin/testimonial/*/edit')) selected
            @elseif(request()->path() == 'admin/invitation') selected
            @elseif(request()->path() == 'admin/partners') selected
            @elseif(request()->is('admin/partner/*/edit')) selected
            @elseif(request()->path() == 'admin/portfoliosection') selected
            @elseif(request()->path() == 'admin/blogsection') selected
            @elseif(request()->path() == 'admin/member/create') selected
            @elseif(request()->path() == 'admin/package/background') selected
            @elseif(request()->path() == 'admin/sections') selected
            @endif">
                <a data-toggle="collapse" href="#home">
                    <span class="sub-item">اقسام الصفحة الرئيسية</span>
                    <span class="caret"></span>
                </a>
                <div class="collapse
                @if(request()->path() == 'admin/features') show
                @elseif(request()->path() == 'admin/introsection') show
                @elseif(request()->path() == 'admin/servicesection') show
                @elseif(request()->path() == 'admin/herosection/static') show
                @elseif(request()->path() == 'admin/herosection/video') show
                @elseif(request()->path() == 'admin/herosection/sliders') show
                @elseif(request()->is('admin/herosection/slider/*/edit')) show
                @elseif(request()->path() == 'admin/approach') show
                @elseif(request()->is('admin/approach/*/pointedit')) show
                @elseif(request()->path() == 'admin/statistics') show
                @elseif(request()->is('admin/statistics/*/edit')) show
                @elseif(request()->path() == 'admin/members') show
                @elseif(request()->is('admin/member/*/edit')) show
                @elseif(request()->is('admin/approach/*/pointedit')) show
                @elseif(request()->path() == 'admin/cta') show
                @elseif(request()->is('admin/feature/*/edit')) show
                @elseif(request()->path() == 'admin/testimonials') show
                @elseif(request()->is('admin/testimonial/*/edit')) show
                @elseif(request()->path() == 'admin/invitation') show
                @elseif(request()->path() == 'admin/partners') show
                @elseif(request()->is('admin/partner/*/edit')) show
                @elseif(request()->path() == 'admin/portfoliosection') show
                @elseif(request()->path() == 'admin/blogsection') show
                @elseif(request()->path() == 'admin/member/create') show
                @elseif(request()->path() == 'admin/package/background') show
                @elseif(request()->path() == 'admin/sections') show
                @endif" id="home">
                    <ul class="nav nav-collapse subnav">
                        <li class="
                        @if(request()->path() == 'admin/herosection/static') selected
                        @elseif(request()->path() == 'admin/herosection/video') selected
                        @elseif(request()->path() == 'admin/herosection/sliders') selected
                        @elseif(request()->is('admin/herosection/slider/*/edit')) selected
                        @endif">
                        <a data-toggle="collapse" href="#herosection">
                            <span class="sub-item">هيرو سيكشن</span>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse
                        @if(request()->path() == 'admin/herosection/static') show
                        @elseif(request()->path() == 'admin/herosection/video') show
                        @elseif(request()->path() == 'admin/herosection/sliders') show
                        @elseif(request()->is('admin/herosection/slider/*/edit')) show
                        @endif" id="herosection">
                        <ul class="nav nav-collapse subnav">
                            <li class="@if(request()->path() == 'admin/herosection/static') active @endif">
                                <a href="{{route('admin.herosection.static') . '?language=' . $default->code}}">
                                    <span class="sub-item">النسخة الثابتة</span>
                                </a>
                            </li>
                            <li class="
                            @if(request()->path() == 'admin/herosection/sliders') active
                            @elseif(request()->is('admin/herosection/slider/*/edit')) active
                            @endif">
                            <a href="{{route('admin.slider.index') . '?language=' . $default->code}}">
                                <span class="sub-item">النسخة سلايدات</span>
                            </a>
                        </li>
                        <li class="@if(request()->path() == 'admin/herosection/video') active @endif">
                            <a href="{{route('admin.herosection.video') . '?language=' . $default->code}}">
                                <span class="sub-item">نسخة الفيديو</span>
                            </a>
                        </li>
                    </ul>
                    </div>
                    </li>
                    <li class="
                    @if(request()->path() == 'admin/features') active
                    @elseif(request()->is('admin/feature/*/edit')) active
                    @endif">
                    <a href="{{route('admin.feature.index') . '?language=' . $default->code}}">
                        <span class="sub-item">الميزات</span>
                    </a>
                    </li>

                    @if ($bex->home_page_pagebuilder == 0)

                    <li class="@if(request()->path() == 'admin/introsection') active @endif">
                        <a href="{{route('admin.introsection.index') . '?language=' . $default->code}}">
                            <span class="sub-item">صفحة البداية</span>
                        </a>
                    </li>
                    @endif

                    @if ($bex->home_page_pagebuilder == 0)
                    <li class="@if(request()->path() == 'admin/servicesection') active @endif">
                        <a href="{{route('admin.servicesection.index') . '?language=' . $default->code}}">
                            <span class="sub-item">قسم الخدات</span>
                        </a>
                    </li>
                    @endif

                    <li class="
                    @if(request()->path() == 'admin/approach') active
                    @elseif(request()->is('admin/approach/*/pointedit')) active
                    @endif">
                    <a href="{{route('admin.approach.index') . '?language=' . $default->code}}">
                        <span class="sub-item">نبذة عن</span>
                    </a>
                    </li>
                    <li class="
                    @if(request()->path() == 'admin/statistics') active
                    @elseif(request()->is('admin/statistics/*/edit')) active
                    @endif">
                    <a href="{{route('admin.statistics.index') . '?language=' . $default->code}}">
                        <span class="sub-item">الاحصائيات</span>
                    </a>
                    </li>

                    @if ($bex->home_page_pagebuilder == 0)
                    <li class="@if(request()->path() == 'admin/cta') active @endif">
                        <a href="{{route('admin.cta.index') . '?language=' . $default->code}}">
                            <span class="sub-item">قسم اجراء جديد</span>
                        </a>
                    </li>
                    @endif

                    @if ($bex->home_page_pagebuilder == 0)
                    <li class="@if(request()->path() == 'admin/portfoliosection') active @endif">
                        <a href="{{route('admin.portfoliosection.index') . '?language=' . $default->code}}">
                            <span class="sub-item">اعمالنا</span>
                        </a>
                    </li>
                    @endif
                    <li class="
                    @if(request()->path() == 'admin/testimonials') active
                    @elseif(request()->is('admin/testimonial/*/edit')) active
                    @endif">
                    <a href="{{route('admin.testimonial.index') . '?language=' . $default->code}}">
                        <span class="sub-item">آراء العملاء</span>
                    </a>
                    </li>
                    <li class="
                    @if(request()->path() == 'admin/members') active
                    @elseif(request()->is('admin/member/*/edit')) active
                    @elseif(request()->path() == 'admin/member/create') active
                    @endif">
                    <a href="{{route('admin.member.index') . '?language=' . $default->code}}">
                        <span class="sub-item">الفريق</span>
                    </a>
                    </li>

                    @if ($be->theme_version == 'car' && $bex->home_page_pagebuilder == 0)
                    <li class="
                    @if(request()->path() == 'admin/package/background') active
                    @endif">
                    <a href="{{route('admin.package.background') . '?language=' . $default->code}}">
                        <span class="sub-item">Package Background</span>
                    </a>
                    </li>
                    @endif

                    @if ($bex->home_page_pagebuilder == 0)
                    <li class="@if(request()->path() == 'admin/blogsection') active @endif">
                        <a href="{{route('admin.blogsection.index') . '?language=' . $default->code}}">
                            <span class="sub-item">المدونة</span>
                        </a>
                    </li>
                    @endif

                    <li class="
                    @if(request()->path() == 'admin/partners') active
                    @elseif(request()->is('admin/partner/*/edit')) active
                    @endif">
                    <a href="{{route('admin.partner.index') . '?language=' . $default->code}}">
                        <span class="sub-item">الشركاء</span>
                    </a>
                    </li>

                    @if ($bex->home_page_pagebuilder == 0)
                    <li class="
                    @if(request()->path() == 'admin/sections') active
                    @endif">
                    <a href="{{route('admin.sections.index') . '?language=' . $default->code}}">
                        <span class="sub-item">تحسين</span>
                    </a>
                    </li>
                    @endif

                    </ul>
                </div>
            </li>


            {{-- Footer --}}
            <li class="
            @if(request()->path() == 'admin/footers') selected
            @elseif(request()->path() == 'admin/ulinks') selected
            @endif">
                <a data-toggle="collapse" href="#footer">
                    <span class="sub-item">الفوتر</span>
                    <span class="caret"></span>
                </a>
                <div class="collapse
                @if(request()->path() == 'admin/footers') show
                @elseif(request()->path() == 'admin/ulinks') show
                @endif" id="footer">
                    <ul class="nav nav-collapse subnav">
                        <li class="@if(request()->path() == 'admin/footers') active @endif">
                            <a href="{{route('admin.footer.index') . '?language=' . $default->code}}">
                                <span class="sub-item">الشعار والنص</span>
                            </a>
                        </li>
                        <li class="@if(request()->path() == 'admin/ulinks') active @endif">
                            <a href="{{route('admin.ulink.index') . '?language=' . $default->code}}">
                                <span class="sub-item">روابط مفيدة</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>

            {{-- Service Management --}}
            <li class="
            @if(request()->path() == 'admin/scategorys') selected
            @elseif(request()->is('admin/service/settings')) selected
            @elseif(request()->is('admin/scategory/*/edit')) selected
            @elseif(request()->path() == 'admin/services') selected
            @elseif(request()->is('admin/service/*/edit')) selected
            @endif">
                <a data-toggle="collapse" href="#service">
                    <span class="sub-item">الخدمات</span>
                    <span class="caret"></span>
                </a>
                <div class="collapse
                @if(request()->path() == 'admin/scategorys') show
                @elseif(request()->is('admin/service/settings')) show
                @elseif(request()->is('admin/scategory/*/edit')) show
                @elseif(request()->path() == 'admin/services') show
                @elseif(request()->is('admin/service/*/edit')) show
                @endif" id="service">
                    <ul class="nav nav-collapse subnav">
                        <li class="
                            @if(request()->path() == 'admin/service/settings') active
                            @endif">
                            <a href="{{route('admin.service.settings')}}">
                                <span class="sub-item">الاعدادات</span>
                            </a>
                        </li>
                        @if (serviceCategory())
                        <li class="
                        @if(request()->path() == 'admin/scategorys') active
                        @elseif(request()->is('admin/scategory/*/edit')) active
                        @endif">
                            <a href="{{route('admin.scategory.index') . '?language=' . $default->code}}">
                                <span class="sub-item">التصنيف</span>
                            </a>
                        </li>
                        @endif
                        <li class="
                        @if(request()->path() == 'admin/services') active
                        @elseif(request()->is('admin/service/*/edit')) active
                        @endif">
                            <a href="{{route('admin.service.index') . '?language=' . $default->code}}">
                                <span class="sub-item">الخدمات</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>


            {{-- Portfolio Management --}}
            <li class="
            @if(request()->path() == 'admin/portfolios') selected
            @elseif(request()->path() == 'admin/portfolio/create') selected
            @elseif(request()->is('admin/portfolio/*/edit')) selected
            @endif">
                <a data-toggle="collapse" href="#portfolio">
                    <span class="sub-item">اعمالنا</span>
                    <span class="caret"></span>
                </a>
                <div class="collapse
                @if(request()->path() == 'admin/portfolios') show
                @elseif(request()->path() == 'admin/portfolio/create') show
                @elseif(request()->is('admin/portfolio/*/edit')) show
                @endif" id="portfolio">
                    <ul class="nav nav-collapse subnav">
                        <li class="
                        @if(request()->path() == 'admin/portfolio/create') active
                        @endif">
                            <a href="{{route('admin.portfolio.create')}}">
                                <span class="sub-item">اظافة عمل جديد</span>
                            </a>
                        </li>
                        <li class="
                        @if(request()->path() == 'admin/portfolios') active
                        @elseif(request()->is('admin/portfolio/*/edit')) active
                        @endif">
                            <a href="{{route('admin.portfolio.index') . '?language=' . $default->code}}">
                                <span class="sub-item">الاعمال</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>

            {{-- Blogs Management --}}
            <li class="
            @if(request()->path() == 'admin/bcategorys') selected
            @elseif(request()->path() == 'admin/blogs') selected
            @elseif(request()->path() == 'admin/archives') selected
            @elseif(request()->is('admin/blog/*/edit')) selected
            @endif">
                <a data-toggle="collapse" href="#blogs">
                    <span class="sub-item">المدونة</span>
                    <span class="caret"></span>
                </a>
                <div class="collapse
                @if(request()->path() == 'admin/bcategorys') show
                @elseif(request()->path() == 'admin/blogs') show
                @elseif(request()->path() == 'admin/archives') show
                @elseif(request()->is('admin/blog/*/edit')) show
                @endif" id="blogs">
                    <ul class="nav nav-collapse subnav">
                        <li class="@if(request()->path() == 'admin/bcategorys') active @endif">
                            <a href="{{route('admin.bcategory.index') . '?language=' . $default->code}}">
                                <span class="sub-item">الفئة</span>
                            </a>
                        </li>
                        <li class="
                            @if(request()->path() == 'admin/blogs') active
                            @elseif(request()->is('admin/blog/*/edit')) active
                            @endif">
                            <a href="{{route('admin.blog.index') . '?language=' . $default->code}}">
                                <span class="sub-item">المدونة</span>
                            </a>
                        </li>
                        <li class="@if(request()->path() == 'admin/archives') active @endif">
                            <a href="{{route('admin.archive.index')}}">
                                <span class="sub-item">الارشيف</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>


            {{-- Gallery Management --}}
            <li class="
            @if(request()->path() == 'admin/gallery/settings') selected
            @elseif(request()->path() == 'admin/gallery/categories') selected
            @elseif(request()->path() == 'admin/gallery') selected
            @elseif(request()->path() == 'admin/gallery/create') selected
            @elseif(request()->is('admin/gallery/*/edit')) selected
            @endif">
                <a data-toggle="collapse" href="#gallery">
                    <span class="sub-item">الصور</span>
                    <span class="caret"></span>
                </a>
                <div class="collapse
                @if(request()->path() == 'admin/gallery/settings') show
                @elseif(request()->path() == 'admin/gallery/categories') show
                @elseif(request()->path() == 'admin/gallery') show
                @elseif(request()->path() == 'admin/gallery/create') show
                @elseif(request()->is('admin/gallery/*/edit')) show
                @endif" id="gallery">
                    <ul class="nav nav-collapse subnav">
                        <li class="@if(request()->path() == 'admin/gallery/settings') active @endif">
                            <a href="{{route('admin.gallery.settings')}}">
                                <span class="sub-item">الاعدادات</span>
                            </a>
                        </li>
                        @if ($data->gallery_category_status == 1)
                        <li class="@if(request()->path() == 'admin/gallery/categories') active @endif">
                            <a href="{{route('admin.gallery.categories') . '?language=' . $default->code}}">
                                <span class="sub-item">التصنيفات</span>
                            </a>
                        </li>
                        @endif
                        <li class="@if(request()->path() == 'admin/gallery') active
                            @elseif(request()->path() == 'admin/gallery/create') active
                            @elseif(request()->is('admin/gallery/*/edit')) active
                            @endif"
                            >
                            <a href="{{route('admin.gallery.index') . '?language=' . $default->code}}">
                                <span class="sub-item">الصور</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>


            {{-- FAQ Management --}}
            <li class="
            @if(request()->path() == 'admin/faq/settings') selected
            @elseif(request()->path() == 'admin/faq/categories') selected
            @elseif(request()->path() == 'admin/faqs') selected
            @endif">
                <a data-toggle="collapse" href="#faq">
                    <span class="sub-item">الاسئلة المتكررة</span>
                    <span class="caret"></span>
                </a>
                <div class="collapse
                @if(request()->path() == 'admin/faq/settings') show
                @elseif(request()->path() == 'admin/faq/categories') show
                @elseif(request()->path() == 'admin/faqs') show
                @endif" id="faq">
                    <ul class="nav nav-collapse subnav">
                        <li class="@if(request()->path() == 'admin/faq/settings') active @endif">
                            <a href="{{route('admin.faq.settings')}}">
                                <span class="sub-item">الاعدادات</span>
                            </a>
                        </li>
                        @if ($data->faq_category_status == 1)
                        <li class="@if(request()->path() == 'admin/faq/categories') active @endif">
                            <a href="{{route('admin.faq.categories') . '?language=' . $default->code}}">
                                <span class="sub-item">التصنيفات</span>
                            </a>
                        </li>
                        @endif
                        <li class="@if(request()->path() == 'admin/faqs') active @endif">
                            <a href="{{route('admin.faq.index') . '?language=' . $default->code}}">
                                <span class="sub-item">الاسئلة المتكررة</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>


            {{-- Career Page --}}
            <li class="
            @if(request()->path() == 'admin/jcategorys') selected
            @elseif(request()->path() == 'admin/job/create') selected
            @elseif(request()->is('admin/jcategory/*/edit')) selected
            @elseif(request()->path() == 'admin/jobs') selected
            @elseif(request()->is('admin/job/*/edit')) selected
            @endif">
                <a data-toggle="collapse" href="#career">
                    <span class="sub-item">التوظيف</span>
                    <span class="caret"></span>
                </a>
                <div class="collapse
                @if(request()->path() == 'admin/jcategorys') show
                @elseif(request()->path() == 'admin/job/create') show
                @elseif(request()->is('admin/jcategory/*/edit')) show
                @elseif(request()->path() == 'admin/jobs') show
                @elseif(request()->is('admin/job/*/edit')) show
                @endif" id="career">
                    <ul class="nav nav-collapse subnav">
                        <li class="
                            @if(request()->path() == 'admin/jcategorys') active
                            @elseif(request()->is('admin/jcategory/*/edit')) active
                            @endif">
                            <a href="{{route('admin.jcategory.index') . '?language=' . $default->code}}">
                                <span class="sub-item">التصنيف</span>
                            </a>
                        </li>
                        <li class="
                        @if(request()->is('admin/job/create')) active
                        @endif">
                            <a href="{{route('admin.job.create')}}">
                                <span class="sub-item">نشر وظيفة جديدة</span>
                            </a>
                        </li>
                        <li class="
                        @if(request()->path() == 'admin/jobs') active
                        @elseif(request()->is('admin/job/*/edit')) active
                        @endif">
                            <a href="{{route('admin.job.index') . '?language=' . $default->code}}">
                                <span class="sub-item">ادارة الوظائف</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>


            {{-- Contact Page --}}
            <li class="
            @if(request()->path() == 'admin/contact') active @endif">
                <a href="{{route('admin.contact.index') . '?language=' . $default->code}}">
                    <span class="sub-item">صفحة اتصل بنا</span>
                </a>
            </li>

        </ul>
    </div>

</li>
