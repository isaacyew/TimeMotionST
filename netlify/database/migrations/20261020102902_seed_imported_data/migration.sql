-- Replace all existing data (including the default seed rows) with the imported dataset.
TRUNCATE TABLE "laps", "sessions", "agents", "lap_types", "issue_types" RESTART IDENTITY CASCADE;
--> statement-breakpoint
insert into "agents" ("id", "name", "created_at") values (4, 'Vps Aidura', '2026-10-15T13:27:48.359Z');
insert into "agents" ("id", "name", "created_at") values (5, 'Vps Eric', '2026-10-15T13:27:55.975Z');
insert into "agents" ("id", "name", "created_at") values (6, 'Vps John', '2026-10-15T13:27:59.907Z');
insert into "agents" ("id", "name", "created_at") values (7, 'Vps Ying', '2026-10-15T13:28:05.924Z');
insert into "agents" ("id", "name", "created_at") values (8, 'Vps Rae', '2026-10-15T13:28:09.537Z');
insert into "agents" ("id", "name", "created_at") values (9, 'Vps Razin', '2026-10-15T13:28:13.467Z');
insert into "agents" ("id", "name", "created_at") values (10, 'Vps Ming', '2026-10-15T13:28:19.485Z');
insert into "agents" ("id", "name", "created_at") values (11, 'Vps Sumay', '2026-10-15T13:28:23.560Z');
insert into "agents" ("id", "name", "created_at") values (12, 'Vps Sup Rishi', '2026-10-15T13:28:27.698Z');
insert into "agents" ("id", "name", "created_at") values (13, 'Vps WZheng', '2026-10-15T13:28:39.236Z');
--> statement-breakpoint
insert into "lap_types" ("id", "name", "created_at") values (4, 'Helpshift', '2026-10-15T13:29:31.402Z');
insert into "lap_types" ("id", "name", "created_at") values (5, 'SSD', '2026-10-15T13:29:35.799Z');
insert into "lap_types" ("id", "name", "created_at") values (6, 'Guru', '2026-10-15T13:29:43.260Z');
insert into "lap_types" ("id", "name", "created_at") values (7, 'Sky Pub Articles', '2026-10-15T13:30:04.657Z');
insert into "lap_types" ("id", "name", "created_at") values (8, 'Jira', '2026-10-15T13:30:09.077Z');
insert into "lap_types" ("id", "name", "created_at") values (9, 'Shared Docs', '2026-10-15T13:30:37.845Z');
insert into "lap_types" ("id", "name", "created_at") values (10, 'Slack', '2026-10-15T13:30:44.183Z');
insert into "lap_types" ("id", "name", "created_at") values (11, '3rd party tools', '2026-10-15T13:30:56.585Z');
insert into "lap_types" ("id", "name", "created_at") values (12, 'Personal Docs', '2026-10-15T13:31:12.629Z');
--> statement-breakpoint
insert into "issue_types" ("id", "name", "created_at") values (1, 'Account: Account Info', '2026-10-15T14:00:30.973Z');
insert into "issue_types" ("id", "name", "created_at") values (2, 'Account: Deletions & Legal', '2026-10-15T14:00:39.271Z');
insert into "issue_types" ("id", "name", "created_at") values (3, 'Account: Linking Unlinking', '2026-10-15T14:00:42.911Z');
insert into "issue_types" ("id", "name", "created_at") values (4, 'Account: Login Issues', '2026-10-15T14:00:46.571Z');
insert into "issue_types" ("id", "name", "created_at") values (5, 'Account: Recovery', '2026-10-15T14:00:49.291Z');
insert into "issue_types" ("id", "name", "created_at") values (6, 'Behavior: Ban Appeal', '2026-10-15T14:00:51.933Z');
insert into "issue_types" ("id", "name", "created_at") values (7, 'Behavior: Mute Appeal', '2026-10-15T14:00:54.550Z');
insert into "issue_types" ("id", "name", "created_at") values (8, 'Behavior: Chat Filters', '2026-10-15T14:00:57.984Z');
insert into "issue_types" ("id", "name", "created_at") values (9, 'Behavior: Hacking Cheating', '2026-10-15T14:01:00.790Z');
insert into "issue_types" ("id", "name", "created_at") values (10, 'Behavior: Harassment Report', '2026-10-15T14:01:03.128Z');
insert into "issue_types" ("id", "name", "created_at") values (11, 'Gameplay: Community & IRL', '2026-10-15T14:01:05.940Z');
insert into "issue_types" ("id", "name", "created_at") values (12, 'Gameplay: Evergreen Content', '2026-10-15T14:01:08.889Z');
insert into "issue_types" ("id", "name", "created_at") values (13, 'Gameplay: Feedback', '2026-10-15T14:01:12.156Z');
insert into "issue_types" ("id", "name", "created_at") values (14, 'Gameplay: Live Events', '2026-10-15T14:01:14.829Z');
insert into "issue_types" ("id", "name", "created_at") values (15, 'Store: Fraud', '2026-10-15T14:01:17.611Z');
insert into "issue_types" ("id", "name", "created_at") values (16, 'Store: IAP Issues', '2026-10-15T14:01:19.493Z');
insert into "issue_types" ("id", "name", "created_at") values (17, 'Store: Refund', '2026-10-15T14:01:22.475Z');
insert into "issue_types" ("id", "name", "created_at") values (18, 'Store: Store Issues', '2026-10-15T14:01:24.648Z');
insert into "issue_types" ("id", "name", "created_at") values (20, 'Store: Unfulfillment&Clawback', '2026-10-15T14:01:50.511Z');
insert into "issue_types" ("id", "name", "created_at") values (21, 'Tech: Connection & Server Err', '2026-10-15T14:02:09.764Z');
insert into "issue_types" ("id", "name", "created_at") values (22, 'Tech: Device Compatibility', '2026-10-15T14:02:13.153Z');
insert into "issue_types" ("id", "name", "created_at") values (23, 'Tech: Display Issues', '2026-10-15T14:02:16.072Z');
insert into "issue_types" ("id", "name", "created_at") values (24, 'Tech: Performance', '2026-10-15T14:02:18.243Z');
insert into "issue_types" ("id", "name", "created_at") values (25, 'Tech: VPN or Netease', '2026-10-15T14:02:28.066Z');
--> statement-breakpoint
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (1, 'Session-220727', 'Vps Eric', 0, '2026-10-15T14:32:40.169Z', '2026-10-15T14:07:28.165Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (2, 'Session-223459', 'Vps Eric', 0, '2026-10-15T14:50:32.984Z', '2026-10-15T14:35:00.500Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (3, 'Session-225257', 'Vps Eric', 0, '2026-10-15T15:06:22.171Z', '2026-10-15T14:52:58.037Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (5, 'Session-204630', 'Vps John', 0, '2026-10-16T13:00:45.604Z', '2026-10-16T12:46:36.593Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (6, 'Session-210136', 'Vps John', 0, '2026-10-16T13:04:18.715Z', '2026-10-16T13:01:38.262Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (7, 'Session-210512', 'Vps John', 0, '2026-10-16T13:07:23.779Z', '2026-10-16T13:05:14.062Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (8, 'Session-210759', 'Vps John', 0, '2026-10-16T13:14:15.772Z', '2026-10-16T13:08:00.919Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (9, 'Session-211440', 'Vps John', 0, '2026-10-16T13:20:23.065Z', '2026-10-16T13:14:42.375Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (10, 'Session-212058', 'Vps John', 0, '2026-10-16T13:21:49.227Z', '2026-10-16T13:21:00.409Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (11, 'Session-213047', 'Vps John', 0, '2026-10-16T13:51:43.006Z', '2026-10-16T13:30:53.639Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (15, 'Session-011324', 'Vps Aidura', 0, '2026-10-16T17:13:32.234Z', '2026-10-16T17:13:25.065Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (16, 'Session-205144', 'Vps Ming', 359685, '2026-10-19T12:57:47.269Z', '2026-10-19T12:51:46.390Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (17, 'Session-205937', 'Vps Ming', 912662, '2026-10-19T13:14:52.587Z', '2026-10-19T12:59:37.998Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (18, 'Session-210107', 'Vps Rae', 2056913, '2026-10-19T13:38:00.727Z', '2026-10-19T13:01:08.719Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (19, 'Session-212438', 'Vps Ming', 933019, '2026-10-19T13:40:12.570Z', '2026-10-19T13:24:40.037Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (20, 'Session-214906', 'Vps Rae', 1860213, '2026-10-19T14:20:10.417Z', '2026-10-19T13:49:08.208Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (21, 'Session-222541', 'Vps Razin', 832876, '2026-10-19T14:39:34.995Z', '2026-10-19T14:25:46.806Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (22, 'Session-223235', 'Vps Rae', 2216488, '2026-10-19T15:18:04.866Z', '2026-10-19T14:32:36.494Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (23, 'Session-223953', 'Vps Razin', 347562, '2026-10-19T14:45:45.125Z', '2026-10-19T14:39:53.593Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (24, 'Session-224705', 'Vps Razin', 1703205, '2026-10-19T15:15:29.055Z', '2026-10-19T14:47:05.988Z');
insert into "sessions" ("id", "name", "agent", "total_ms", "ended_at", "created_at") values (25, 'Session-231833', 'Vps Rae', 1705436, '2026-10-19T16:17:55.546Z', '2026-10-19T15:18:34.543Z');
--> statement-breakpoint
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (1, 1, 1, 217051, 217051, 'Helpshift', '- RU ticket
- Eden stuck
- back and forth comparing old ticket to confirm the right tag applied, cant remember all the requires tag
- access to SSD', '2026-10-15T14:11:05.363Z', 'Gameplay: Evergreen Content', 1812486);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (2, 1, 2, 246011, 28960, 'SSD', '- checked SSD to validate eden stuck', '2026-10-15T14:11:33.760Z', 'Gameplay: Evergreen Content', 1812486);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (3, 1, 3, 279318, 33307, 'Helpshift', '- new issue, cant assist player, no answer yet', '2026-10-15T14:12:07.309Z', 'Gameplay: Evergreen Content', 1812486);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (4, 1, 4, 293534, 14216, '3rd party tools', '- open google translate - reason to use google translate to double confirm player enquiry', '2026-10-15T14:12:21.050Z', 'Gameplay: Evergreen Content', 1812486);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (5, 1, 5, 387498, 93964, 'SSD', '- back to ssd
- validate eden stuck', '2026-10-15T14:13:55.060Z', 'Gameplay: Evergreen Content', 1812486);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (6, 1, 6, 427722, 40224, 'Slack', '- Look into slack for new SSO - Google Play Games', '2026-10-15T14:14:35.587Z', 'Gameplay: Evergreen Content', 1812486);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (7, 1, 7, 590463, 162741, 'SSD', '- back to ssd to validate the eden stuck status
- found player no longer stuck
- double check again on the player ledger
- ledger showing player completed eden', '2026-10-15T14:17:18.383Z', 'Gameplay: Evergreen Content', 1812486);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (8, 1, 8, 750047, 159583, 'Helpshift', '- internal note
- adding more tag', '2026-10-15T14:19:57.995Z', 'Gameplay: Evergreen Content', 1812486);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (9, 1, 9, 822883, 72837, '3rd party tools', '- google russian timezone to confirm player esc time', '2026-10-15T14:21:10.981Z', 'Gameplay: Evergreen Content', 1812486);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (10, 1, 10, 873421, 50537, 'Helpshift', '- drafting reply', '2026-10-15T14:22:01.958Z', 'Gameplay: Evergreen Content', 1812486);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (11, 1, 11, 1159394, 285973, 'Personal Docs', '- finding template using keywords
- mix and match sentences from multiple template', '2026-10-15T14:26:47.794Z', 'Gameplay: Evergreen Content', 1812486);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (12, 1, 12, 1488130, 328736, 'Helpshift', '- drafting reply
- player enquiry is vague
- constantly checking on the details.
- reply sent', '2026-10-15T14:32:39.434Z', 'Gameplay: Evergreen Content', 1812486);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (13, 2, 1, 711, 711, 'Helpshift', '- looking at videos
- undersanding the issue
-', '2026-10-15T14:35:00.923Z', 'Tech: Performance', 1812347);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (14, 2, 2, 10147, 9436, 'Jira', '- found known issue', '2026-10-15T14:35:10.072Z', 'Tech: Performance', 1812347);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (15, 2, 3, 38788, 28641, 'Helpshift', '- drafting internal note
-', '2026-10-15T14:35:38.937Z', 'Tech: Performance', 1812347);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (16, 2, 4, 63347, 24560, 'SSD', '- validate info in ssd', '2026-10-15T14:36:03.589Z', 'Tech: Performance', 1812347);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (17, 2, 5, 201989, 138642, 'Helpshift', '- back to internal note
- adding tag
- back forth jira and ssd to validate all the info again
-', '2026-10-15T14:38:22.295Z', 'Tech: Performance', 1812347);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (18, 2, 6, 254289, 52300, '3rd party tools', '- search the exact phone model', '2026-10-15T14:39:14.772Z', 'Tech: Performance', 1812347);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (19, 2, 7, 375585, 121296, 'Slack', '- filling bug escalation form in slack
-', '2026-10-15T14:41:16.271Z', 'Tech: Performance', 1812347);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (20, 2, 8, 435444, 59860, 'Helpshift', '- back to video to double confirm the bug
- download vids for bug submission', '2026-10-15T14:42:15.894Z', 'Tech: Performance', 1812347);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (21, 2, 9, 573976, 138532, 'Slack', '- upload vds to bug escalation
- complete the internal bug esc to forward it to QA bug channel
- wait for upload to complete', '2026-10-15T14:44:34.315Z', 'Tech: Performance', 1812347);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (22, 2, 10, 694365, 120389, 'Helpshift', '- drafting int note
- drafting ticket reply
- reply sent', '2026-10-15T14:49:59.936Z', 'Tech: Performance', 1812347);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (23, 2, 11, 705761, 11395, 'Personal Docs', '- search for template', '2026-10-15T14:50:10.191Z', 'Tech: Performance', 1812347);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (24, 2, 12, 727661, 21900, 'Helpshift', '- reply sent', '2026-10-15T14:50:32.075Z', 'Tech: Performance', 1812347);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (25, 3, 1, 82216, 82216, 'Helpshift', '- understanding ticket
- found duplciate
- drafting details internal note', '2026-10-15T14:54:20.380Z', 'Tech: Performance', 1812614);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (26, 3, 2, 149246, 67029, 'Guru', '- look for the right guru link to paste in internal note', '2026-10-15T14:55:27.699Z', 'Tech: Performance', 1812614);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (27, 3, 3, 381408, 232162, 'Helpshift', '- proceed to take it as bug due to t/shoot not working for the player
- draft int note', '2026-10-15T14:59:19.714Z', 'Tech: Performance', 1812614);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (28, 3, 4, 618489, 237081, 'Slack', '- esc to bug', '2026-10-15T15:03:16.946Z', 'Tech: Performance', 1812614);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (29, 3, 5, 737822, 119333, 'Helpshift', '- drafting reply to player', '2026-10-15T15:05:17.115Z', 'Tech: Performance', 1812614);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (30, 3, 6, 747753, 9931, 'Personal Docs', '- getting template', '2026-10-15T15:05:26.431Z', 'Tech: Performance', 1812614);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (31, 3, 7, 795945, 48192, 'Helpshift', '- reply sent', '2026-10-15T15:06:15.067Z', 'Tech: Performance', 1812614);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (33, 5, 1, 44505, 44505, 'Helpshift', 'Reading players message', '2026-10-16T12:47:20.498Z', 'Account: Recovery', 1813159);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (34, 5, 2, 52812, 8307, 'SSD', 'Checking players email (John read it before session)', '2026-10-16T12:47:24.547Z', 'Account: Recovery', 1813159);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (35, 5, 3, 217599, 164787, 'SSD', 'Looking for players target account', '2026-10-16T12:50:09.803Z', 'Account: Recovery', 1813159);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (36, 5, 4, 309823, 92224, 'SSD', 'Investigating the target account and write private note', '2026-10-16T12:51:41.650Z', 'Account: Recovery', 1813159);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (37, 5, 5, 435056, 125233, 'Helpshift', 'Writing private note', '2026-10-16T12:53:47.067Z', 'Account: Recovery', 1813159);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (38, 5, 6, 444788, 9732, 'Helpshift', 'Tagging', '2026-10-16T12:53:56.246Z', 'Account: Recovery', 1813159);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (39, 5, 7, 572956, 128168, 'Helpshift', 'Writing a reply by copying from the opening from another ticket and wrote the reply manually', '2026-10-16T12:56:04.828Z', 'Account: Recovery', 1813159);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (40, 5, 8, 637066, 64110, 'Helpshift', 'Copied closing in another ticket', '2026-10-16T12:57:09.038Z', 'Account: Recovery', 1813159);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (41, 5, 9, 848326, 211260, 'Helpshift', 'Polishing last reply before sending and adjust accordingly, and proofread', '2026-10-16T13:00:40.449Z', 'Account: Recovery', 1813159);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (42, 6, 1, 16696, 16696, 'Helpshift', 'Reading players message', '2026-10-16T13:01:54.465Z', 'Store: Store Issues', 1813242);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (43, 6, 2, 139654, 122958, 'Helpshift', 'Writing private note, adding tags, and investigating', '2026-10-16T13:03:57.880Z', 'Store: Store Issues', 1813242);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (44, 6, 3, 158004, 18349, 'Helpshift', 'Rejecting ticket', '2026-10-16T13:04:15.717Z', 'Store: Store Issues', 1813242);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (45, 7, 1, 126762, 126762, 'Helpshift', 'Replying a re-opened ticket', '2026-10-16T13:07:20.898Z', 'Tech: Performance', 1812716);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (46, 8, 1, 28060, 28060, 'Helpshift', 'CIF and tag and read message', '2026-10-16T13:08:28.728Z', 'Account: Linking Unlinking', 1813246);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (47, 8, 2, 92463, 64403, 'Helpshift', 'Writing private note', '2026-10-16T13:09:33.249Z', 'Account: Linking Unlinking', 1813246);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (48, 8, 3, 184090, 91627, 'Guru', 'Searching for Guru article for referencing - account unlinking', '2026-10-16T13:11:05.014Z', 'Account: Linking Unlinking', 1813246);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (49, 8, 4, 257579, 73489, 'Helpshift', 'Write private note again, goong back and forth to SSD for email details', '2026-10-16T13:12:18.263Z', 'Account: Linking Unlinking', 1813246);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (50, 8, 5, 295690, 38112, 'Helpshift', 'Looking at prev replies for template', '2026-10-16T13:12:56.385Z', 'Account: Linking Unlinking', 1813246);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (51, 8, 6, 373728, 78038, 'Helpshift', 'Polishing reply', '2026-10-16T13:14:14.476Z', 'Account: Linking Unlinking', 1813246);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (52, 9, 1, 77390, 77390, 'Helpshift', 'Reading players message and check other issues', '2026-10-16T13:16:00.060Z', 'Behavior: Ban Appeal', 1812800);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (53, 9, 2, 103650, 26260, 'Helpshift', 'Writing private note', '2026-10-16T13:16:26.053Z', 'Behavior: Ban Appeal', 1812800);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (54, 9, 3, 121502, 17852, 'SSD', 'Searching for Sky ID', '2026-10-16T13:16:43.624Z', 'Behavior: Ban Appeal', 1812800);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (55, 9, 4, 276600, 155098, 'Helpshift', 'Continue the private note', '2026-10-16T13:19:19.143Z', 'Behavior: Ban Appeal', 1812800);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (56, 9, 5, 309631, 33031, 'Helpshift', 'Adding tags and CIF', '2026-10-16T13:19:52.032Z', 'Behavior: Ban Appeal', 1812800);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (57, 9, 6, 328738, 19107, 'Helpshift', 'Reading other issue', '2026-10-16T13:20:10.860Z', 'Behavior: Ban Appeal', 1812800);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (58, 9, 7, 339270, 10532, 'Helpshift', 'Rejecting the ticket', '2026-10-16T13:20:21.405Z', 'Behavior: Ban Appeal', 1812800);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (59, 10, 1, 46236, 46236, 'SSD', 'Adding support message on the ban appeal', '2026-10-16T13:21:46.742Z', 'Behavior: Ban Appeal', 1812800);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (60, 11, 1, 13473, 13473, 'Helpshift', 'Reading players message', '2026-10-16T13:31:02.690Z', 'Gameplay: Live Events', 1813259);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (61, 11, 2, 33363, 19890, 'Helpshift', 'Writing private note 1', '2026-10-16T13:31:22.601Z', 'Gameplay: Live Events', 1813259);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (62, 11, 3, 205949, 172586, 'Jira', 'Checking existing issue if any, reading details', '2026-10-16T13:34:15.561Z', 'Gameplay: Live Events', 1813259);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (63, 11, 4, 298421, 92472, 'Slack', 'Checking issue as well in QA channel', '2026-10-16T13:35:47.869Z', 'Gameplay: Live Events', 1813259);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (64, 11, 5, 371023, 72601, '3rd party tools', 'Google issue if any in reddit', '2026-10-16T13:37:00.538Z', 'Gameplay: Live Events', 1813259);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (65, 11, 6, 449741, 78718, 'Helpshift', 'Back to private note with all relevant links', '2026-10-16T13:38:19.225Z', 'Gameplay: Live Events', 1813259);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (66, 11, 7, 479499, 29758, '3rd party tools', 'Back to reddit to understand', '2026-10-16T13:38:48.926Z', 'Gameplay: Live Events', 1813259);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (67, 11, 8, 589919, 110420, 'Helpshift', 'Check previous issue if it happened  before or a live issue', '2026-10-16T13:40:39.563Z', 'Gameplay: Live Events', 1813259);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (68, 11, 9, 709501, 119582, 'Sky Pub Articles', 'Google the event for  details and wrap up the private note', '2026-10-16T13:42:38.927Z', 'Gameplay: Live Events', 1813259);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (69, 11, 10, 763901, 54400, 'Helpshift', 'Insert tags', '2026-10-16T13:43:33.288Z', 'Gameplay: Live Events', 1813259);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (70, 11, 11, 1247901, 484000, 'Helpshift', 'Writing a reply', '2026-10-16T13:51:41.846Z', 'Gameplay: Live Events', 1813259);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (71, 16, 1, 34359, 34359, 'Helpshift', 'Reading player message', '2026-10-19T12:52:20.065Z', 'Store: IAP Issues', 1814015);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (72, 16, 2, 100082, 65723, 'SSD', 'Checking the season pass through season candles', '2026-10-19T12:53:25.601Z', 'Store: IAP Issues', 1814015);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (73, 16, 3, 266905, 166823, 'Personal Docs', 'Looking for replies and amend the replies', '2026-10-19T12:56:12.586Z', 'Store: IAP Issues', 1814015);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (74, 16, 4, 299197, 32292, 'Helpshift', 'Add tags and copy replies', '2026-10-19T12:56:44.555Z', 'Store: IAP Issues', 1814015);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (75, 16, 5, 352751, 53554, 'Helpshift', 'Adding private note (write manually)', '2026-10-19T12:57:38.219Z', 'Store: IAP Issues', 1814015);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (76, 16, 6, 359685, 6933, 'Helpshift', 'Ending', '2026-10-19T12:57:47.257Z', 'Store: IAP Issues', 1814015);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (77, 17, 1, 18734, 18734, 'Helpshift', 'Reading player message', '2026-10-19T12:59:56.149Z', 'Account: Linking Unlinking', 1814051);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (78, 17, 2, 38753, 20019, 'Helpshift', 'Adding tag and CIF', '2026-10-19T13:00:16.192Z', 'Account: Linking Unlinking', 1814051);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (79, 18, 1, 26470, 26470, 'Helpshift', '• check ticket  ', '2026-10-19T13:01:51.374Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (80, 17, 3, 153054, 114301, 'SSD', 'Checking players account anad detail', '2026-10-19T13:02:11.074Z', 'Account: Linking Unlinking', 1814051);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (81, 18, 2, 106710, 80240, 'SSD', '• validating season pass• found multiple matching account', '2026-10-19T13:03:11.672Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (82, 18, 3, 115933, 9223, 'Helpshift', '• check back ticket for more info', '2026-10-19T13:03:20.369Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (83, 18, 4, 137396, 21463, 'SSD', '• check daily quest', '2026-10-19T13:03:41.831Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (84, 18, 5, 289412, 152017, 'Shared Docs', '• open permanent spirit and daily quest string sheet to validate the daily quest name and realm name.
• but did not provide the exact map name.
• then she will have to find the exact map name from YouTube or Google.', '2026-10-19T13:06:14.407Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (85, 18, 6, 304814, 15402, 'Helpshift', '• tagging ticket', '2026-10-19T13:06:29.247Z', 'Gameplay: Live Events', 1813985);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (86, 17, 4, 669583, 516529, 'Personal Docs', 'Looking for suitable reply cause just split to different categories recently, and amending the reply while thinking of solution.', '2026-10-19T13:10:47.878Z', 'Account: Linking Unlinking', 1814051);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (87, 17, 5, 746512, 76929, '3rd party tools', 'Checking Switch support page cause changing to Switch 2', '2026-10-19T13:12:04.331Z', 'Account: Linking Unlinking', 1814051);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (88, 17, 6, 773854, 27342, 'Personal Docs', 'Amending reply again', '2026-10-19T13:12:31.513Z', 'Account: Linking Unlinking', 1814051);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (89, 18, 7, 741751, 436937, 'Personal Docs', '• drafting the reply manually', '2026-10-19T13:13:46.873Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (90, 17, 7, 851629, 77775, 'Helpshift', 'Copy, proofread and send reply', '2026-10-19T13:13:49.359Z', 'Account: Linking Unlinking', 1814051);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (91, 18, 8, 754882, 13131, 'SSD', '• back to ssd to validate info', '2026-10-19T13:13:59.346Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (92, 17, 8, 911166, 59537, 'Helpshift', 'Adding private note', '2026-10-19T13:14:48.985Z', 'Account: Linking Unlinking', 1814051);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (93, 17, 9, 912662, 1496, 'Helpshift', 'Ending', '2026-10-19T13:14:52.576Z', 'Account: Linking Unlinking', 1814051);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (94, 18, 9, 1067102, 312220, 'Personal Docs', '• drafting the reply manually
• did a quick google to check for translation', '2026-10-19T13:19:11.933Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (95, 18, 10, 1093811, 26709, '3rd party tools', '• google to check the exact location of the season pass daily quest exact location and the chinese translation', '2026-10-19T13:19:38.489Z', 'Gameplay: Live Events', 1813985);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (96, 19, 1, 42637, 42637, 'Helpshift', 'Reading players message', '2026-10-19T13:25:22.103Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (97, 19, 2, 51096, 8459, 'Helpshift', 'Adding CIF', '2026-10-19T13:25:30.261Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (98, 19, 3, 126735, 75639, 'SSD', 'Check the receipts', '2026-10-19T13:26:46.411Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (99, 19, 4, 151290, 24555, 'SSD', 'Thinking on solutions', '2026-10-19T13:27:10.447Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (100, 18, 11, 1446520, 352709, 'Personal Docs', '• drafting the reply manually
• proofread the drafted reply
• manually paste dot as bullet, due to no formatting in Helpshift', '2026-10-19T13:27:35.728Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (101, 19, 5, 220637, 69347, 'Sky Pub Articles', 'Confirming hypothesis by testing', '2026-10-19T13:28:20.255Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (102, 19, 6, 230847, 10210, 'SSD', 'Continuing the analysis', '2026-10-19T13:28:30.006Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (103, 18, 12, 1565091, 118571, 'Helpshift', '• drafted reply paste to Helpshift
• proofread again
• manually paste emoji', '2026-10-19T13:29:34.197Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (104, 18, 13, 1660548, 95457, 'Personal Docs', '• drafting internal note', '2026-10-19T13:31:09.905Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (105, 19, 7, 444432, 213586, 'Guru', 'Checking info in Guru on SP Refund', '2026-10-19T13:32:04.079Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (106, 18, 14, 1755471, 94923, '3rd party tools', '• Check fandom for exact location map name, due to better arrangement for the realm and map', '2026-10-19T13:32:44.669Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (107, 19, 8, 518761, 74328, 'SSD', 'Checking again, and back and forth to Guru', '2026-10-19T13:33:18.286Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (108, 19, 9, 598623, 79863, 'Slack', 'Checking if there is any SP issue on QA group', '2026-10-19T13:34:38.283Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (109, 18, 15, 1870940, 115469, 'Personal Docs', '• drafting internal note', '2026-10-19T13:34:40.763Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (110, 18, 16, 1886584, 15644, 'SSD', '• validate info for internal note', '2026-10-19T13:34:55.299Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (111, 18, 17, 2056143, 169560, 'Personal Docs', '• drafting internal note
• internal note use manual bullet point too', '2026-10-19T13:37:50.038Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (112, 18, 18, 2056913, 769, 'Helpshift', '• reply sent', '2026-10-19T13:38:00.778Z', 'Gameplay: Live Events', 1813987);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (113, 19, 10, 809691, 211068, 'Personal Docs', 'Finding suitable reply and amending', '2026-10-19T13:38:09.203Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (114, 19, 11, 829716, 20025, 'Helpshift', 'Adding tags', '2026-10-19T13:38:28.861Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (115, 19, 12, 874899, 45183, 'Helpshift', 'Copy, proofread and send reply', '2026-10-19T13:39:14.301Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (116, 19, 13, 932003, 57104, 'Helpshift', 'Adding private note', '2026-10-19T13:40:12.275Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (117, 19, 14, 933019, 1017, 'Helpshift', 'Ending', '2026-10-19T13:40:12.615Z', 'Store: Refund', 1814099);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (118, 20, 1, 36171, 36171, 'Helpshift', '• checking ticket', '2026-10-19T13:49:43.105Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (119, 20, 2, 148429, 112258, 'SSD', '• checking info from SSD', '2026-10-19T13:51:35.086Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (120, 20, 3, 215775, 67346, 'Guru', '• checking for know issue using Guru AI', '2026-10-19T13:52:42.827Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (121, 20, 4, 307604, 91829, 'Jira', '• check Jira for possible known issue or reported issue', '2026-10-19T13:54:15.153Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (122, 20, 5, 405936, 98332, 'Guru', '• searching tag list for the right tag.', '2026-10-19T13:55:53.012Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (123, 20, 6, 455644, 49708, 'Helpshift', '• apply CIF', '2026-10-19T13:56:43.025Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (124, 20, 7, 476409, 20765, 'Personal Docs', '• Searching for template', '2026-10-19T13:57:03.105Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (125, 20, 8, 643472, 167063, 'Personal Docs', '• searching for template
• drafting reply', '2026-10-19T13:59:50.872Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (126, 20, 9, 671653, 28181, '3rd party tools', '• searching for translation terms • no current session translation in the provided in Sky Glossary 2026 - Player Support Copy translation sheet', '2026-10-19T14:00:18.607Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (127, 20, 10, 775640, 103987, 'Personal Docs', '• searching for translation terms
• collected translated term from public pages. Beta user might leak the terms out.', '2026-10-19T14:02:03.014Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (128, 20, 11, 1439317, 663678, 'Personal Docs', '• drafting reply', '2026-10-19T14:13:11.155Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (129, 20, 12, 1473792, 34475, '3rd party tools', '• double check the chinese reply in English in Google Translate', '2026-10-19T14:13:40.865Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (130, 20, 13, 1735419, 261627, 'Personal Docs', '• drafting internal note', '2026-10-19T14:18:03.054Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (131, 20, 14, 1860213, 124794, 'Helpshift', '• reply sent
• internal note', '2026-10-19T14:20:11.085Z', 'Tech: Performance', 1814054);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (132, 21, 1, 56754, 56754, 'Helpshift', 'Add tags and CIF', '2026-10-19T14:26:38.903Z', 'Store: Store Issues', 1814184);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (133, 21, 2, 180021, 123267, 'SSD', 'Checking the players receipt', '2026-10-19T14:28:42.309Z', 'Store: Store Issues', 1814184);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (134, 21, 3, 272766, 92745, 'Guru', 'Checking relevant article - Van Gogh IAP', '2026-10-19T14:30:14.838Z', 'Store: Store Issues', 1814184);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (135, 21, 4, 291116, 18350, 'SSD', 'Checking the item again (neck)', '2026-10-19T14:30:32.854Z', 'Store: Store Issues', 1814184);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (136, 22, 1, 95734, 95734, 'Helpshift', '• reading ticket', '2026-10-19T14:34:11.872Z', 'Store: IAP Issues', 1814340);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (137, 21, 5, 512580, 221464, 'Helpshift', 'Adding private note, back and forth with SSD to include note', '2026-10-19T14:34:14.537Z', 'Store: Store Issues', 1814184);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (138, 22, 2, 181608, 85874, 'Personal Docs', '• searching for template', '2026-10-19T14:35:39.150Z', 'Store: IAP Issues', 1814340);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (139, 22, 3, 247314, 65706, 'SSD', '• validating info the account does not have the purchase records', '2026-10-19T14:36:43.472Z', 'Store: IAP Issues', 1814340);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (140, 21, 6, 827895, 315315, 'Helpshift', 'Typing reply from scratch, and proofread', '2026-10-19T14:39:30.091Z', 'Store: Store Issues', 1814184);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (142, 22, 4, 484744, 237430, 'Personal Docs', '• figuring what the agent should do, there is multiple way to approach this issue', '2026-10-19T14:40:41.013Z', 'Store: IAP Issues', 1814340);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (143, 23, 1, 91607, 91607, 'Helpshift', 'Player returned and this is the second reply. Writing private note.', '2026-10-19T14:41:25.765Z', 'Store: Store Issues', 1814357);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (144, 23, 2, 345487, 253880, 'Helpshift', 'Writing reply from scratch.', '2026-10-19T14:45:39.693Z', 'Store: Store Issues', 1814357);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (146, 24, 1, 107709, 107709, 'Helpshift', 'Reading player message', '2026-10-19T14:48:53.629Z', 'Store: Store Issues', 1814457);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (147, 24, 2, 191159, 83450, 'Slack', 'Check if the case is similar to the post', '2026-10-19T14:50:17.073Z', 'Store: Store Issues', 1814457);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (148, 22, 5, 1121125, 636381, 'Personal Docs', '• drafting reply', '2026-10-19T14:53:36.517Z', 'Store: IAP Issues', 1814340);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (149, 22, 6, 1676488, 555363, 'Guru', '•  search for account sharing warning template', '2026-10-19T15:02:56.004Z', 'Store: IAP Issues', 1814340);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (150, 24, 3, 1073219, 882060, 'SSD', 'Check SSD for SP purchase. A complex case', '2026-10-19T15:04:59.356Z', 'Store: Store Issues', 1814457);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (151, 22, 7, 1752253, 75766, 'Personal Docs', '• drafting reply
• ticket having 2 issues in 1 ticket, account sharing and 3rd party buying service', '2026-10-19T15:08:13.084Z', 'Store: IAP Issues', 1814340);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (152, 24, 4, 1635038, 561819, 'Helpshift', 'Writing a private note, and getting info to escalate', '2026-10-19T15:14:25.187Z', 'Store: Store Issues', 1814457);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (153, 24, 5, 1701618, 66581, 'Slack', 'Escalate', '2026-10-19T15:15:27.026Z', 'Store: Store Issues', 1814457);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (154, 24, 6, 1703205, 1587, 'Helpshift', 'Ending', '2026-10-19T15:15:29.321Z', 'Store: Store Issues', 1814457);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (155, 22, 8, 2216488, 464235, 'Helpshift', '• apply tags
• reply sent
• internal note sent', '2026-10-19T15:18:04.994Z', 'Store: IAP Issues', 1814340);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (156, 25, 1, 45144, 45144, 'Helpshift', '• Reading ticket', '2026-10-19T15:19:19.883Z', 'Store: Refund', 1814455);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (157, 25, 2, 116262, 71118, 'SSD', '• validate purchase info', '2026-10-19T15:20:31.196Z', 'Store: Refund', 1814455);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (158, 25, 3, 434856, 318594, 'Guru', '• search for Xsolla refund process
• search for Xsolla refund template', '2026-10-19T15:25:50.123Z', 'Store: Refund', 1814455);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (159, 25, 4, 1125069, 690214, 'Personal Docs', '• draft reply
•', '2026-10-19T15:45:17.232Z', 'Store: Refund', 1814455);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (160, 25, 5, 1137408, 12338, 'Guru', '• search for tag', '2026-10-19T15:45:22.615Z', 'Store: Refund', 1814455);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (161, 25, 6, 1198856, 61448, 'Helpshift', '• apply tag
• send reply', '2026-10-19T15:46:26.332Z', 'Store: Refund', 1814455);
insert into "laps" ("id", "session_id", "lap_number", "time_ms", "duration_ms", "type", "note", "created_at", "issue_type", "ticket_id") values (162, 25, 7, 1705436, 506581, 'Helpshift', '• draft and send internal note', '2026-10-19T16:17:55.535Z', 'Store: Refund', 1814455);
--> statement-breakpoint
-- Move each id sequence past the imported ids so new rows do not collide.
SELECT setval(pg_get_serial_sequence('"agents"', 'id'), COALESCE((SELECT MAX("id") FROM "agents"), 0) + 1, false);
SELECT setval(pg_get_serial_sequence('"lap_types"', 'id'), COALESCE((SELECT MAX("id") FROM "lap_types"), 0) + 1, false);
SELECT setval(pg_get_serial_sequence('"issue_types"', 'id'), COALESCE((SELECT MAX("id") FROM "issue_types"), 0) + 1, false);
SELECT setval(pg_get_serial_sequence('"sessions"', 'id'), COALESCE((SELECT MAX("id") FROM "sessions"), 0) + 1, false);
SELECT setval(pg_get_serial_sequence('"laps"', 'id'), COALESCE((SELECT MAX("id") FROM "laps"), 0) + 1, false);
