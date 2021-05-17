rails g model Store address url_address annex:integer status:integer

rails g model Category name status:integer

rails g model Product name unit_price:decimal{7-2} brand 'weight:decimal{5,2}' model category:references

rails g model ProductStore product:references store:references quantity:integer

rails g migration AddParentCategoryToCategory
add_reference :categories, :parent_category, foreign_key: { to_table: :categories }, null: true

rails g model Offer product:references started_at:datetime ended_at:datetime discount:decimal{5-2} status:integer

rails g model User name email phone password_digest token:token status:integer

User.create(email: "john@doe.com", name: "john doe", password: "mysecretpassword", phone: "33344", status: 1)

rails g model Useraddress user:references address

rails g model Order user:references user_address:references total_price:decimal{7-2} paid_at:datetime status:integer

rails g migration AddEmailIndexToUser # this model should have been plural

rails g model OrderProduct order:references product:references quantity:integer unit_price:decimal{7-2} discount:decimal{5-2}

rails g model Invoice user:references order:references user_address:references invoice_number:integer sub_total:decimal{7-2} igv:decimal{5-2} net_total:decimal{7-2} status:integer ruc:integer # TODO: should we have net_total here? can we use something else instead of dependent: :destroy? if not, should user_address be copied here? (for auditions)
