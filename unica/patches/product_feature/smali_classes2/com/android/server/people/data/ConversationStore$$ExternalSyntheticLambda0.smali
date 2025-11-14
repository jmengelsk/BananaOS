.class public final synthetic Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/DataOutputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/DataOutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;->f$0:Ljava/io/DataOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;->f$0:Ljava/io/DataOutputStream;

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_11
    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_21

    const-string v3, ""

    if-eqz v2, :cond_23

    :try_start_1c
    invoke-virtual {v2}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    :catch_21
    move-exception p1

    goto :goto_6b

    :cond_23
    move-object v2, v3

    :goto_24
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    :cond_30
    move-object v2, v3

    :goto_31
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v2, :cond_39

    goto :goto_3a

    :cond_39
    move-object v2, v3

    :goto_3a
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v2, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p1, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_4c

    goto :goto_4d

    :cond_4c
    move-object v2, v3

    :goto_4d
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    if-eqz v2, :cond_55

    move-object v3, v2

    :cond_55
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v2, p1, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_66} :catch_21

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_73

    :goto_6b
    const-string v0, "ConversationInfo"

    const-string v1, "Failed to write fields to backup payload."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_73
    if-nez p1, :cond_76

    goto :goto_86

    :cond_76
    :try_start_76
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7d} :catch_7e

    goto :goto_86

    :catch_7e
    move-exception p0

    const-string p1, "ConversationStore"

    const-string v0, "Failed to write conversation info to backup payload."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_86
    return-void
.end method
