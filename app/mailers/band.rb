class Band < ActionMailer::Base
  default to: 'barnespeter213@gmail.com, austinwilson10@yahoo.com, connorls186@gmail.com, michaelfunk2010@gmail.com', from: "messaging@downincircles.com"

  def email(params)
    @params = params
    mail(subject: "#{@params[:name]} has sent you an email")
  end
end
