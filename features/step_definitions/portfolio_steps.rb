Dado "possui {int} portfólio(s) cadastrado(s)" do |count|
  create_list(:portfolio, count, user_id: @user.id)
end

Quando "acessa a lista de portfólios" do
  visit portfolios_path
end

Então "os {int} portfólios são listados" do |count|
  expect(page).to have_css(".portfolio", count: count)
end

Então "nenhum portfólio é listado" do
  expect(page).to have_css(".portfolio", coutn: 0)
end

Então "volta para a página de login" do
  expect(page).to have_current_path("/users/sign_in")
end


Quando "clica para criar um novo portfólio" do
  find(:xpath, "//a[@class='new-portfolio']").click
end

Então "o usuário deve ter {int} portfólios cadastrados" do |count|
  expect(@user.portfolios.count).to eq count
end

Então "deve ver os dados iniciais do portfólios" do
  expect(page).to have_field("portfolio[slug]", with: @user.portfolios.last.slug)
end

Então "é direcionado para a página de edição do portfólio" do
  expect(page).to have_current_path(edit_portfolio_path(@user.portfolios.last))
end

Dado "possui o portfólio com slug {string}" do |slug|
  @portfolio = create(:portfolio, slug: slug, user_id: @user.id)
end