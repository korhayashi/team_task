class TeamMailer < ApplicationMailer
  def team_mail(team)
    @team = team
    @user = User.find(@team.owner_id)
    mail to: @user.email, subject: "#{@team.name}のオーナー権限があなたに移動しました"
  end
end
