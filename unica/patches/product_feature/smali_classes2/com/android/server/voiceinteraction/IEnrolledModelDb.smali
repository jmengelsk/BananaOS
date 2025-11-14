.class public interface abstract Lcom/android/server/voiceinteraction/IEnrolledModelDb;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public abstract deleteKeyphraseSoundModel(IILjava/lang/String;)Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
.end method

.method public abstract getKeyphraseSoundModel(ILjava/lang/String;Ljava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
.end method

.method public abstract updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z
.end method
