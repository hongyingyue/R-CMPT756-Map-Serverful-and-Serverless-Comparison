FROM hongyingyue/cmpt756-g17:base

WORKDIR /home/codebase

CMD ["python3",                                                         \
    "-m",                                                               \
    "src.gis.main_server",                                              \
    "--gis_db_host=35.223.27.246",                                      \
    "--gis_db_user=postgres",                                           \
    "--gis_db_password=12345678"]
