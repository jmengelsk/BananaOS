.class public final Lcom/android/server/ondeviceintelligence/InferenceInfoStore;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final inferenceInfos:Ljava/util/TreeSet;

.field public final maxAgeMs:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->maxAgeMs:J

    new-instance p1, Ljava/util/TreeSet;

    new-instance p2, Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public final declared-synchronized add(Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;)V
    .locals 4

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ondeviceintelligence/InferenceInfo;

    invoke-virtual {v2}, Landroid/app/ondeviceintelligence/InferenceInfo;->getStartTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->maxAgeMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    new-instance v1, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;

    iget v2, p1, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    invoke-direct {v1, v2}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;-><init>(I)V

    iget-wide v2, p1, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    invoke-virtual {v1, v2, v3}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->setStartTimeMillis(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    invoke-virtual {v1, v2, v3}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->setEndTimeMillis(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    invoke-virtual {v1, v2, v3}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->setSuspendedTimeMillis(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->build()Landroid/app/ondeviceintelligence/InferenceInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final addInferenceInfoFromBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "inference_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->parseFrom([B)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->add(Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "InferenceInfoStore"

    const-string/jumbo p1, "Unable to parse InferenceInfo from the received bytes."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final addInferenceInfoFromBundle(Landroid/os/PersistableBundle;)V
    .locals 2

    const-string/jumbo v0, "inference_info"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->parseFrom([B)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->add(Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "InferenceInfoStore"

    const-string/jumbo p1, "Unable to parse InferenceInfo from the received bytes."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
