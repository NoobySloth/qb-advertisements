local Translations = {
    mail = {
        sender = '%{senderjob}',
        subject = 'Public Announcement',
        message = 'Dear %{gender} %{lastname}, <br /><br />You are receiving an official public announcement.<br /><strong>$%{announcement}</strong><br /><br />Kind Regards!'
    },
    job = {
        police = 'Police Department',
        ems = 'EMS Department',
        mechanic = 'Mechanic Department',
        taxi = 'Taxi Department',
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})