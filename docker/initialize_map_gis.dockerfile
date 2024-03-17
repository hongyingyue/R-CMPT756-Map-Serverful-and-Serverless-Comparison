FROM hongyingyue/756base:latest

WORKDIR /home/codebase

CMD ["python3",                                                         \
    "-m",                                                               \
    "src.gis.main_initialize_map",                                      \
    "--gis_db_host=gis.cgsdx2jwjyw3.ca-central-1.rds.amazonaws.com",    \ 
    "--gis_db_user=postgres",                                           \
    "--gis_db_password=12345678"]
