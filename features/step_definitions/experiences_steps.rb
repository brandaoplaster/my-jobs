Dado "o portfólio possui um bloco de Experiência" do
  create(:block, kind: :experience, side: :right, portfolio_id: @portfolio.id)
end

Dado "o portfólio possui 1 Experiência" do
  create(:block, kind: :experience, side: :right, portfolio_id: @portfolio.id)
  @experience = create(:experience, portfolio_id: @portfolio.id)
end

Quando "adiciona uma Experiência" do
  @experience = attributes_for(:experience)
  fill_in "experience-title", with: @experience[:title]
  fill_in "experience-company", with: @experience[:company]
  fill_in "experience-description", with: @experience[:description]
  fill_in "experience-start-date", with: @experience[:start_date]
  fill_in "experience-end-date", with: @experience[:end_date]
  find("#add-experience").click
  wait_for_ajax
end
