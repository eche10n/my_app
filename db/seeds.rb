# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Image.delete_all
Image.reset_pk_sequence
Image.create([
               {name: 'Final Fantasy Tactics', file: 'Fftbox.jpg', ave_value: 0} ,

               {name: 'Harvest Moon', file: 'SNS-AYWE-USA.jpg', theme_id: 2, ave_value: 0} ,
               {name: 'Chrono Trigger', file: 'SNS-ACTE-USA.jpg', theme_id: 2, ave_value: 0},
               {name: 'Mortal Kombat 3', file: 'SNS-A3ME-USA.jpg', theme_id: 2, ave_value: 0},
               {name: 'EarthWrom Jim 2', file: 'SNS-A2EE-USA.jpg', theme_id: 2, ave_value: 0},
               {name: 'Mortal Kombat 2', file: 'SNS-28-USA.jpg', theme_id: 2, ave_value: 0},

               {name: 'Silent Hill 2', file: 'Silent Hill 2 Directors Cut - PS21.png', theme_id: 3, ave_value: 0},
               {name: 'Shadow of the Colossus', file: 'Shadow of the Colossus - Box.jpg', theme_id: 3, ave_value: 0},
               {name: 'Ico', file: '001_Ico_PS2_SCPS11003_NTSC-J_cover_front.jpg', theme_id: 3, ave_value: 0},
               {name: 'Grand Theft Auto - Vice City', file: 'ps2-gta-vc.jpg', theme_id: 3, ave_value: 0},
               {name: 'Devil May Cry', file: 'DEVIL MAY CRY_itemimage.png', theme_id: 3, ave_value: 0},
               {name: 'Need for Speed: Underground 2', file: 'Cover Need for Speed - Underground 2.jpg', theme_id: 3, ave_value: 0},

               {name: 'Halo: Combat Evolved', file: 'Halo- Combat Evolved - Platinum Hits - Box.jpg', theme_id: 4, ave_value: 0},
               {name: 'Halo 2', file: 'Halo 2 - Box.jpg', theme_id: 4, ave_value: 0},
               {name: 'Doom 3', file: 'Doom 3 - Box.jpg', theme_id: 4, ave_value: 0},
               {name: 'Burnout Revenge', file: 'Burnout Revenge - Box.jpg', theme_id: 4, ave_value: 0},
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
               {name: "-----"}, # 1 Нет темы
               {name: "Какая из игр Nintendo является наиболее характерной для этой консоли?"}, # 1
               {name: "Какая из игр PlayStation2 является наиболее характерной для этой консоли?"}, # 2
               {name: "Какая из игр XBOX является наиболее характерной для этой консоли?"}, # 3
             ])

User.delete_all
User.reset_pk_sequence
User.create([
              {name: "Example User", email: "example@railstutorial.org",
               password: "222222", password_confirmation: "222222"},
              {name: "admin", email: "admin@admin.com",
               password: "123456", password_confirmation: "123456"},
            ])
Value.delete_all