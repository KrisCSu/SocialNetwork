INSERT INTO account (email_verified, account_id, date_created, date_updated, token_expiration, email, password, username, verification_token, authorities) VALUES (TRUE, 1, '2024-12-30 09:00:00', '2024-12-30 09:10:00', '2024-12-31 12:00:00', 'john.doe@example.com', '$2a$10$IZY1meWikLKc4g.Nv3iwUe.SuLDZz4ON.47yimkBMV7JWXM6//9.W', 'john_doe', 'token_johndoe', NULL),(TRUE, 2, '2024-12-30 09:20:00', '2024-12-30 09:30:00', '2024-12-31 12:00:00','jane.smith@example.com', '$2a$10$B.HEIZaxTwi8pwf6pSyrLeqQPvgf.crY8rzUBAK1BAXnipV8pjOt.', 'jane_smith', 'token_janesmith', NULL), (TRUE, 3, '2024-12-30 09:40:00', '2024-12-30 09:50:00', '2024-12-31 12:00:00', 'mike.brown@example.com', '$2a$10$IChM2.oGpga3ESeFuprbiuFLzjsLqj.H9UFh9hiWkBEMjisPWCSSm', 'mike_brown', 'token_mikebrown', NULL),(TRUE, 4, '2024-12-30 10:00:00', '2024-12-30 10:10:00', '2024-12-31 12:00:00', 'alice.johnson@example.com', '$2a$10$PHimExUyduIwQAxlrhED4.CIBUXu6CyFP5/mEY0eukxMKGioSet2S', 'alice_johnson', 'token_alicejohnson', NULL), (TRUE, 5, '2024-12-30 10:20:00', '2024-12-30 10:30:00', '2024-12-31 12:00:00', 'bob.taylor@example.com', '$2a$10$7e88Faiow.6DyTSxs7JpnuttddvbldxRmQutDcRPEANeHe6PfMHJO', 'bob_taylor', 'token_bobtaylor', NULL), (TRUE, 6, '2024-12-30 10:40:00', '2024-12-30 10:50:00', '2024-12-31 12:00:00', 'emily.davis@example.com', '$2a$10$IM/m/Mfw7y7U0y99WKBnv.ONssl5jrITkDlWYGbgq55/F76/52.rC', 'emily_davis', 'token_emilydavis', NULL), (TRUE, 7, '2024-12-30 11:00:00', '2024-12-30 11:10:00', '2024-12-31 12:00:00', 'charlie.wilson@example.com', '$2a$10$XabjVCutdCHo4FjExF8WqO3oV/caDakCoADYxr0Umvm5t2Mtgh1ea', 'charlie_wilson', 'token_charliewilson', NULL), (TRUE, 8, '2024-12-30 11:20:00', '2024-12-30 11:30:00', '2024-12-31 12:00:00', 'sophia.lee@example.com', '$2a$10$WNs4hsdjzCW9tMp2UmoLQusQfqrvIA81IPsVKEi5aF7wETQCfM6Ry', 'sophia_lee', 'token_sophialee', NULL);
INSERT INTO user_info (account_id, first_name, last_name, biography, gender) VALUES (1, 'John', 'Doe', 'Enjoys hiking and photography.', 'Male'),(2, 'Jane', 'Smith', 'Loves coding and coffee.', 'Female'), (3, 'Mike', 'Brown', 'Avid gamer and tech enthusiast.', 'Male'), (4, 'Alice', 'Johnson', 'Yoga instructor and traveler.', 'Female'), (5, 'Bob', 'Taylor', 'History buff and chess player.', 'Male'), (6, 'Emily', 'Davis', 'Bookworm and aspiring writer.', 'Female'), (7, 'Charlie', 'Wilson', 'Music producer and DJ.', 'Male'), (8, 'Sophia', 'Lee', 'Entrepreneur and foodie.', 'Female');
INSERT INTO friendship (account_id, friend_id) VALUES (1, 2), (2, 1),(1, 3), (3, 1),(2, 4), (4, 2),(3, 5), (5, 3),(4, 6), (6, 4),(5, 7), (7, 5),(6, 8), (8, 6);
INSERT INTO post (account_id, date_created, content) VALUES (1, '2024-12-30 09:00:00', 'Hello, world! This is my first post.'),(2, '2024-12-30 09:10:00', 'Loving the new social media app!'),(3, '2024-12-30 09:20:00', 'Just finished an amazing book. Highly recommend!'), (4, '2024-12-30 09:30:00', 'Great weather for a hike today.'),(5, '2024-12-30 09:40:00', 'Did you know? Chess is over 1500 years old!'),(6, '2024-12-30 09:50:00', 'Feeling inspired to write my first novel.'),(7, '2024-12-30 10:00:00', 'Check out my latest track on Spotify!'),(8, '2024-12-30 10:10:00', 'Business is booming! Excited for the future.');
INSERT INTO comment (account_id, date_created, post_id, content) VALUES (2, '2024-12-30 10:20:00', 1, 'Welcome to the platform!'),(3, '2024-12-30 10:25:00', 1, 'Nice to see you here!'),(1, '2024-12-30 10:30:00', 2, 'Thanks! Glad to be here.'), (4, '2024-12-30 10:40:00', 3, 'Sounds interesting, what’s the book about?'), (5, '2024-12-30 10:50:00', 4, 'Agreed! The weather is perfect.'), (6, '2024-12-30 11:00:00', 5, 'Wow, that’s fascinating.'), (7, '2024-12-30 11:10:00', 6, 'Looking forward to reading it!'), (8, '2024-12-30 11:20:00', 7, 'Awesome track! Keep it up.');
INSERT INTO reaction (account_id, post_id, reaction_type) VALUES (2, 1, 'LIKE'), (3, 1, 'LIKE'), (4, 2, 'LIKE'), (5, 3, 'LIKE'), (6, 4, 'DISLIKE'), (7, 5, 'LIKE'), (8, 6, 'LIKE'), (1, 7, 'LIKE');

-- john_doe: Passw0rd! 
-- jane_smith: MyS3cureP@ss 
-- mike_brown: Brownie123 
-- alice_johnson: Yog@Love! 
-- bob_taylor: ChessM@ster 
-- emily_davis: Writer2024 
-- charlie_wilson: DJMixItUp! 
-- sophia_lee: BusinessRocks

