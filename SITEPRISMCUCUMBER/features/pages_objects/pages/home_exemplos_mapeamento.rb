class FooterExemplosMapeamentos < SitePrism::Section
    element :img_facebook, 'img[name="fallow_facebook"]'
    element :img_twitter, 'img[name="fallow_twitter"]'
end

class ProductsExemplosMapeamentos < SitePrism::Section
    element :name, 'a.productName'
    element :price, 'a.productPrice'
end

class HomeExemplosMapeamentos < SitePrism::Page
    set_url '/'

    element  :btn_open_search, '#search #menuSearch'
    elements :menu_items, '.nav-li-Links a'

    section  :footer, FooterExemplosMapeamentos, 'footer.ng-scope'
    #footer.img_facebook.click
    #footer.img_twitter.click



    sections :products, ProductsExemplosMapeamentos , '.categoryRight li.ng-scope'
    #products[2].price.click
    #products.last.click
end