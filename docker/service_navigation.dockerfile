FROM hongyingyue/hongyingyue/cmpt756-g17:base

WORKDIR /home/codebase

CMD ["python3",                                                                     \
    "-m",                                                                           \
    "src.navigation.main_server",                                                   \
    "--navigation_db_host=34.135.133.217",                                          \
    "--navigation_db_user=postgres",                                                \
    "--navigation_db_password=12345678"]
