CREATE TABLE IF NOT EXISTS sources(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,url TEXT,feed_url TEXT DEFAULT '',coverage TEXT DEFAULT 'other',category TEXT DEFAULT 'national',permission TEXT DEFAULT 'unclear',active INTEGER DEFAULT 1,last_ok TEXT,last_error TEXT);
CREATE TABLE IF NOT EXISTS articles(id INTEGER PRIMARY KEY AUTOINCREMENT,source_id INTEGER,src_name TEXT,src_title TEXT,src_url TEXT UNIQUE,src_text TEXT DEFAULT '',title_hash TEXT UNIQUE,mr_title TEXT,mr_summary TEXT,mr_body TEXT,mt_title TEXT,mt_summary TEXT,uncertain TEXT,category TEXT DEFAULT 'national',is_local INTEGER DEFAULT 0,ai INTEGER DEFAULT 1,status TEXT DEFAULT 'draft',image_url TEXT,image_credit TEXT,created TEXT,published TEXT,history TEXT DEFAULT '');
CREATE TABLE IF NOT EXISTS glossary(id INTEGER PRIMARY KEY AUTOINCREMENT,src TEXT,mr TEXT,note TEXT,status TEXT DEFAULT 'approved');
CREATE TABLE IF NOT EXISTS examples(id INTEGER PRIMARY KEY AUTOINCREMENT,src TEXT,mr TEXT,status TEXT DEFAULT 'proposed');
CREATE TABLE IF NOT EXISTS settings(k TEXT PRIMARY KEY,v TEXT);
CREATE TABLE IF NOT EXISTS logins(ip TEXT,t INTEGER);
INSERT OR IGNORE INTO settings VALUES('local_pct','50');
INSERT OR IGNORE INTO settings VALUES('disclosure_en','This news item was collected from publicly available information and processed using AI for summarisation and Marwari translation. It has not been independently human-edited or independently fact-verified. Publication was approved by the website administrator. Please refer to the original source for further details.');
INSERT OR IGNORE INTO settings VALUES('disclosure_mr','DRAFT - NOT YET APPROVED: कृपया Settings में मारवाड़ी रूप लिखो अर मंजूर करो।');
