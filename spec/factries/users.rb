FactoryBot.define do
    factory :admin_user, class: User do
        name { 'テストユーザー' }
        email { 'test@test.com' }
        password { 'password' }
    end
end