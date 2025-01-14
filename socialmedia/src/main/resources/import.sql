INSERT INTO account (email_verified, account_id, date_created, date_updated, token_expiration, email, password,
                     username, verification_token, authorities)
VALUES (TRUE, 1, '2024-12-30 09:00:00', '2024-12-30 09:10:00', '2024-12-31 12:00:00', 'ethan.parker@example.com',
        '$2a$10$IZY1meWikLKc4g.Nv3iwUe.SuLDZz4ON.47yimkBMV7JWXM6//9.W', 'Ethan_Parker', 'token_ethanparker', NULL),
       (TRUE, 2, '2024-12-30 09:20:00', '2024-12-30 09:30:00', '2024-12-31 12:00:00', 'olivia.morgan@example.com',
        '$2a$10$B.HEIZaxTwi8pwf6pSyrLeqQPvgf.crY8rzUBAK1BAXnipV8pjOt.', 'Olivia_Morgan', 'token_oliviamorgan', NULL),
       (TRUE, 3, '2024-12-30 09:40:00', '2024-12-30 09:50:00', '2024-12-31 12:00:00', 'mike.brown@example.com',
        '$2a$10$IChM2.oGpga3ESeFuprbiuFLzjsLqj.H9UFh9hiWkBEMjisPWCSSm', 'Mike_Brown', 'token_mikebrown', NULL),
       (TRUE, 4, '2024-12-30 10:00:00', '2024-12-30 10:10:00', '2024-12-31 12:00:00', 'alice.johnson@example.com',
        '$2a$10$PHimExUyduIwQAxlrhED4.CIBUXu6CyFP5/mEY0eukxMKGioSet2S', 'Alice_Johnson', 'token_alicejohnson', NULL),
       (TRUE, 5, '2024-12-30 10:20:00', '2024-12-30 10:30:00', '2024-12-31 12:00:00', 'bob.taylor@example.com',
        '$2a$10$7e88Faiow.6DyTSxs7JpnuttddvbldxRmQutDcRPEANeHe6PfMHJO', 'Bob_Taylor', 'token_bobtaylor', NULL),
       (TRUE, 6, '2024-12-30 10:40:00', '2024-12-30 10:50:00', '2024-12-31 12:00:00', 'emily.davis@example.com',
        '$2a$10$IM/m/Mfw7y7U0y99WKBnv.ONssl5jrITkDlWYGbgq55/F76/52.rC', 'Emily_Davis', 'token_emilydavis', NULL),
       (TRUE, 7, '2024-12-30 11:00:00', '2024-12-30 11:10:00', '2024-12-31 12:00:00', 'charlie.wilson@example.com',
        '$2a$10$XabjVCutdCHo4FjExF8WqO3oV/caDakCoADYxr0Umvm5t2Mtgh1ea', 'Charlie_Wilson', 'token_charliewilson', NULL),
       (TRUE, 8, '2024-12-30 11:20:00', '2024-12-30 11:30:00', '2024-12-31 12:00:00', 'sophia.lee@example.com',
        '$2a$10$WNs4hsdjzCW9tMp2UmoLQusQfqrvIA81IPsVKEi5aF7wETQCfM6Ry', 'Sophia_Lee', 'token_sophialee', NULL),
       (TRUE, 9, '2024-12-30 11:40:00', '2024-12-30 11:50:00', '2024-12-31 12:00:00', 'david.king@example.com',
        '$2a$10$abcxyz0phTuPZZLKIO2MrNopBv0MSMxLBq.O1234567hNYb0ijHty', 'David_King', 'token_davidking', NULL),
       (TRUE, 10, '2024-12-30 12:00:00', '2024-12-30 12:10:00', '2024-12-31 12:00:00', 'lisa.hall@example.com',
        '$2a$10$Def123abXyzLUa9hG.KjQNu7CBwBl1MNoPsXY765098AmJdh7TYwW', 'Lisa_Hall', 'token_lisahall', NULL);
INSERT INTO user_info (account_id, first_name, last_name, biography, gender)
VALUES (1, 'Ethan', 'Parker', 'Enjoys hiking and photography.', 'Male'),
       (2, 'Olivia', 'Morgan', 'Loves coding and coffee.', 'Female'),
       (3, 'Mike', 'Brown', 'Avid gamer and tech enthusiast.', 'Male'),
       (4, 'Alice', 'Johnson', 'Yoga instructor and traveler.', 'Female'),
       (5, 'Bob', 'Taylor', 'History buff and chess player.', 'Male'),
       (6, 'Emily', 'Davis', 'Bookworm and aspiring writer.', 'Female'),
       (7, 'Charlie', 'Wilson', 'Music producer and DJ.', 'Male'),
       (8, 'Sophia', 'Lee', 'Entrepreneur and foodie.', 'Female'),
       (9, 'David', 'King', 'Photographer and art enthusiast.', 'Male'),
       (10, 'Lisa', 'Hall', 'Fitness trainer and wellness oach.', 'Female');
INSERT INTO post (account_id, date_created, content)
VALUES (1, '2025-01-05 10:00:00', 'Spent a lovely day at the park with my dog.'),
       (2, '2025-01-05 10:15:00', 'Had a fantastic game at the basketball court!'),
       (3, '2025-01-05 10:30:00', 'Cape Town is absolutely stunning during sunset.'),
       (4, '2025-01-05 10:45:00', 'Enjoying a peaceful cross-country skiing adventure.'),
       (5, '2025-01-05 11:00:00', 'Celebrating Hanukkah with family traditions.'),
       (6, '2025-01-05 11:15:00', 'Exploring the rugged beauty of New Mexico.'),
       (7, '2025-01-05 11:30:00', 'Las Vegas sunsets never get old.'),
       (8, '2025-01-05 11:45:00', 'Nepalese mountains are a hiker’s dream.'),
       (9, '2025-01-05 12:00:00', 'Family skiing trip in the Alps!'),
       (10, '2025-01-05 12:15:00', 'South Africa’s culture and landscape are unforgettable.');
INSERT INTO comment (account_id, date_created, post_id, content)
VALUES (2, '2025-01-05 10:20:00', 1, 'Your dog looks so happy at the park!'),
       (3, '2025-01-05 10:35:00', 2, 'What a competitive game! Loved watching it.'),
       (4, '2025-01-05 10:50:00', 3, 'Cape Town is on my travel list now.'),
       (5, '2025-01-05 11:05:00', 4, 'Cross-country skiing looks so relaxing.'),
       (6, '2025-01-05 11:20:00', 5, 'Happy Hanukkah! The menorah is beautiful.'),
       (7, '2025-01-05 11:35:00', 6, 'New Mexico has such amazing views!'),
       (8, '2025-01-05 11:50:00', 7, 'Las Vegas has the best sunsets, I agree.'),
       (1, '2025-01-05 12:05:00', 8, 'Nepal’s mountains are truly breathtaking.'),
       (2, '2025-01-05 12:20:00', 9, 'Your family skiing trip looks amazing!'),
       (3, '2025-01-05 12:35:00', 10, 'South Africa is a gem! Great photo.');
INSERT INTO reaction (account_id, post_id, reaction_type)
VALUES (2, 1, 'LIKE'),
       (3, 2, 'LIKE'),
       (4, 3, 'LIKE'),
       (5, 4, 'LIKE'),
       (6, 5, 'LIKE'),
       (7, 6, 'LIKE'),
       (8, 7, 'LIKE'),
       (1, 8, 'LIKE'),
       (2, 9, 'LIKE'),
       (3, 10, 'LIKE');
INSERT INTO image (account_id, comment_id, image_id, post_id, bucket_key, e_tag, file_name, image_type, user_info_id)
VALUES (1, NULL, 1, 1, 'atdogpark.jpg', 'c35e2893280b30171d85bfce16379d8e', 'atdogpark.jpg', 'POST', NULL),
       (2, NULL, 2, 2, 'basketballpark.jpg', 'd499319d09db0562e9f8bc48546f64e4', 'basketballpark.jpg', 'POST', NULL),
       (3, NULL, 3, 3, 'capetown.jpg', '282ad7c01f6c9f4255460f3b214bc10b', 'capetown.jpg', 'POST', NULL),
       (4, NULL, 4, 4, 'ccskiing.jpg', '4cd0d66f4a89014ab57a45370ddd4f22', 'ccskiing.jpg', 'POST', NULL),
       (5, NULL, 5, 5, 'hanukhah.jpg', 'a63500b6b04975837ce564b4c8964959', 'hanukhah.jpg', 'POST', NULL),
       (6, NULL, 6, 6, 'hikingnewmexico.jpg', '8aeb8296fc398d14dc9ab60067815843', 'hikingnewmexico.jpg', 'POST', NULL),
       (7, NULL, 7, 7, 'lasvegassunset.jpg', '2d80efa19cf5649d57ed221b3aab9169', 'lasvegassunset.jpg', 'POST', NULL),
       (8, NULL, 8, 8, 'nepal.jpg', 'ce1ce679cb8f441f8a14a5d5dcc4fd2b', 'nepal.jpg', 'POST', NULL),
       (9, NULL, 9, 9, 'skiingfamily.jpg', 'a23ceda702688817a0a092128d72020d', 'skiingfamily.jpg', 'POST', NULL),
       (10, NULL, 10, 10, 'southafrica.jpg', 'aab55ccbecf8bc615b0b054c4f03da2a', 'southafrica.jpg', 'POST', NULL),
       (1, NULL, 11, NULL, 'EthanParker.jpg', 'a1e229837abf30171d85bfce16379e3f', 'EthanParker.jpg', 'PROFILE', 1),
       (2, NULL, 12, NULL, 'OliviaMorgan.jpg', 'b27f938fd09db0562e9f8bc48546f8e7', 'OliviaMorgan.jpg', 'PROFILE', 2),
       (3, NULL, 13, NULL, 'MikeBrown.jpg', 'c92ed72c01f6c9f4255460f3b214ac13', 'MikeBrown.jpg', 'PROFILE', 3),
       (4, NULL, 14, NULL, 'AliceJohnson.jpg', 'd4cd0d66f4a89014ab57a45370ddd4f3', 'AliceJohnson.jpg', 'PROFILE', 4),
       (5, NULL, 15, NULL, 'BobTaylor.jpg', 'e7a350b6b04975837ce564b4c8964f8f', 'BobTaylor.jpg', 'PROFILE', 5),
       (6, NULL, 16, NULL, 'EmilyDavis.jpg', 'f8beb8296fc398d14dc9ab6006781e3c', 'EmilyDavis.jpg', 'PROFILE', 6),
       (7, NULL, 17, NULL, 'CharlieWilson.jpg', 'g2d80efa19cf5649d57ed221b3aab9189', 'CharlieWilson.jpg', 'PROFILE', 7),
       (8, NULL, 18, NULL, 'SophiaLee.jpg', 'hce1ce679cb8f441f8a14a5d5dcc4fd2c', 'SophiaLee.jpg', 'PROFILE', 8),
       (9, NULL, 19, NULL, 'DavidKing.jpg', 'i23ceda702688817a0a092128d72020d', 'DavidKing.jpg', 'PROFILE', 9),
       (10, NULL, 20, NULL, 'LisaHall.jpg', 'jaa55ccbecf8bc615b0b054c4f03da2b', 'LisaHall.jpg', 'PROFILE', 10);

-- john_doe: Passw0rd! 
-- jane_smith: MyS3cureP@ss 
-- mike_brown: Brownie123 
-- alice_johnson: Yog@Love! 
-- bob_taylor: ChessM@ster 
-- emily_davis: Writer2024 
-- charlie_wilson: DJMixItUp! 
-- sophia_lee: BusinessRocks

