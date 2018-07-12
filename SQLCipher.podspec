{
  "authors": "Zetetic LLC",
  "default_subspecs": "standard",
  "description": "SQLCipher is an open source extension to SQLite that provides transparent 256-bit AES encryption of database files.",
  "homepage": "https://www.zetetic.net/sqlcipher/",
  "license": "BSD",
  "name": "SQLCipher",
  "platforms": {
    "ios": "8.0",
    "osx": "10.9",
    "tvos": "9.0",
    "watchos": "2.0"
  },
  "prepare_command": "./configure --enable-tempstore=yes --with-crypto-lib=commoncrypto CFLAGS=\"-DSQLITE_HAS_CODEC -DSQLITE_TEMP_STORE=2 -DSQLITE_SOUNDEX -DSQLITE_THREADSAFE -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_STAT3 -DSQLITE_ENABLE_STAT4 -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_ENABLE_MEMORY_MANAGEMENT -DSQLITE_ENABLE_LOAD_EXTENSION -DSQLITE_ENABLE_UNLOCK_NOTIFY -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_FTS4_UNICODE61 -DSQLITE_ENABLE_JSON1 -DSQLITE_ENABLE_FTS5 -DHAVE_USLEEP=1 -DSQLITE_MAX_VARIABLE_NUMBER=99999\"; make sqlite3.c",
  "requires_arc": false,
  "source": {
    "git": "https://github.com/sqlcipher/sqlcipher.git",
    "tag": "v3.4.2"
  },
  "summary": "Full Database Encryption for SQLite.",
  "version": "3.4.2",
  "subspecs": [
    {
      "compiler_flags": [
        "-DNDEBUG",
        "-DSQLITE_HAS_CODEC",
        "-DSQLITE_TEMP_STORE=2",
        "-DSQLITE_SOUNDEX",
        "-DSQLITE_THREADSAFE",
        "-DSQLITE_ENABLE_RTREE",
        "-DSQLITE_ENABLE_STAT3",
        "-DSQLITE_ENABLE_STAT4",
        "-DSQLITE_ENABLE_COLUMN_METADATA",
        "-DSQLITE_ENABLE_MEMORY_MANAGEMENT",
        "-DSQLITE_ENABLE_LOAD_EXTENSION",
        "-DSQLITE_ENABLE_FTS4",
        "-DSQLITE_ENABLE_FTS4_UNICODE61",
        "-DSQLITE_ENABLE_FTS3_PARENTHESIS",
        "-DSQLITE_ENABLE_UNLOCK_NOTIFY",
        "-DSQLITE_ENABLE_JSON1",
        "-DSQLITE_ENABLE_FTS5",
        "-DSQLCIPHER_CRYPTO_CC",
        "-DHAVE_USLEEP=1",
        "-DSQLITE_MAX_VARIABLE_NUMBER=99999"
      ],
      "frameworks": [
        "Foundation",
        "Security"
      ],
      "name": "common",
      "source_files": "sqlite3.{h,c}",
      "xcconfig": {
        "GCC_PREPROCESSOR_DEFINITIONS": "$(inherited) SQLITE_HAS_CODEC=1",
        "OTHER_CFLAGS": "$(inherited) -DSQLITE_HAS_CODEC -DSQLITE_TEMP_STORE=2 -DSQLITE_SOUNDEX -DSQLITE_THREADSAFE -DSQLITE_ENABLE_RTREE -DSQLITE_ENABLE_STAT3 -DSQLITE_ENABLE_STAT4 -DSQLITE_ENABLE_COLUMN_METADATA -DSQLITE_ENABLE_MEMORY_MANAGEMENT -DSQLITE_ENABLE_LOAD_EXTENSION -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_FTS4_UNICODE61 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_UNLOCK_NOTIFY -DSQLITE_ENABLE_JSON1 -DSQLITE_ENABLE_FTS5 -DSQLCIPHER_CRYPTO_CC -DHAVE_USLEEP=1 -DSQLITE_MAX_VARIABLE_NUMBER=99999"
      }
    },
    {
      "dependencies": {
        "SQLCipher/common": [

        ]
      },
      "name": "standard"
    },
    {
      "compiler_flags": "",
      "dependencies": {
        "SQLCipher/common": [

        ]
      },
      "name": "fts",
      "xcconfig": {
        "OTHER_CFLAGS": "$(inherited)"
      }
    },
    {
      "compiler_flags": "",
      "dependencies": {
        "SQLCipher/common": [

        ]
      },
      "name": "unlock_notify",
      "xcconfig": {
        "OTHER_CFLAGS": "$(inherited)"
      }
    }
  ]
}
