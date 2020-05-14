import pytube

if __name__ == "__main__":
    video_url = "https://www.youtube.com/watch?v=zAGVQLHvwOY"
    youtube = pytube.YouTube(video_url)
    video = youtube.streams.first()
    video.download('./video')