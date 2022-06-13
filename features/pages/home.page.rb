class HomePage < SitePrism::Page
  element :aboutUser, :xpath, "//*[@id='ember25']/div[2]/div/div/div/div[1]/div[1]/p"
  element :navJobs, :xpath, "//*[@id='global-nav']/div/nav/ul/li[3]/a/span"

  def pageAfterLogin
    expect(aboutUser.text).to eq "Quality Assurance"
    expect(navJobs.text).to eq "Jobs"
  end
end