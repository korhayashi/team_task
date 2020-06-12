class DeletedAgendaMailer < ApplicationMailer
  def deleted_agenda_mail(agenda)
    @agenda = agenda

    mail to: @agenda.team.members.pluck(:email) ,subject: "agenda: #{@agenda.title}が削除されました"
  end
end
