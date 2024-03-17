FROM hongyingyue/756base:latest

WORKDIR /home/codebase
EXPOSE 6001
CMD ["python3",                                                                     \
    "-m",                                                                           \
    "src.navigation.main_server",                                                   \
    "--navigation_db_host=navigation.cgsdx2jwjyw3.ca-central-1.rds.amazonaws.com",  \
    "--navigation_db_user=postgres",                                                \
    "--navigation_db_password=12345678"]
