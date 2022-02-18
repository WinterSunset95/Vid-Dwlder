from download import download
link = input("\nLink to video: ")
name = input("\nName the downloaded video: ")
path = download(link, str(name + (".mp4")))
