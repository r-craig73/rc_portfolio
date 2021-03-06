User.destroy_all
Skill.destroy_all
Interest.destroy_all


skill_titles = ["Over 16 years of acoustics consumer product testing and verification. A sound quality whisperer for HP inkjet printers and Microsoft surface tablet/notebook/laptop products.", "Specialized in troubleshooting & solving problems within a team.", "Improved workflow efficiency within a team."]

skill_examples = ["Hewlett-Packard, 2001-2016, Microsoft: 2016-2017", "Improved an inkjet printer pen servicing noise by determining the major noise sources and mitigating the noise. Mitigating the noise is a collaboration using specialized equipment (binaural head recordings and software to analyze recordings), interaction with the engineer responsible for pen servicing and software to control and modify the servicing events. Sometimes compromises and additional testing are needed to satisfy servicing noise and performance before a certain deadline. Bottom line: sound quality is needed to avoid printer returns (lost revenue) or phone calls (phone call costs) due to a printer's sound.", "Improved the process to measure and analyze a notebook or laptop touchpad noise require. Using software and programming automation and an accelerometer to trigger the event, a user can measure and generate a report for 10 products within 1 hour instead of 4-5 hours. To avoid remembering how to perform the same test for technicians and colleagues an Acoustics Lab Procedures handbook was generated saving 5-10% in workflow."]

interest_heading = ["Singing Karaoke", "Passionate about music", "Attending live sporting events", "Attending live concerts", "Bike rides and hikes", "Wearing costumes", "If money and time were limitless..."]

interest_body = ["Singing rap, RnB, soul and country karaoke songs.", "Listening to different genres of music (rap, RnB, soul, jazz, classic rock, country, blues, anything good, etc.).", "Attending sporting events (add Timbers match pictures).  Supporting Portland and Philadelphia professional and college sports (soccer, basketball and football).", "Attending live concerts and festivals (small to medium size shows, not the stadium size concerts).", "Enjoying casual bike rides and hikes (add pictures).", "Adult Halloween (or specific theme) costume wearer (add pictures).", "I would consider traveling across the USA and globe-trekking (hopefully). Tinkering with Python, Arduino hardware (LED lights & other sensors) and volunteering/helping people through technology."]


1.times do |i|
User.create!(email: "ron.craig@comcast.net", admin: true, password: "epicodus", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1)
@user_id = User.last.id
  skill_titles.length.times do |i|
    Skill.create!(user_id: @user_id, title: skill_titles[i], example: skill_examples[i])
    @skill_id = Skill.last.id
  end
  interest_heading.length.times do |i|
    Interest.create!(user_id: @user_id, heading: interest_heading[i], body: interest_body[i])
    @interest_id = Interest.last.id
  end
end

p "Created #{Skill.count} skills"
p "Created #{Interest.count} interests"
p "Created #{User.count} user"
