Skill.destroy_all
Interest.destroy_all

skill_titles = ["Over 16 years of acoustics consumer product testing and verification. A sound quality whisperer for HP inkjet printers and Microsoft surface tablet/notebook/laptop products.", "Specialized in troubleshooting & solving problems within a team.", "Improved workflow efficiency within a team."]
skill_examples = ["Hewlett-Packard, 2001-2016, Microsoft: 2016-2017", "Improved an inkjet printer pen servicing noise by determining the major noise sources and mitigating the noise. Mitigating the noise is a collaboration using specialized equipment (binaural head recordings and software to analyze recordings), interaction with the engineer responsible for pen servicing and software to control and modify the servicing events. Sometimes compromises and additional testing are needed to satisfy servicing noise and performance before a certain deadline. Bottom line: sound quality is needed to avoid printer returns (lost revenue) and/or phone calls (phone call costs) due to a printer's sound.", "Improved the process to measure and analyze tablet/notebook/laptop touchpad noise require. Using software and programming automation and an accelerometer to trigger the event, a user can measure and generate a report for 10 products within 1 hour instead of 4-5 hours. To avoid remembering how to perform the same test for technicians and colleagues, an 'Acoustics Lab Procedures' handbook was generated saving 5-10% in workflow."]

interest_heading = ["Singig Karaoke", "A love for music", "Attend live sporting events", "Attend live concerts", "Bike rides and hikes", "Wearing costumes", "If money and time are not factors"]

interest_body = ["Singing rap, RnB, soul and country karaoke songs.", "Listening to different genres of music (rap, RnB, soul, jazz, classic rock, country, blues, anything good, etc.).", "Attending sporting events (add Timbers match pictures).  Support Portland and Philadelphia local sports (soccer, basketball and football).", "Attending live, local concerts and festivals (small to medium size stages, not the stadium size concerts).", "Enjoy casual bike rides and hikes (add pictures).", "Adult Halloween (or specific theme) costume wearer (add pictures).", "Traveling across USA and hopefully internationally.  Tinkering with Python, Arduino hardware (LED lights), and volunteering/helping people through technology."]

skill_titles.length.times do |i|
  Skill.create!(title: skill_titles[i], example: skill_examples[i])
  @skill_id = Skill.last.id
end

interest_heading.length.times do |i|
  Interest.create!(heading: interest_heading[i], body: interest_body[i])
  @interest_id = Interest.last.id
end


p "Created #{Skill.count} skills"
p "Created #{Interest.count} interests"
