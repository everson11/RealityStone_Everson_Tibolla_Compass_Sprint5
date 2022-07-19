module Pages
    class ProductPage < SitePrism::Page
        set_url '/'

        elements :colors, '.productColor'
        elements :main_image, '#mainImg'
    end
end