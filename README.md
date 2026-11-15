# Animal Shelter Intake System
> Bryce Wood

This is a small web app built with Ruby on Rails to help an animal shelter manage and keep track of animals in their system. The shelter can add (**C**reate), list, view (**R**ead), edit (**U**pdate), and delete (**D**elete) animal records. Each record contains information about the animal's name, breed, species, age, vaccination status, and other relevant data. This project includes features such as data validation, readable error messages, deletion confirmation, flash confirmations, and more.

To run: in your terminal -> `bundle install` -> `bin/rails db:prepare` -> `bin/rails server` -> visit http://localhost:3000/ in your browser of choice
To reset to sample data: `bin/rails db:seed:replant`

## Known Issues/Enhancements
- `age_in_months` does not update automatically. For a long-term system "birthday" (or some equivalent) is smarter than "age".
- Vaccination (`vaccinated`) and sterilization (`sterilized`) are often required before adoption, but are not validated before `adoption_status` becomes `adopted`.
- There is no validation that `species` or `breed` are real species or breeds (so someone could create an animal with species "4kd2!" or "Dgo" and breed "dsks##$" or "Golen Retiver").
- Checkboxes (for `vaccinated` and `sterilized`) default to `false`, if skipped, the program assumes `false`. Radio buttons could provide a more truthful answer with options `Yes`/`No` and `nil`.
- Seeding wipes the table before reseeding, so should not be used where real data exists.
- The "animals on record" count includes adopted animals and may be misinterpreted as the count of animals at the shelter.
- Although `sex` can be initially `nil`, once set it cannot be changed back to `nil` (though it may be changed to the other `sex`).
- `intake_date` can be set to the future.
- Saving the edit form without changes still shows the update flash message.
- There is no search or filtering of animals.
- There are no user accounts or authentication, everyone who has access is able to **CRUD** any animal.
- Visually the website is quite simple. For a client, a lot more time would be spent on layout and CSS.