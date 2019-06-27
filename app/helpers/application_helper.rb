module ApplicationHelper
    def gravatar_for(user, options = { size: 80 })
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        size = options[:size]
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(gravatar_url, alt: user.name, 
                                    class: "img-circle")
    end


    def link_to_add_fields(name, form, association)  
        new_object = form.object.send(association).klass.new  
        id = new_object.object_id  
        fields = form.fields_for(association, new_object, child_index: id) do |builder|  
         render(association.to_s.singularize + "_fields", form: builder)  
        end  
        link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})  
    end 
end
